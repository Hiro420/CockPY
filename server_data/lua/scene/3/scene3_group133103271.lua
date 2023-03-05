-- Trigger变量
local defs = {
	duration = 90,
	kill_sum = 5,
	group_id = 133103271,
	gadget_controller_id = 271013
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 271001, monster_id = 20010601, pos = { x = 679.2, y = 231.7, z = 1712.3 }, rot = { x = 0.0, y = 159.8, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 271002, monster_id = 20010601, pos = { x = 682.6, y = 232.3, z = 1705.8 }, rot = { x = 0.0, y = 43.4, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 271003, monster_id = 20010701, pos = { x = 678.8, y = 231.8, z = 1705.0 }, rot = { x = 0.0, y = 47.5, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 271004, monster_id = 21011001, pos = { x = 685.4, y = 233.0, z = 1712.0 }, rot = { x = 0.0, y = 228.2, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 271005, monster_id = 21011001, pos = { x = 686.0, y = 233.1, z = 1708.5 }, rot = { x = 0.0, y = 228.2, z = 0.0 }, level = 1, drop_id = 1000100, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 271006, gadget_id = 70360047, pos = { x = 681.6, y = 232.1, z = 1707.4 }, rot = { x = 359.2, y = 0.1, z = 2.3 }, level = 24, chest_drop_id = 1000700, drop_count = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 271007, gadget_id = 70300118, pos = { x = 681.5, y = 234.2, z = 1707.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 271008, gadget_id = 70330011, pos = { x = 681.0, y = 233.4, z = 1708.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 271013, gadget_id = 70360001, pos = { x = 681.6, y = 232.1, z = 1707.4 }, rot = { x = 359.2, y = 0.1, z = 2.3 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_271009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_271009", action = "action_EVENT_GADGET_STATE_CHANGE_271009", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_271010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_271010", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_271011", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_271011", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_271012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_271012", action = "action_EVENT_GADGET_STATE_CHANGE_271012", trigger_count = 0 },
	{ name = "GADGET_CREATE_271014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_271014", action = "action_EVENT_GADGET_CREATE_271014", trigger_count = 0 },
	{ name = "SELECT_OPTION_271015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_271015", action = "action_EVENT_SELECT_OPTION_271015", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "hasFinished", value = 0, no_refresh = false }
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
		gadgets = { 271006, 271007, 271008, 271013 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_271010", "CHALLENGE_FAIL_271011", "GADGET_STATE_CHANGE_271012", "GADGET_CREATE_271014", "SELECT_OPTION_271015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 271001, 271002, 271003, 271004, 271005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_271009(context, evt)
	if 271006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_271009(context, evt)
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, 133103271, 2)
	
	-- 13号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 13, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_271010(context, evt)
	-- 将configid为 271006 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 271006, GadgetState.GearAction1) then
			return -1
		end 
	
	-- 将configid为 271008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 271008, GadgetState.Default) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 271007 }) then
		    return -1
		end
		
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_271011(context, evt)
	-- 将configid为 271006 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 271006, GadgetState.Action01) then
			return -1
		end 
	
	-- 创建id为271007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 271007 }) then
	  return -1
	end
	
	-- 创建id为271013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 271013 }) then
	  return -1
	end
	
	-- 将configid为 271008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 271008, GadgetState.Default) then
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103271, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103271, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_271012(context, evt)
	if 271006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_271012(context, evt)
	-- 将configid为 271008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 271008, GadgetState.GearStart) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 271007 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_271014(context, evt)
	if 271013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_271014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103271, 271013, {177}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_271015(context, evt)
	-- 判断是gadgetid 271013 option_id 177
	if 271013 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_271015(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 13, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 271006, GadgetState.GearStart) then
	return -1
	end 
	
	return 0
	
end
