-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 10,
	group_id = 220005010,
	gadget_1 = 10001,
	gadget_2 = 10002,
	gadget_3 = 10003,
	gadget_4 = 10005,
	gadget_chest = 0
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
	{ config_id = 10001, gadget_id = 70900007, pos = { x = -234.1, y = 27.8, z = 168.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 10002, gadget_id = 70900007, pos = { x = -227.4, y = 27.8, z = 174.7 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 10003, gadget_id = 70900007, pos = { x = -234.1, y = 27.8, z = 174.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 10005, gadget_id = 70900007, pos = { x = -227.4, y = 27.8, z = 168.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 10009, gadget_id = 70350025, pos = { x = -257.6, y = 31.4, z = 171.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 10010, gadget_id = 70900201, pos = { x = -289.6, y = 33.0, z = 171.6 }, rot = { x = 0.0, y = 87.6, z = 0.0 }, level = 1 },
	{ config_id = 10011, gadget_id = 70350019, pos = { x = -216.9, y = 25.3, z = 160.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearAction1 },
	{ config_id = 10012, gadget_id = 70350019, pos = { x = -239.7, y = 25.5, z = 184.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearAction1 },
	{ config_id = 10013, gadget_id = 70350019, pos = { x = -218.7, y = 25.4, z = 182.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearAction1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_10004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10004", action = "action_EVENT_GADGET_STATE_CHANGE_10004" },
	{ name = "GADGET_STATE_CHANGE_10006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10006", action = "action_EVENT_GADGET_STATE_CHANGE_10006", trigger_count = 0 },
	{ name = "TIMER_EVENT_10007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_10007", action = "action_EVENT_TIMER_EVENT_10007", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_10008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_10008", action = "action_EVENT_VARIABLE_CHANGE_10008", trigger_count = 0 }
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
		gadgets = { 10001, 10002, 10003, 10005, 10009, 10011, 10012, 10013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_10004", "GADGET_STATE_CHANGE_10006", "TIMER_EVENT_10007", "VARIABLE_CHANGE_10008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10004(context, evt)
	if 10009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10004(context, evt)
	-- 创建id为10010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 10010 }) then
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220005006, monsters = {}, gadgets = {6002} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10006(context, evt)
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
function condition_EVENT_TIMER_EVENT_10007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_10007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Default) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_10008(context, evt)
	if evt.param1 == 0 then
	ScriptLib.MarkPlayerAction(context, 1001, 4, 1)
	end
	if evt.param1 ~= defs.max_gear then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_10008(context, evt)
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_1))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_2))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_3))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_4))
	-- 将configid为 10009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10009, GadgetState.GearStart) then
			return -1
		end 
	
	ScriptLib.MarkPlayerAction(context, 1001, 3, 1)
	return 0
end
