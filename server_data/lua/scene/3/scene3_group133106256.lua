-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 4,
	group_id = 133106256,
	gadget_controller_id = 256003
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 256001, monster_id = 20011101, pos = { x = -172.4, y = 163.1, z = 998.6 }, rot = { x = 0.0, y = 177.9, z = 0.0 }, level = 32, drop_id = 1000100 },
	{ config_id = 256008, monster_id = 20011101, pos = { x = -169.7, y = 163.1, z = 996.2 }, rot = { x = 0.0, y = 267.7, z = 0.0 }, level = 32, drop_id = 1000100 },
	{ config_id = 256009, monster_id = 20011101, pos = { x = -175.2, y = 163.2, z = 996.2 }, rot = { x = 0.0, y = 100.4, z = 0.0 }, level = 32, drop_id = 1000100 },
	{ config_id = 256010, monster_id = 20011101, pos = { x = -172.3, y = 163.1, z = 993.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 256002, gadget_id = 70360047, pos = { x = -172.4, y = 163.1, z = 996.1 }, rot = { x = 0.0, y = 177.9, z = 0.0 }, level = 32, drop_tag = "战斗高级璃月", state = GadgetState.Action01, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 256003, gadget_id = 70360001, pos = { x = -172.4, y = 163.1, z = 996.0 }, rot = { x = 0.0, y = 177.9, z = 0.0 }, level = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CHALLENGE_SUCCESS_256004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_256004" },
	{ name = "CHALLENGE_FAIL_256005", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_256005", trigger_count = 0 },
	{ name = "GADGET_CREATE_256006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_256006", action = "action_EVENT_GADGET_CREATE_256006", trigger_count = 0 },
	{ name = "SELECT_OPTION_256007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_256007", action = "action_EVENT_SELECT_OPTION_256007", trigger_count = 0 }
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
		gadgets = { 256002, 256003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_256004", "CHALLENGE_FAIL_256005", "GADGET_CREATE_256006", "SELECT_OPTION_256007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 256001, 256008, 256009, 256010 },
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
function action_EVENT_CHALLENGE_SUCCESS_256004(context, evt)
	-- 将configid为 256002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 256002, GadgetState.GearAction1) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      return -1
	    end
	
	-- 针对当前group内变量名为 "finish" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "finish", 1, 133106251) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_256005(context, evt)
	-- 将configid为 256002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 256002, GadgetState.Action01) then
			return -1
		end 
	
	-- 创建id为256003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 256003 }) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106256, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133106256, suite = 1 }) then
			return -1
		end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_256006(context, evt)
	if 256003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_256006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106256, 256003, {177}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_256007(context, evt)
	-- 判断是gadgetid 256003 option_id 177
	if 256003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_256007(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 256002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end
