-- Trigger变量
local defs = {
	group_id = 250008017,
	riddle_hint = 90,
	riddle_1 = 92,
	riddle_2 = 93,
	riddle_3 = 94,
	riddle_4 = 95
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
	{ config_id = 90, gadget_id = 70220029, pos = { x = 18.9, y = 4.0, z = -151.9 }, rot = { x = 0.0, y = 190.0, z = 0.0 }, level = 1 },
	{ config_id = 91, gadget_id = 70220030, pos = { x = 18.9, y = 4.2, z = -151.9 }, rot = { x = 0.0, y = 182.7, z = 0.0 }, level = 1 },
	{ config_id = 92, gadget_id = 70220031, pos = { x = 17.3, y = 4.0, z = -163.0 }, rot = { x = 0.0, y = 276.1, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 93, gadget_id = 70220031, pos = { x = 5.2, y = 4.0, z = -148.7 }, rot = { x = 0.0, y = 317.5, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 94, gadget_id = 70220031, pos = { x = 21.2, y = 4.0, z = -141.9 }, rot = { x = 0.0, y = 257.6, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 95, gadget_id = 70220031, pos = { x = 32.0, y = 4.0, z = -154.3 }, rot = { x = 0.0, y = 14.1, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 96, gadget_id = 70211031, pos = { x = 19.5, y = 4.2, z = -151.8 }, rot = { x = 0.0, y = 270.4, z = 0.0 }, level = 1, drop_tag = "战斗超级蒙德", type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_52", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_52", action = "action_EVENT_GADGET_STATE_CHANGE_52", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_53", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53", action = "action_EVENT_GADGET_STATE_CHANGE_53" },
	{ name = "VARIABLE_CHANGE_54", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_54", trigger_count = 0 },
	{ name = "NONE_55", event = EventType.EVENT_NONE, source = "", condition = "", action = "action_EVENT_NONE_55" }
}

-- 变量
variables = {
	{ name = "State_Flag", value = 4, no_refresh = true }
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
		-- description = ,
		monsters = { },
		gadgets = { 90, 91, 92, 93, 94, 95, 96 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_52", "GADGET_STATE_CHANGE_53", "VARIABLE_CHANGE_54", "NONE_55" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 91 },
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
function condition_EVENT_GADGET_STATE_CHANGE_52(context, evt)
	if evt.param2 ~= defs.riddle_1 and evt.param2 ~= defs.riddle_2 and evt.param2 ~= defs.riddle_3 and evt.param2 ~= defs.riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_52(context, evt)
	if evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	elseif evt.param1 == GadgetState.Default then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_53(context, evt)
	if evt.param1 ~= GadgetState.GearStart or evt.param2 ~= defs.riddle_hint then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53(context, evt)
	if 0 ~= ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2) then
	return -1
	end
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_54(context, evt)
	local value = ScriptLib.GetGroupVariableValue(context, "State_Flag")
	if value < 0 or value > 4 then
	return -1
	end 
	if value == 4 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.riddle_hint, GadgetState.Default)
	elseif value == 3 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.riddle_hint, GadgetState.Action01)
	elseif value == 2 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.riddle_hint, GadgetState.Action02)
	elseif value == 1 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.riddle_hint, GadgetState.Action03)
	elseif value == 0 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.riddle_hint, GadgetState.GearStart)
	end
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_NONE_55(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.riddle_hint) then
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	end
	local sum = 0
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.riddle_1) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.riddle_2) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.riddle_3) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.riddle_4) == GadgetState.GearStart then
	sum = sum + 1
	end
	ScriptLib.SetGroupVariableValue(context, "State_Flag", sum)
	return 0
end
