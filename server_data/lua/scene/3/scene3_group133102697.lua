-- Trigger变量
local defs = {
	max_gear = 6,
	timer = 3,
	group_id = 133102697,
	gadget_1 = 697001,
	gadget_2 = 697002,
	gadget_3 = 697003,
	gadget_4 = 697005,
	gadget_chest = 697004,
	gadget_5 = 697009,
	gadget_6 = 697010,
	gadget_7 = 0,
	gadget_8 = 0
}


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
	{ config_id = 697001, gadget_id = 70900051, pos = { x = 1164.3, y = 200.3, z = 369.4 }, rot = { x = 356.9, y = 9.8, z = 356.7 }, level = 16, persistent = true },
	{ config_id = 697002, gadget_id = 70900051, pos = { x = 1172.9, y = 200.7, z = 368.8 }, rot = { x = 358.8, y = 8.3, z = 7.9 }, level = 16, persistent = true },
	{ config_id = 697003, gadget_id = 70900051, pos = { x = 1169.3, y = 200.5, z = 376.0 }, rot = { x = 0.3, y = 98.1, z = 358.2 }, level = 16, persistent = true },
	{ config_id = 697004, gadget_id = 70211111, pos = { x = 1169.1, y = 200.3, z = 371.0 }, rot = { x = 359.1, y = 330.6, z = 5.6 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 697005, gadget_id = 70900051, pos = { x = 1168.4, y = 200.3, z = 366.5 }, rot = { x = 1.2, y = 39.0, z = 5.6 }, level = 16, persistent = true },
	{ config_id = 697009, gadget_id = 70900051, pos = { x = 1164.8, y = 200.5, z = 374.2 }, rot = { x = 1.7, y = 38.6, z = 352.2 }, level = 16, persistent = true },
	{ config_id = 697010, gadget_id = 70900051, pos = { x = 1173.0, y = 200.6, z = 373.3 }, rot = { x = 0.5, y = 39.0, z = 5.0 }, level = 16, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_697006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_697006", action = "action_EVENT_GADGET_STATE_CHANGE_697006", trigger_count = 0 },
	{ name = "TIMER_EVENT_697007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_697007", action = "action_EVENT_TIMER_EVENT_697007", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_697008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_697008", action = "action_EVENT_VARIABLE_CHANGE_697008", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "active_count", value = 0, no_refresh = false }
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
		gadgets = { 697001, 697002, 697003, 697005, 697009, 697010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_697006", "TIMER_EVENT_697007", "VARIABLE_CHANGE_697008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_697006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 and defs.gadget_5 ~= evt.param2 and defs.gadget_6 ~= evt.param2 and defs.gadget_7 ~= evt.param2 and defs.gadget_8 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_697006(context, evt)
	if 0 == ScriptLib.GetGroupVariableValue(context, "active_count") then
	ScriptLib.MarkPlayerAction(context, 1001, 1, 1)
	end
	if evt.param1 == GadgetState.Default then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", -1)
	elseif evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", 1)
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, tostring(evt.param2), defs.timer)
	else
	return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_697007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) and evt.source_name ~= tostring(defs.gadget_5) and evt.source_name ~= tostring(defs.gadget_6) and evt.source_name ~= tostring(defs.gadget_7) and evt.source_name ~= tostring(defs.gadget_8) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_697007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Default) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_697008(context, evt)
	if evt.param1 == -1 then
	ScriptLib.MarkPlayerAction(context, 1001, 4, 1)
	end
	if evt.param1 ~= defs.max_gear then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_697008(context, evt)
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_1))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_2))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_3))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_4))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_5))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_6))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_7))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_8))
	if ScriptLib.CreateGadget(context, { config_id = defs.gadget_chest }) ~= 0 then
	return -1
	end
	ScriptLib.MarkPlayerAction(context, 1001, 3, 1)
	return 0
end
