-- Trigger变量
local defs = {
	group_id = 133105218,
	gadget_riddle_hint = 218001,
	gadget_riddle_1 = 218002,
	gadget_riddle_2 = 218003,
	gadget_riddle_3 = 218004,
	gadget_riddle_4 = 218005,
	gadget_chest = 218006
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 218010, monster_id = 28010301, pos = { x = 273.3, y = 200.8, z = -80.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 218011, monster_id = 28010301, pos = { x = 261.1, y = 201.0, z = -75.0 }, rot = { x = 0.0, y = 199.3, z = 0.0 }, level = 19, drop_tag = "采集动物" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 218001, gadget_id = 70310012, pos = { x = 219.0, y = 200.5, z = -18.4 }, rot = { x = 1.3, y = 192.9, z = 358.1 }, level = 19, persistent = true },
	{ config_id = 218002, gadget_id = 70310011, pos = { x = 226.6, y = 206.9, z = -18.8 }, rot = { x = 345.9, y = 277.7, z = 5.5 }, level = 19, persistent = true },
	{ config_id = 218003, gadget_id = 70310011, pos = { x = 225.9, y = 200.8, z = -19.1 }, rot = { x = 354.0, y = 114.5, z = 55.1 }, level = 19, persistent = true },
	{ config_id = 218004, gadget_id = 70310011, pos = { x = 221.2, y = 200.9, z = -17.2 }, rot = { x = 2.2, y = 263.2, z = 0.6 }, level = 19, persistent = true },
	{ config_id = 218005, gadget_id = 70310011, pos = { x = 225.2, y = 200.7, z = -21.3 }, rot = { x = 317.4, y = 14.1, z = 22.3 }, level = 19, persistent = true },
	{ config_id = 218006, gadget_id = 70211112, pos = { x = 218.8, y = 200.9, z = -18.4 }, rot = { x = 2.3, y = 242.6, z = 359.8 }, level = 19, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_218007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218007", action = "action_EVENT_GADGET_STATE_CHANGE_218007", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_218008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_218008", action = "action_EVENT_VARIABLE_CHANGE_218008", trigger_count = 0 },
	{ name = "GROUP_LOAD_218009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_218009" }
}

-- 变量
variables = {
	{ name = "State_Flag", value = 0, no_refresh = true }
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
		monsters = { 218010, 218011 },
		gadgets = { 218001, 218002, 218003, 218004, 218005, 218006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_218007", "VARIABLE_CHANGE_218008", "GROUP_LOAD_218009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218007(context, evt)
	if evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	if 0 == ScriptLib.GetCurTriggerCount(context) then
	ScriptLib.MarkPlayerAction(context, 1003, 1, 1)
	end 
	elseif evt.param1 == GadgetState.Default then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_218008(context, evt)
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_218008(context, evt)
	if evt.param1 == 0 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Default)
	elseif evt.param1 == 1 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action01)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 2) 
	elseif evt.param1 == 2 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action02)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 3) 
	elseif evt.param1 == 3 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action03)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 4) 
	elseif evt.param1 == 4 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.GearStart)
	ScriptLib.MarkPlayerAction(context, 1003, 3, 5) 
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest, GadgetState.Default)
	end
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GROUP_LOAD_218009(context, evt)
	local sum = 0
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.GearStart then
	sum = sum + 1
	end
	ScriptLib.SetGroupVariableValue(context, "State_Flag", sum)
	return 0
end
