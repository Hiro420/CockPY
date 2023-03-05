-- Trigger变量
local defs = {
	seal_light = 599,
	seal_hint_1 = 194,
	seal_hint_2 = 193,
	seal_hint_3 = 192
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
	{ config_id = 192, gadget_id = 70800007, pos = { x = 2652.4, y = 300.7, z = 132.4 }, rot = { x = 0.0, y = 289.1, z = 0.0 }, level = 23, persistent = true },
	{ config_id = 193, gadget_id = 70800007, pos = { x = 2652.5, y = 282.3, z = 132.4 }, rot = { x = 0.0, y = 278.6, z = 0.0 }, level = 23, persistent = true },
	{ config_id = 194, gadget_id = 70800007, pos = { x = 2652.4, y = 264.4, z = 132.3 }, rot = { x = 0.0, y = 154.9, z = 0.0 }, level = 23, persistent = true },
	{ config_id = 599, gadget_id = 70800011, pos = { x = 2652.4, y = 261.7, z = 132.6 }, rot = { x = 0.0, y = 191.7, z = 0.0 }, level = 23, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "QUEST_FINISH_28", event = EventType.EVENT_QUEST_FINISH, source = "39005", condition = "", action = "action_EVENT_QUEST_FINISH_28" },
	{ name = "QUEST_FINISH_29", event = EventType.EVENT_QUEST_FINISH, source = "39006", condition = "", action = "action_EVENT_QUEST_FINISH_29" },
	{ name = "QUEST_FINISH_30", event = EventType.EVENT_QUEST_FINISH, source = "39007", condition = "", action = "action_EVENT_QUEST_FINISH_30" },
	{ name = "VARIABLE_CHANGE_89", event = EventType.EVENT_VARIABLE_CHANGE, source = "dvalin_progress", condition = "condition_EVENT_VARIABLE_CHANGE_89", action = "action_EVENT_VARIABLE_CHANGE_89", trigger_count = 0 },
	{ name = "TIMER_EVENT_91", event = EventType.EVENT_TIMER_EVENT, source = "delay_7", condition = "", action = "action_EVENT_TIMER_EVENT_91" },
	{ name = "GROUP_LOAD_327", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_327", trigger_count = 0 },
	{ name = "TIMER_EVENT_337", event = EventType.EVENT_TIMER_EVENT, source = "delay_3", condition = "", action = "action_EVENT_TIMER_EVENT_337", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "dvalin_progress", value = 0, no_refresh = true }
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
		gadgets = { 192, 193, 194 },
		regions = { },
		triggers = { "QUEST_FINISH_28", "QUEST_FINISH_29", "QUEST_FINISH_30", "VARIABLE_CHANGE_89", "TIMER_EVENT_91", "GROUP_LOAD_327", "TIMER_EVENT_337" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_FINISH_28(context, evt)
	-- 针对当前group内变量名为 "dvalin_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "dvalin_progress", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_FINISH_29(context, evt)
	-- 针对当前group内变量名为 "dvalin_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "dvalin_progress", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_FINISH_30(context, evt)
	-- 针对当前group内变量名为 "dvalin_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "dvalin_progress", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_89(context, evt)
	if evt.param1 < 1 or evt.param1 > 3  then
		return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_89(context, evt)
	ScriptLib.CreateGroupTimerEvent(context, 133007052, "delay_3", 3)
	if 3 == evt.param1 then
		ScriptLib.CreateGroupTimerEvent(context, 133007052, "delay_7", 7)
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_91(context, evt)
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.seal_light }) then
		return -1
	end
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GROUP_LOAD_327(context, evt)
	local p = ScriptLib.GetGroupVariableValue(context, "dvalin_progress")
	if p >= 1 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.seal_hint_1, GadgetState.GearStart)
	end
	if p >= 2 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.seal_hint_2, GadgetState.GearStart)
	end
	if p == 3 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.seal_hint_3, GadgetState.GearStart)
		ScriptLib.CreateGadget(context, {config_id = defs.seal_light})
	end
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_337(context, evt)
	local v = ScriptLib.GetGroupVariableValue(context, "dvalin_progress")
	if v == 1 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.seal_hint_1, GadgetState.GearStart)
	elseif v == 2 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.seal_hint_2, GadgetState.GearStart)
	elseif v == 3 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.seal_hint_3, GadgetState.GearStart)
	end
	return 0
end
