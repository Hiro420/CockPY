-- Trigger变量
local defs = {
	group_id = 133007230,
	battle_radius = 15,
	battle_time = 120,
	battle_progress = 3,
	seal_model = 973,
	seal_id = 976,
	light_1 = 230002,
	light_2 = 230003,
	light_3 = 230004
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 422, monster_id = 22010101, pos = { x = 2561.1, y = 208.5, z = 311.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "深渊法师" },
	{ config_id = 423, monster_id = 21030201, pos = { x = 2569.0, y = 208.2, z = 305.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "丘丘萨满" },
	{ config_id = 424, monster_id = 21030201, pos = { x = 2567.3, y = 208.1, z = 319.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "丘丘萨满" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 973, gadget_id = 70950008, pos = { x = 2566.5, y = 208.4, z = 311.2 }, rot = { x = 0.0, y = 82.0, z = 0.0 }, level = 28, persistent = true },
	{ config_id = 976, gadget_id = 70950007, pos = { x = 2566.5, y = 208.4, z = 311.2 }, rot = { x = 0.0, y = 278.9, z = 0.0 }, level = 28, state = GadgetState.GearStop },
	{ config_id = 230002, gadget_id = 70950006, pos = { x = 2561.5, y = 208.8, z = 337.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 230003, gadget_id = 70950006, pos = { x = 2589.3, y = 206.7, z = 299.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 230004, gadget_id = 70950006, pos = { x = 2555.7, y = 208.0, z = 289.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 230001, shape = RegionShape.SPHERE, radius = 15, pos = { x = 2566.5, y = 210.7, z = 311.2 } }
}

-- 触发器
triggers = {
	{ name = "SELECT_OPTION_302", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_302", action = "action_EVENT_SELECT_OPTION_302", trigger_count = 0 },
	{ name = "SEAL_BATTLE_END_303", event = EventType.EVENT_SEAL_BATTLE_END, source = "", condition = "condition_EVENT_SEAL_BATTLE_END_303", action = "action_EVENT_SEAL_BATTLE_END_303", trigger_count = 0 },
	{ name = "QUEST_FINISH_315", event = EventType.EVENT_QUEST_FINISH, source = "39004", condition = "", action = "action_EVENT_QUEST_FINISH_315", trigger_count = 0 },
	{ name = "GROUP_LOAD_318", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_318", trigger_count = 0 },
	{ name = "ENTER_REGION_230001", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_230001", action = "action_EVENT_ENTER_REGION_230001" },
	{ name = "GADGET_CREATE_230005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_230005", action = "action_EVENT_GADGET_CREATE_230005", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_230006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_230006", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "Quest_Flag", value = 0, no_refresh = true },
	{ name = "first_touch_done", value = 0, no_refresh = true },
	{ name = "seal_battle_done", value = 0, no_refresh = true },
	{ name = "Point_Value", value = 0, no_refresh = true },
	{ name = "Temp_Point_Value", value = 0, no_refresh = true }
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
		gadgets = { 973 },
		regions = { },
		triggers = { "QUEST_FINISH_315", "GROUP_LOAD_318" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 976 },
		regions = { 230001 },
		triggers = { "SELECT_OPTION_302", "SEAL_BATTLE_END_303", "ENTER_REGION_230001", "GADGET_CREATE_230005", "GADGET_STATE_CHANGE_230006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 422, 423, 424 },
		gadgets = { },
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
function condition_EVENT_SELECT_OPTION_302(context, evt)
	if evt.param1 ~= defs.seal_model then 
		return false
	end
	if evt.param2 ~= 24 then
		return false
	end 
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_302(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context, defs.seal_model, GadgetState.GearAction1)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 3)
	ScriptLib.StartSealBattle(context, defs.seal_model, {radius = defs.battle_radius, kill_time = defs.battle_time, monster_group_id = defs.group_id, max_progress = defs.battle_progress, battle_type = SealBattleType.KILL_MONSTER})
	ScriptLib.ShowReminder(context, 1109001)
	ScriptLib.DelWorktopOption(context, evt.param2)
	return 0
end

-- 触发条件
function condition_EVENT_SEAL_BATTLE_END_303(context, evt)
	if evt.param1 ~= defs.seal_model then
		return false
	end
	return true
end

-- 触发操作
function action_EVENT_SEAL_BATTLE_END_303(context, evt)
	if evt.param2 == 0 then
		ScriptLib.ShowReminder(context, 1109004)
		ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
		ScriptLib.SetGadgetStateByConfigId(context, defs.seal_model, GadgetState.GearStart)
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
		ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.seal_model, {24})
	elseif evt.param2 == 1 then
		ScriptLib.SetGroupVariableValue(context, "seal_battle_done", 1)
		ScriptLib.SetGadgetStateByConfigId(context, defs.seal_model, GadgetState.Default)
		ScriptLib.SetGadgetStateByConfigId(context, defs.seal_id, GadgetState.Default)
	end
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_FINISH_315(context, evt)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	ScriptLib.SetGroupVariableValue(context, "Quest_Flag", 1)
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GROUP_LOAD_318(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "Point_Value") == 7 and ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.seal_model) ~= GadgetState.Action03 then
		ScriptLib.SetGroupVariableValue(context, "Point_Value", 3)
		ScriptLib.SetGroupVariableValue(context, "Temp_Point_Value", 3)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_model, GadgetState.Action02)
	end
	local qf = ScriptLib.GetGroupVariableValue(context, "Quest_Flag")
	if qf == 1 then
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
		if ScriptLib.GetGroupVariableValue(context, "first_touch_done") == 1 then
			ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.seal_model, {24})
		end
	end
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_230001(context, evt)
	if evt.param1 ~= 230001 then 
		return false 
	end
	if 1 == ScriptLib.GetGroupVariableValue(context, "first_touch_done") then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_230001(context, evt)
	ScriptLib.SetGroupVariableValue(context, "first_touch_done", 1)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 3)
	ScriptLib.StartSealBattle(context, defs.seal_model, {radius = defs.battle_radius, kill_time = defs.battle_time, monster_group_id = defs.group_id, max_progress = defs.battle_progress, battle_type = SealBattleType.KILL_MONSTER})
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_model, GadgetState.GearStart)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_230005(context, evt)
	if evt.param1 ~= defs.seal_id then
		return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_230005(context, evt)
	local state_info = ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.seal_model)
	if 1 == ScriptLib.GetGroupVariableValue(context, "seal_battle_done") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_id, state_info)
	else 
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_id, GadgetState.GearAction2)
	end
	if state_info == GadgetState.Default then
		ScriptLib.SetGroupVariableValue(context, "Point_Value", 0)
		ScriptLib.SetGroupVariableValue(context, "Temp_Point_Value", 0)
	end
	local p_value = ScriptLib.GetGroupVariableValue(context, "Point_Value")
	if p_value ~= 7 then
		-- 重置临时数据
		ScriptLib.SetGroupVariableValue(context, "Temp_Point_Value", p_value)
		if p_value%2 == 0 then
			ScriptLib.CreateGadget(context, {config_id = defs.light_1})
		end
		if p_value%4 < 2 then
			ScriptLib.CreateGadget(context, {config_id = defs.light_2})
		end
		if p_value < 4 then
			ScriptLib.CreateGadget(context, {config_id = defs.light_3})
		end
	end
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_230006(context, evt)
	local t_p_value = 0
	if evt.param2 == defs.light_1 or evt.param2 == defs.light_2 or evt.param2 == defs.light_3 then
		-- 光柱触发信息令封印激活玩家身上的子弹
		if evt.param1 == GadgetState.GearStart then
			local cur_state = ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.seal_id)
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_id, GadgetState.ChestTrap)
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_id, cur_state)
			-- 记录光柱触碰状况
			if evt.param2 == defs.light_1 then
				t_p_value = 1
			elseif evt.param2 == defs.light_2 then
				t_p_value = 2
			elseif evt.param2 == defs.light_3 then
				t_p_value = 4
			end	
			ScriptLib.ChangeGroupVariableValue(context, "Temp_Point_Value", t_p_value)
			return 0
		end
	elseif evt.param2 == defs.seal_id then 
		if evt.param1 == GadgetState.ChestLocked or evt.param3 == GadgetState.ChestLocked then
			-- 玩家出界，group数据清理
			local p_value = ScriptLib.GetGroupVariableValue(context, "Point_Value")
			-- 重置临时数据
			ScriptLib.SetGroupVariableValue(context, "Temp_Point_Value", p_value)
			if p_value%2 == 0 then
				ScriptLib.CreateGadget(context, {config_id = defs.light_1})
			end
			if p_value%4 < 2 then
				ScriptLib.CreateGadget(context, {config_id = defs.light_2})
			end
			if p_value < 4 then
				ScriptLib.CreateGadget(context, {config_id = defs.light_3})
			end
		elseif 1 == ScriptLib.GetGroupVariableValue(context, "seal_battle_done") then
			-- 封印103时处理光柱逻辑
			if evt.param1 == GadgetState.Action01 or evt.param1 == GadgetState.Action02 then
				if evt.param1 ~= GadgetState.ChestTrap and evt.param3 ~= GadgetState.ChestTrap then
					t_p_value = ScriptLib.GetGroupVariableValue(context, "Temp_Point_Value")
					ScriptLib.SetGroupVariableValue(context, "Point_Value", t_p_value)
					ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_model, evt.param1)
				end
			elseif evt.param1 == GadgetState.Action03 then
				ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_model, evt.param1)
				-- 封印解除
				t_p_value = ScriptLib.GetGroupVariableValue(context, "Temp_Point_Value")
				ScriptLib.SetGroupVariableValue(context, "Point_Value", t_p_value)
				ScriptLib.AddQuestProgress(context, "39007_success")
				ScriptLib.SetGroupVariableValue(context, "Quest_Flag", 0)
				ScriptLib.KillEntityByConfigId(context, { group_id = defs.group_id, config_id = defs.seal_id })
				ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
			elseif evt.param3 == GadgetState.GearAction2 and evt.param1 == GadgetState.Default then
				ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_model, evt.param1)
			end
		end
		return 0
	else
		return -1
	end
end
