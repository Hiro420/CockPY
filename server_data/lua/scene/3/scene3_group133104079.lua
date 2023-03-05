-- Trigger变量
local defs = {
	duration = 45,
	kill_sum = 4,
	group_id = 133104079,
	gadget_controller_id = 79003
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 79001, monster_id = 21010901, pos = { x = 634.8, y = 201.4, z = 160.8 }, rot = { x = 0.0, y = 244.2, z = 0.0 }, level = 19, drop_id = 1000100, disableWander = true, pose_id = 0 },
	{ config_id = 79008, monster_id = 21010901, pos = { x = 614.5, y = 200.6, z = 156.0 }, rot = { x = 0.0, y = 55.6, z = 0.0 }, level = 19, drop_id = 1000100, disableWander = true, pose_id = 0 },
	{ config_id = 79009, monster_id = 21011001, pos = { x = 634.6, y = 200.1, z = 152.1 }, rot = { x = 0.0, y = 313.2, z = 0.0 }, level = 19, drop_id = 1000100, disableWander = true, pose_id = 0 },
	{ config_id = 79010, monster_id = 21010501, pos = { x = 626.2, y = 200.2, z = 163.6 }, rot = { x = 0.0, y = 150.0, z = 0.0 }, level = 19, drop_id = 1000100, disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 79002, gadget_id = 70360047, pos = { x = 626.4, y = 199.6, z = 155.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "战斗高级璃月", state = GadgetState.Action01, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 79003, gadget_id = 70360001, pos = { x = 626.5, y = 200.5, z = 155.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 79011, gadget_id = 70220005, pos = { x = 633.4, y = 200.3, z = 161.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 79012, gadget_id = 70220005, pos = { x = 616.0, y = 200.0, z = 156.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CHALLENGE_SUCCESS_79004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_79004" },
	{ name = "CHALLENGE_FAIL_79005", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_79005", trigger_count = 0 },
	{ name = "GADGET_CREATE_79006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_79006", action = "action_EVENT_GADGET_CREATE_79006", trigger_count = 0 },
	{ name = "SELECT_OPTION_79007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_79007", action = "action_EVENT_SELECT_OPTION_79007", trigger_count = 0 }
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
		gadgets = { 79002, 79003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_79004", "CHALLENGE_FAIL_79005", "GADGET_CREATE_79006", "SELECT_OPTION_79007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 79001, 79008, 79009, 79010 },
		gadgets = { 79011, 79012 },
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
function action_EVENT_CHALLENGE_SUCCESS_79004(context, evt)
	-- 将configid为 79002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79002, GadgetState.GearAction1) then
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
function action_EVENT_CHALLENGE_FAIL_79005(context, evt)
	-- 将configid为 79002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79002, GadgetState.Action01) then
			return -1
		end 
	
	-- 创建id为79003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 79003 }) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104079, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104079, suite = 1 }) then
			return -1
		end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_79006(context, evt)
	if 79003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_79006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104079, 79003, {177}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_79007(context, evt)
	-- 判断是gadgetid 79003 option_id 177
	if 79003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_79007(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end
