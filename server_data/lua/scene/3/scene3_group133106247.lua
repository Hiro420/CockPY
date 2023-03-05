-- Trigger变量
local defs = {
	group_id = 133106247,
	gadget_riddle_hint = 247001,
	gadget_riddle_1 = 247002,
	gadget_riddle_2 = 247003,
	gadget_riddle_3 = 247004,
	gadget_riddle_4 = 247005,
	gadget_chest = 247006
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
	{ config_id = 247001, gadget_id = 70310012, pos = { x = -170.8, y = 189.3, z = 893.8 }, rot = { x = 0.0, y = 44.4, z = 0.0 }, level = 32, persistent = true },
	{ config_id = 247002, gadget_id = 70310011, pos = { x = -170.7, y = 189.5, z = 897.1 }, rot = { x = 0.0, y = 130.5, z = 0.0 }, level = 32, persistent = true },
	{ config_id = 247003, gadget_id = 70310011, pos = { x = -175.7, y = 196.6, z = 871.1 }, rot = { x = 0.0, y = 317.5, z = 0.0 }, level = 32, persistent = true },
	{ config_id = 247004, gadget_id = 70310011, pos = { x = -171.8, y = 189.5, z = 873.8 }, rot = { x = 0.0, y = 257.6, z = 0.0 }, level = 32, persistent = true },
	{ config_id = 247005, gadget_id = 70310011, pos = { x = -168.4, y = 185.2, z = 872.3 }, rot = { x = 0.0, y = 14.1, z = 0.0 }, level = 32, persistent = true },
	{ config_id = 247006, gadget_id = 70900051, pos = { x = -170.8, y = 189.9, z = 893.8 }, rot = { x = 0.0, y = 182.1, z = 0.0 }, level = 32, state = GadgetState.GearStop, isOneoff = true, persistent = true },
	{ config_id = 247012, gadget_id = 70900201, pos = { x = -170.8, y = 191.7, z = 893.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_247007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_247007", action = "action_EVENT_GADGET_STATE_CHANGE_247007", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_247008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_247008", action = "action_EVENT_VARIABLE_CHANGE_247008", trigger_count = 0 },
	{ name = "GROUP_LOAD_247009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_247009" },
	{ name = "GADGET_STATE_CHANGE_247010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_247010", action = "action_EVENT_GADGET_STATE_CHANGE_247010" },
	{ name = "VARIABLE_CHANGE_247011", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_247011", action = "action_EVENT_VARIABLE_CHANGE_247011" }
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
		gadgets = { 247001, 247002, 247003, 247004, 247005, 247006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_247007", "VARIABLE_CHANGE_247008", "GROUP_LOAD_247009", "GADGET_STATE_CHANGE_247010", "VARIABLE_CHANGE_247011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_247007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_247007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_247008(context, evt)
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_247008(context, evt)
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
function action_EVENT_GROUP_LOAD_247009(context, evt)
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

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_247010(context, evt)
	if 247006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_247010(context, evt)
	-- 针对当前group内变量名为 "finish" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "finish", 1, 133106248) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 247012 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_247011(context, evt)
	-- 判断变量"State_Flag"为4
	if ScriptLib.GetGroupVariableValue(context, "State_Flag") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_247011(context, evt)
	-- 创建id为247012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 247012 }) then
	  return -1
	end
	
	return 0
end
