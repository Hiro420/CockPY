--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 680001, gadget_id = 70310004, pos = { x = 1414.7, y = 206.7, z = 305.0 }, rot = { x = 357.2, y = 359.9, z = 2.3 }, level = 16, persistent = true },
	{ config_id = 680002, gadget_id = 70310004, pos = { x = 1416.3, y = 206.6, z = 305.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, persistent = true },
	{ config_id = 680003, gadget_id = 70310004, pos = { x = 1418.0, y = 206.7, z = 305.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, persistent = true },
	{ config_id = 680004, gadget_id = 70310004, pos = { x = 1415.3, y = 206.6, z = 293.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, persistent = true },
	{ config_id = 680005, gadget_id = 70310004, pos = { x = 1417.5, y = 206.8, z = 294.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, persistent = true },
	{ config_id = 680006, gadget_id = 70310004, pos = { x = 1419.5, y = 206.6, z = 294.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, persistent = true },
	{ config_id = 680012, gadget_id = 70211011, pos = { x = 1414.9, y = 205.2, z = 303.4 }, rot = { x = 0.0, y = 176.5, z = 0.0 }, level = 16, drop_tag = "战斗中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_680007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_680007", action = "action_EVENT_GADGET_STATE_CHANGE_680007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_680008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_680008", action = "action_EVENT_GADGET_STATE_CHANGE_680008", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_680009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_680009", action = "action_EVENT_GADGET_STATE_CHANGE_680009", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_680010", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_680010", action = "action_EVENT_VARIABLE_CHANGE_680010" },
	{ name = "VARIABLE_CHANGE_680011", event = EventType.EVENT_VARIABLE_CHANGE, source = "correct", condition = "", action = "action_EVENT_VARIABLE_CHANGE_680011", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_680013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_680013", action = "action_EVENT_GADGET_STATE_CHANGE_680013" }
}

-- 变量
variables = {
	{ name = "correct", value = 0, no_refresh = true },
	{ name = "incorrect", value = 0, no_refresh = true },
	{ name = "count", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		-- description = ,
		monsters = { },
		gadgets = { 680001, 680002, 680003, 680004, 680005, 680006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_680007", "GADGET_STATE_CHANGE_680008", "GADGET_STATE_CHANGE_680009", "VARIABLE_CHANGE_680010", "VARIABLE_CHANGE_680011", "GADGET_STATE_CHANGE_680013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_680007(context, evt)
	if 680001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_680007(context, evt)
	-- 将本组内变量名为 "correct" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "correct", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_680008(context, evt)
	if 680001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_680008(context, evt)
	-- 将本组内变量名为 "correct" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "correct", 0) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_680009(context, evt)
	if 680002 ~= evt.param2 and
	680003 ~= evt.param2 and
	680004 ~= evt.param2 and
	680005 ~= evt.param2 and
	680006 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_680009(context, evt)
	if GadgetState.GearStart == evt.param1 then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	elseif GadgetState.Default == evt.param1 then
	ScriptLib.ChangeGroupVariableValue(context, "count", -1)
	
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_680010(context, evt)
	-- 判断变量"correct"为1
	if ScriptLib.GetGroupVariableValue(context, "correct") ~= 1 then
			return false
	end
	
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_680010(context, evt)
	-- 创建id为680012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 680012 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_680011(context, evt)
	
	if ScriptLib.GetGroupVariableValue(context, "correct") == 1 then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	elseif ScriptLib.GetGroupVariableValue(context, "correct") == 0 then
	ScriptLib.ChangeGroupVariableValue(context, "count", -1)
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_680013(context, evt)
	if 680012 ~= evt.param2 or GadgetState.ChestLocked ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_680013(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102680, 2) then
		return -1
	end
	
	return 0
end
