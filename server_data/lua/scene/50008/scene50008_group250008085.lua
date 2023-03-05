-- Trigger变量
local defs = {
	group_id = 250008085,
	gadget_riddle_hint = 338,
	gadget_riddle_1 = 340,
	gadget_riddle_2 = 341,
	gadget_riddle_3 = 342,
	gadget_riddle_4 = 343,
	gadget_chest = 344
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
	{ config_id = 338, gadget_id = 70310012, pos = { x = 215.8, y = 4.0, z = -249.4 }, rot = { x = 0.0, y = 190.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 340, gadget_id = 70310011, pos = { x = 214.2, y = 4.0, z = -260.1 }, rot = { x = 0.0, y = 276.1, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 341, gadget_id = 70310011, pos = { x = 232.9, y = 4.0, z = -249.8 }, rot = { x = 0.0, y = 317.5, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 342, gadget_id = 70310011, pos = { x = 229.4, y = 4.0, z = -241.3 }, rot = { x = 0.0, y = 257.6, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 343, gadget_id = 70310011, pos = { x = 227.9, y = 4.0, z = -237.0 }, rot = { x = 0.0, y = 14.1, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 344, gadget_id = 70211111, pos = { x = 215.7, y = 4.4, z = -249.4 }, rot = { x = 0.0, y = 270.4, z = 0.0 }, level = 1, drop_tag = "解谜中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_240", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_240", action = "action_EVENT_GADGET_STATE_CHANGE_240", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_242", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_242", action = "action_EVENT_VARIABLE_CHANGE_242", trigger_count = 0 },
	{ name = "GROUP_LOAD_243", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_243" }
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
		gadgets = { 338, 340, 341, 342, 343, 344 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_240", "VARIABLE_CHANGE_242", "GROUP_LOAD_243" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_240(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_240(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_242(context, evt)
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_242(context, evt)
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
function action_EVENT_GROUP_LOAD_243(context, evt)
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
