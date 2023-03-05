-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 5,
	group_id = 111101012
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12001, monster_id = 21010101, pos = { x = 2701.7, y = 283.8, z = -1415.9 }, rot = { x = 358.6, y = 359.9, z = 7.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 12002, monster_id = 21010101, pos = { x = 2705.7, y = 284.1, z = -1424.3 }, rot = { x = 358.6, y = 359.9, z = 7.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 12003, monster_id = 21011001, pos = { x = 2699.6, y = 283.4, z = -1421.7 }, rot = { x = 358.6, y = 359.9, z = 7.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 12004, monster_id = 21010101, pos = { x = 2711.6, y = 285.1, z = -1413.5 }, rot = { x = 6.2, y = 228.0, z = 356.3 }, level = 1, drop_id = 1000100 },
	{ config_id = 12005, monster_id = 21010101, pos = { x = 2710.2, y = 284.7, z = -1421.9 }, rot = { x = 6.2, y = 228.0, z = 356.3 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 12006, gadget_id = 70900008, pos = { x = 2707.1, y = 284.5, z = -1417.3 }, rot = { x = 358.6, y = 359.9, z = 7.0 }, level = 1, persistent = true },
	{ config_id = 12007, gadget_id = 70300118, pos = { x = 2707.1, y = 284.4, z = -1417.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12008, gadget_id = 70330011, pos = { x = 2708.3, y = 284.7, z = -1417.2 }, rot = { x = 358.6, y = 359.9, z = 7.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_12009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12009", action = "action_EVENT_GADGET_STATE_CHANGE_12009", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_12010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_12010", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_12011", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_12011", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_12012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12012", action = "action_EVENT_GADGET_STATE_CHANGE_12012", trigger_count = 0 }
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
		gadgets = { 12006, 12007, 12008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_12009", "CHALLENGE_SUCCESS_12010", "CHALLENGE_FAIL_12011", "GADGET_STATE_CHANGE_12012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 12001, 12002, 12003, 12004, 12005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_12009(context, evt)
	if 12006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12009(context, evt)
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, 111101012, 2)
	
	-- 13号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 13, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_12010(context, evt)
	-- 将configid为 12008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12008, GadgetState.Default) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 12007 }) then
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
function action_EVENT_CHALLENGE_FAIL_12011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101012, 2)
	
	-- 将configid为 12006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12006, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 12008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12008, GadgetState.Default) then
			return -1
		end 
	
	-- 创建id为12007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 12007 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12012(context, evt)
	if 12006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12012(context, evt)
	-- 将configid为 12008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12008, GadgetState.GearStart) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 12007 }) then
		    return -1
		end
		
	
	return 0
end
