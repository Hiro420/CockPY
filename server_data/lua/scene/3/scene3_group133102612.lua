-- Trigger变量
local defs = {
	group_id = 133102612,
	gadget_riddle_hint = 612001,
	gadget_riddle_1 = 612002,
	gadget_riddle_2 = 612003,
	gadget_riddle_3 = 612004,
	gadget_riddle_4 = 612005,
	gadget_chest = 612006
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
	{ config_id = 612001, gadget_id = 70310012, pos = { x = 1386.6, y = 165.2, z = -316.4 }, rot = { x = 3.1, y = 280.2, z = 353.5 }, level = 16, persistent = true },
	{ config_id = 612002, gadget_id = 70310011, pos = { x = 1370.6, y = 158.4, z = -297.5 }, rot = { x = 0.0, y = 6.5, z = 0.0 }, level = 16, persistent = true },
	{ config_id = 612003, gadget_id = 70310011, pos = { x = 1403.4, y = 160.4, z = -279.7 }, rot = { x = 0.8, y = 48.0, z = 13.3 }, level = 16, persistent = true },
	{ config_id = 612004, gadget_id = 70310011, pos = { x = 1394.4, y = 159.4, z = -296.1 }, rot = { x = 0.0, y = 348.0, z = 0.0 }, level = 16, persistent = true },
	{ config_id = 612005, gadget_id = 70310011, pos = { x = 1360.2, y = 159.2, z = -278.4 }, rot = { x = 0.0, y = 104.5, z = 0.0 }, level = 16, persistent = true },
	{ config_id = 612006, gadget_id = 70211122, pos = { x = 1386.6, y = 165.7, z = -316.4 }, rot = { x = 6.9, y = 0.9, z = 2.0 }, level = 16, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 612010, gadget_id = 70211111, pos = { x = 1389.3, y = 164.5, z = -312.4 }, rot = { x = 11.4, y = 333.6, z = 357.0 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 612011, gadget_id = 70211111, pos = { x = 1383.9, y = 163.5, z = -310.2 }, rot = { x = 10.0, y = 31.6, z = 7.0 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_612007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_612007", action = "action_EVENT_GADGET_STATE_CHANGE_612007", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_612008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_612008", action = "action_EVENT_VARIABLE_CHANGE_612008", trigger_count = 0 },
	{ name = "GROUP_LOAD_612009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_612009" }
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
		monsters = { },
		gadgets = { 612001, 612002, 612003, 612004, 612005, 612006, 612010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_612007", "VARIABLE_CHANGE_612008", "GROUP_LOAD_612009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_612007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_612007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_612008(context, evt)
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_612008(context, evt)
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
function action_EVENT_GROUP_LOAD_612009(context, evt)
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
