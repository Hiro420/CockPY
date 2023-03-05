-- Trigger变量
local defs = {
	group_id = 133104415,
	gadget_target_1S = 415002,
	gadget_target_1E = 415005,
	gadget_target_2S = 415003,
	gadget_target_2E = 415006,
	gadget_target_3S = 415004,
	gadget_target_3E = 415007
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
	{ config_id = 415001, gadget_id = 70360008, pos = { x = -55.3, y = 290.7, z = 45.5 }, rot = { x = 11.7, y = 268.2, z = 355.1 }, level = 32 },
	{ config_id = 415002, gadget_id = 70360011, pos = { x = -48.6, y = 286.5, z = 25.4 }, rot = { x = 0.0, y = 302.6, z = 0.0 }, level = 32 },
	{ config_id = 415003, gadget_id = 70360012, pos = { x = -43.7, y = 291.0, z = 29.0 }, rot = { x = 0.0, y = 240.7, z = 0.0 }, level = 32 },
	{ config_id = 415004, gadget_id = 70360013, pos = { x = -46.1, y = 289.0, z = 27.5 }, rot = { x = 0.0, y = 136.9, z = 0.0 }, level = 32 },
	{ config_id = 415005, gadget_id = 70360014, pos = { x = -48.6, y = 286.5, z = 25.4 }, rot = { x = 0.0, y = 187.8, z = 0.0 }, level = 32, route_id = 310400168 },
	{ config_id = 415006, gadget_id = 70360014, pos = { x = -43.7, y = 291.0, z = 29.0 }, rot = { x = 0.0, y = 287.7, z = 0.0 }, level = 32, route_id = 310400169 },
	{ config_id = 415007, gadget_id = 70360014, pos = { x = -46.1, y = 289.0, z = 27.5 }, rot = { x = 0.0, y = 299.1, z = 0.0 }, level = 32, route_id = 310400170 },
	{ config_id = 415008, gadget_id = 70211111, pos = { x = -57.4, y = 290.3, z = 44.8 }, rot = { x = 7.6, y = 1.0, z = 14.8 }, level = 32, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_415009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_415009", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_415010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_415010", action = "action_EVENT_GADGET_STATE_CHANGE_415010" },
	{ name = "VARIABLE_CHANGE_415011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_415011", action = "action_EVENT_VARIABLE_CHANGE_415011" },
	{ name = "GADGET_STATE_CHANGE_415012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_415012", action = "action_EVENT_GADGET_STATE_CHANGE_415012", trigger_count = 0 },
	{ name = "GADGET_CREATE_415013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_415013", action = "action_EVENT_GADGET_CREATE_415013", trigger_count = 0 },
	{ name = "SELECT_OPTION_415014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_415014", action = "action_EVENT_SELECT_OPTION_415014", trigger_count = 0 },
	{ name = "GROUP_REFRESH_415015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_415015" },
	{ name = "ANY_GADGET_DIE_415016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_415016", trigger_count = 0 },
	{ name = "GADGET_CREATE_415017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_415017", action = "action_EVENT_GADGET_CREATE_415017", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "count", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 415001, 415002, 415003, 415004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_415009", "GADGET_STATE_CHANGE_415010", "VARIABLE_CHANGE_415011", "GADGET_STATE_CHANGE_415012", "GADGET_CREATE_415013", "SELECT_OPTION_415014", "GROUP_REFRESH_415015", "ANY_GADGET_DIE_415016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 415001, 415008 },
		regions = { },
		triggers = { "GADGET_CREATE_415017" },
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
function action_EVENT_GADGET_STATE_CHANGE_415009(context, evt)
	if evt.param1 == GadgetState.GearStart and evt.param3 == GadgetState.Default then
		
	if evt.param2 == defs.gadget_target_1S  then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_1E }) 
	
	elseif evt.param2 == defs.gadget_target_2S then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_2E }) 
	
	elseif evt.param2 == defs.gadget_target_3S then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_3E }) 
	
	end
		
	return 0
	else return -1
		
	end
		
	return false
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_415010(context, evt)
	if 415001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
	return false
	end
		
	if 0 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_target_1S)  then 
	return true
	end
		
	if 0 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_target_2S)  then 
	return true
	end
		
	if 0 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_target_3S)  then 
	return true
	end
		
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_415010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104415, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_415011(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_415011(context, evt)
	-- 将configid为 415001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 415001, GadgetState.GearStop) then
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104415, 2) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_415012(context, evt)
	if 415001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_415012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      return -1
	    end
	
	-- 删除指定group： 133104415 ；指定config：415001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104415, 415001, 171) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_415013(context, evt)
	if 415001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_415013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104415, 415001, {171}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_415014(context, evt)
	if 415001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_415014(context, evt)
	-- 将configid为 415001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 415001, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GROUP_REFRESH_415015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104415, 415001, {171}) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_415016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_415017(context, evt)
	if 415001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_415017(context, evt)
	-- 将configid为 415001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 415001, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end
