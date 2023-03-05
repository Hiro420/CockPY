-- Trigger变量
local defs = {
	seal_id = 974,
	light_1 = 964,
	group_id = 133007227,
	seal_model = 963,
	entry_eff = 981,
	delay_time = 3
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
	{ config_id = 963, gadget_id = 70950008, pos = { x = 2657.4, y = 300.6, z = 145.4 }, rot = { x = 0.0, y = 17.1, z = 0.0 }, level = 23, state = GadgetState.Action02, persistent = true },
	{ config_id = 964, gadget_id = 70950006, pos = { x = 2639.8, y = 300.6, z = 129.7 }, rot = { x = 0.0, y = 132.8, z = 0.0 }, level = 23 },
	{ config_id = 974, gadget_id = 70950007, pos = { x = 2657.4, y = 300.6, z = 145.4 }, rot = { x = 0.0, y = 307.7, z = 0.0 }, level = 23 },
	{ config_id = 981, gadget_id = 70700012, pos = { x = 2651.9, y = 300.2, z = 132.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_293", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_293", action = "action_EVENT_GADGET_CREATE_293", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_294", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_294", trigger_count = 0 },
	{ name = "QUEST_START_308", event = EventType.EVENT_QUEST_START, source = "38905", condition = "", action = "action_EVENT_QUEST_START_308", trigger_count = 0 },
	{ name = "TIMER_EVENT_326", event = EventType.EVENT_TIMER_EVENT, source = "delay_7", condition = "", action = "action_EVENT_TIMER_EVENT_326", trigger_count = 0 },
	{ name = "GROUP_LOAD_328", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_328", action = "action_EVENT_GROUP_LOAD_328", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "Quest_Flag", value = 0, no_refresh = true }
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
		gadgets = { 963 },
		regions = { },
		triggers = { "QUEST_START_308", "TIMER_EVENT_326", "GROUP_LOAD_328" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 974 },
		regions = { },
		triggers = { "GADGET_CREATE_293", "GADGET_STATE_CHANGE_294" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_293(context, evt)
	if evt.param1 ~= defs.seal_id then
		return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_293(context, evt)
	local state_info = ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.seal_model)
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_id, state_info)
	if state_info == GadgetState.Action02 then
		ScriptLib.CreateGadget(context, {config_id = defs.light_1})
		return 0
	end
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_294(context, evt)
	if evt.param2 == defs.light_1 then
		-- 光柱触发信息令封印激活玩家身上的子弹
		if evt.param1 == GadgetState.GearStart then
			local cur_state = ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.seal_id)
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_id, GadgetState.ChestTrap)
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_id, cur_state)
			return 0
		end
	elseif evt.param2 == defs.seal_id then
		if evt.param1 == GadgetState.ChestLocked then
			ScriptLib.CreateGadget(context, {config_id = defs.light_1})
		elseif evt.param1 == GadgetState.Action03 then
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_model, evt.param1)
			ScriptLib.AddQuestProgress(context, "39003_success")
			ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "delay_7", defs.delay_time)
			ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
			ScriptLib.SetGroupVariableValue(context, "Quest_Flag", 0)
		end
		return 0
	else
		return -1
	end
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_START_308(context, evt)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	ScriptLib.SetGroupVariableValue(context, "Quest_Flag", 1)
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_326(context, evt)
	ScriptLib.CreateGadget(context, { config_id = defs.entry_eff }) 
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_328(context, evt)
	if 1 ~= ScriptLib.GetGroupVariableValue(context, "Quest_Flag") then
		return false
	end
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_328(context, evt)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	return 0
end
