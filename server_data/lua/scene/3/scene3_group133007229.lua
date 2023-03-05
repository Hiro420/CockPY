-- Trigger变量
local defs = {
	seal_id = 975,
	light_1 = 970,
	light_2 = 971,
	light_3 = 972,
	group_id = 133007229,
	seal_model = 969
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
	{ config_id = 969, gadget_id = 70950008, pos = { x = 2857.8, y = 213.6, z = 291.0 }, rot = { x = 0.0, y = 50.8, z = 0.0 }, level = 23, persistent = true },
	{ config_id = 970, gadget_id = 70950006, pos = { x = 2944.5, y = 216.0, z = 292.7 }, rot = { x = 0.0, y = 222.8, z = 0.0 }, level = 23 },
	{ config_id = 971, gadget_id = 70950006, pos = { x = 2973.7, y = 227.5, z = 352.0 }, rot = { x = 0.0, y = 335.9, z = 0.0 }, level = 23 },
	{ config_id = 972, gadget_id = 70950006, pos = { x = 2981.5, y = 215.5, z = 269.1 }, rot = { x = 0.0, y = 150.9, z = 0.0 }, level = 23 },
	{ config_id = 975, gadget_id = 70950007, pos = { x = 2857.8, y = 213.6, z = 291.0 }, rot = { x = 0.0, y = 231.0, z = 0.0 }, level = 23, state = GadgetState.GearStop },
	{ config_id = 1041, gadget_id = 70620001, pos = { x = 2981.5, y = 215.5, z = 269.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 23, isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 336, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2981.5, y = 215.5, z = 269.1 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_296", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_296", action = "action_EVENT_GADGET_CREATE_296", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_297", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_297", trigger_count = 0 },
	{ name = "QUEST_FINISH_312", event = EventType.EVENT_QUEST_FINISH, source = "39004", condition = "", action = "action_EVENT_QUEST_FINISH_312", trigger_count = 0 },
	{ name = "GROUP_LOAD_320", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_320", trigger_count = 0 },
	{ name = "ENTER_REGION_336", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_336", action = "action_EVENT_ENTER_REGION_336", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "Point_Value", value = 0, no_refresh = true },
	{ name = "Temp_Point_Value", value = 0, no_refresh = true },
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
		gadgets = { 969 },
		regions = { },
		triggers = { "QUEST_FINISH_312", "GROUP_LOAD_320" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 975, 1041 },
		regions = { 336 },
		triggers = { "GADGET_CREATE_296", "GADGET_STATE_CHANGE_297", "ENTER_REGION_336" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_296(context, evt)
	if evt.param1 ~= defs.seal_id then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_296(context, evt)
	local state_info = ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.seal_model)
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_id, state_info)
	if state_info == GadgetState.Default then
		ScriptLib.SetGroupVariableValue(context, "Point_Value", 0)
		ScriptLib.SetGroupVariableValue(context, "Temp_Point_Value", 0)
	elseif state_info == GadgetState.GearStart then
		ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.seal_id, {24})
		return 0
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
function action_EVENT_GADGET_STATE_CHANGE_297(context, evt)
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
		-- 封印103时处理光柱逻辑
		if evt.param1 == GadgetState.Action01 or evt.param1 == GadgetState.Action02 then
			if evt.param1 ~= GadgetState.ChestTrap and evt.param3 ~= GadgetState.ChestTrap then
				t_p_value = ScriptLib.GetGroupVariableValue(context, "Temp_Point_Value")
				ScriptLib.SetGroupVariableValue(context, "Point_Value", t_p_value)
				ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_model, evt.param1)
			end
		elseif evt.param1 == GadgetState.ChestLocked then
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
		elseif evt.param1 == GadgetState.Action03 then
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_model, evt.param1)
			-- 封印解除
			t_p_value = ScriptLib.GetGroupVariableValue(context, "Temp_Point_Value")
			ScriptLib.SetGroupVariableValue(context, "Point_Value", t_p_value)
			ScriptLib.AddQuestProgress(context, "39006_success")
			ScriptLib.SetGroupVariableValue(context, "Quest_Flag", 0)
			ScriptLib.KillEntityByConfigId(context, { group_id = defs.group_id, config_id = defs.seal_id })
			ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
		end
		return 0
	else
		return -1
	end
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_FINISH_312(context, evt)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	ScriptLib.SetGroupVariableValue(context, "Quest_Flag", 1)
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GROUP_LOAD_320(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "Point_Value") == 7 and ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.seal_model) ~= GadgetState.Action03 then
		ScriptLib.SetGroupVariableValue(context, "Point_Value", 3)
		ScriptLib.SetGroupVariableValue(context, "Temp_Point_Value", 3)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.seal_model, GadgetState.Action02)
	end
	local qf = ScriptLib.GetGroupVariableValue(context, "Quest_Flag")
	if qf == 1 then
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	end
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_336(context, evt)
	if evt.param1 ~= 336 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_336(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1041 }) then
		    return -1
		end
		
	
	return 0
end
