-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 5,
	group_id = 133101144,
	gadget_controller_id = 144003
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 144001, monster_id = 20010601, pos = { x = 1491.4, y = 204.1, z = 1059.7 }, rot = { x = 0.0, y = 62.1, z = 0.0 }, level = 23, drop_id = 1000100 },
	{ config_id = 144008, monster_id = 20010401, pos = { x = 1507.8, y = 208.1, z = 1065.6 }, rot = { x = 0.0, y = 256.4, z = 0.0 }, level = 23, drop_id = 1000100 },
	{ config_id = 144009, monster_id = 20011301, pos = { x = 1503.7, y = 206.6, z = 1072.3 }, rot = { x = 0.0, y = 200.7, z = 0.0 }, level = 23, drop_id = 1000100 },
	{ config_id = 144010, monster_id = 20010901, pos = { x = 1494.6, y = 204.7, z = 1071.1 }, rot = { x = 0.0, y = 164.0, z = 0.0 }, level = 23, drop_id = 1000100 },
	{ config_id = 144011, monster_id = 20011101, pos = { x = 1498.9, y = 203.1, z = 1054.7 }, rot = { x = 0.0, y = 4.9, z = 0.0 }, level = 23, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 144002, gadget_id = 70360047, pos = { x = 1503.6, y = 207.2, z = 1063.2 }, rot = { x = 0.7, y = 0.1, z = 12.6 }, level = 19, drop_tag = "战斗高级璃月", state = GadgetState.Action01, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 144003, gadget_id = 70360001, pos = { x = 1503.6, y = 207.2, z = 1063.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CHALLENGE_SUCCESS_144004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_144004" },
	{ name = "CHALLENGE_FAIL_144005", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_144005", trigger_count = 0 },
	{ name = "GADGET_CREATE_144006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_144006", action = "action_EVENT_GADGET_CREATE_144006", trigger_count = 0 },
	{ name = "SELECT_OPTION_144007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_144007", action = "action_EVENT_SELECT_OPTION_144007", trigger_count = 0 }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = suite_1,
		monsters = { },
		gadgets = { 144002, 144003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_144004", "CHALLENGE_FAIL_144005", "GADGET_CREATE_144006", "SELECT_OPTION_144007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 144001, 144008, 144009, 144010, 144011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_144004(context, evt)
	-- 将configid为 144002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144002, GadgetState.GearAction1) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_144005(context, evt)
	-- 将configid为 144002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144002, GadgetState.Action01) then
			return -1
		end 
	
	-- 创建id为144003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 144003 }) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101144, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133101144, suite = 1 }) then
			return -1
		end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_144006(context, evt)
	if 144003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_144006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133101144, 144003, {177}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_144007(context, evt)
	-- 判断是gadgetid 144003 option_id 177
	if 144003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_144007(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end
