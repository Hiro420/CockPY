-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 20,
	group_id = 133104530,
	gadget_1 = 530001,
	gadget_2 = 530002,
	gadget_3 = 530003,
	gadget_4 = 530005,
	gadget_chest = 530004
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
	{ config_id = 530001, gadget_id = 70900051, pos = { x = 15.4, y = 263.7, z = 266.6 }, rot = { x = 0.0, y = 330.8, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 530002, gadget_id = 70900051, pos = { x = 22.8, y = 263.3, z = 284.9 }, rot = { x = 0.0, y = 329.0, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 530003, gadget_id = 70900051, pos = { x = 15.1, y = 263.3, z = 284.0 }, rot = { x = 0.0, y = 59.1, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 530004, gadget_id = 70211111, pos = { x = 18.7, y = 263.3, z = 275.7 }, rot = { x = 1.0, y = 88.1, z = 0.8 }, level = 19, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 530005, gadget_id = 70900051, pos = { x = 24.4, y = 263.3, z = 266.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_530006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_530006", action = "action_EVENT_GADGET_STATE_CHANGE_530006", trigger_count = 0 },
	{ name = "TIMER_EVENT_530007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_530007", action = "action_EVENT_TIMER_EVENT_530007", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_530008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_530008", action = "action_EVENT_VARIABLE_CHANGE_530008", trigger_count = 0 }
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
		gadgets = { 530001, 530002, 530003, 530005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_530006", "TIMER_EVENT_530007", "VARIABLE_CHANGE_530008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_530006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_530006(context, evt)
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
function condition_EVENT_TIMER_EVENT_530007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_530007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Default) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_530008(context, evt)
	if evt.param1 == -1 then
	ScriptLib.MarkPlayerAction(context, 1001, 4, 1)
	end
	if evt.param1 ~= defs.max_gear then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_530008(context, evt)
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_1))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_2))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_3))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_4))
	if ScriptLib.CreateGadget(context, { config_id = defs.gadget_chest }) ~= 0 then
	return -1
	end
	ScriptLib.MarkPlayerAction(context, 1001, 3, 1)
	return 0
end
