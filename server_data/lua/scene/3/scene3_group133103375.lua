-- Trigger变量
local defs = {
	group_id = 133103375,
	gadget_riddle_hint = 375001,
	gadget_riddle_1 = 375002,
	gadget_riddle_2 = 375003,
	gadget_riddle_3 = 375004,
	gadget_riddle_4 = 375005,
	gadget_chest = 375006
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
	{ config_id = 375001, gadget_id = 70310012, pos = { x = 137.1, y = 244.4, z = 1019.2 }, rot = { x = 352.7, y = 189.1, z = 13.3 }, level = 19, persistent = true },
	{ config_id = 375002, gadget_id = 70310011, pos = { x = 138.9, y = 244.2, z = 1016.4 }, rot = { x = 346.3, y = 276.9, z = 353.4 }, level = 19, persistent = true },
	{ config_id = 375003, gadget_id = 70310011, pos = { x = 120.3, y = 258.2, z = 1003.6 }, rot = { x = 354.1, y = 317.6, z = 357.1 }, level = 19, persistent = true },
	{ config_id = 375004, gadget_id = 70310011, pos = { x = 138.1, y = 242.3, z = 1031.1 }, rot = { x = 350.8, y = 255.8, z = 351.6 }, level = 19, persistent = true },
	{ config_id = 375005, gadget_id = 70310011, pos = { x = 151.3, y = 242.0, z = 1014.6 }, rot = { x = 40.4, y = 4.4, z = 357.1 }, level = 19, persistent = true },
	{ config_id = 375006, gadget_id = 70211112, pos = { x = 137.1, y = 244.9, z = 1019.2 }, rot = { x = 345.7, y = 271.0, z = 354.8 }, level = 19, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_375007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_375007", action = "action_EVENT_GADGET_STATE_CHANGE_375007", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_375008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_375008", action = "action_EVENT_VARIABLE_CHANGE_375008", trigger_count = 0 },
	{ name = "GROUP_LOAD_375009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_375009" }
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
		gadgets = { 375001, 375002, 375003, 375004, 375005, 375006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_375007", "VARIABLE_CHANGE_375008", "GROUP_LOAD_375009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_375007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_375007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_375008(context, evt)
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_375008(context, evt)
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
function action_EVENT_GROUP_LOAD_375009(context, evt)
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
