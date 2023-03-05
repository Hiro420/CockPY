-- Trigger变量
local defs = {
	group_id = 133106154,
	gadget_target_1S = 154002,
	gadget_target_1E = 154005,
	gadget_target_2S = 154003,
	gadget_target_2E = 154006,
	gadget_target_3S = 154004,
	gadget_target_3E = 154007
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
	{ config_id = 154001, gadget_id = 70360008, pos = { x = -276.5, y = 232.4, z = 943.4 }, rot = { x = 0.0, y = 268.8, z = 0.0 }, level = 32 },
	{ config_id = 154002, gadget_id = 70360011, pos = { x = -271.5, y = 235.1, z = 940.4 }, rot = { x = 0.0, y = 302.6, z = 0.0 }, level = 32 },
	{ config_id = 154003, gadget_id = 70360012, pos = { x = -273.1, y = 238.2, z = 943.5 }, rot = { x = 0.0, y = 240.7, z = 0.0 }, level = 32 },
	{ config_id = 154004, gadget_id = 70360013, pos = { x = -271.6, y = 238.2, z = 939.8 }, rot = { x = 0.0, y = 136.9, z = 0.0 }, level = 32 },
	{ config_id = 154005, gadget_id = 70360014, pos = { x = -271.5, y = 235.1, z = 940.4 }, rot = { x = 0.0, y = 187.8, z = 0.0 }, level = 32, route_id = 310600069 },
	{ config_id = 154006, gadget_id = 70360014, pos = { x = -273.1, y = 238.2, z = 943.6 }, rot = { x = 0.0, y = 287.7, z = 0.0 }, level = 32, route_id = 310600070 },
	{ config_id = 154007, gadget_id = 70360014, pos = { x = -271.6, y = 238.2, z = 939.8 }, rot = { x = 0.0, y = 299.1, z = 0.0 }, level = 32, route_id = 310600071 },
	{ config_id = 154008, gadget_id = 70211111, pos = { x = -276.5, y = 232.4, z = 942.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_154009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_154009", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_154010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_154010", action = "action_EVENT_GADGET_STATE_CHANGE_154010" },
	{ name = "VARIABLE_CHANGE_154011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_154011", action = "action_EVENT_VARIABLE_CHANGE_154011" },
	{ name = "GADGET_STATE_CHANGE_154012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_154012", action = "action_EVENT_GADGET_STATE_CHANGE_154012", trigger_count = 0 },
	{ name = "GADGET_CREATE_154013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_154013", action = "action_EVENT_GADGET_CREATE_154013", trigger_count = 0 },
	{ name = "SELECT_OPTION_154014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_154014", action = "action_EVENT_SELECT_OPTION_154014", trigger_count = 0 },
	{ name = "GROUP_REFRESH_154015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_154015" },
	{ name = "ANY_GADGET_DIE_154016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_154016", trigger_count = 0 },
	{ name = "GADGET_CREATE_154017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_154017", action = "action_EVENT_GADGET_CREATE_154017", trigger_count = 0 }
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
		gadgets = { 154001, 154002, 154003, 154004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_154009", "GADGET_STATE_CHANGE_154010", "VARIABLE_CHANGE_154011", "GADGET_STATE_CHANGE_154012", "GADGET_CREATE_154013", "SELECT_OPTION_154014", "GROUP_REFRESH_154015", "ANY_GADGET_DIE_154016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 154001, 154008 },
		regions = { },
		triggers = { "GADGET_CREATE_154017" },
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
function action_EVENT_GADGET_STATE_CHANGE_154009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_154010(context, evt)
	if 154001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_154010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133106154, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_154011(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_154011(context, evt)
	-- 将configid为 154001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 154001, GadgetState.GearStop) then
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133106154, 2) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_154012(context, evt)
	if 154001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_154012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      return -1
	    end
	
	-- 删除指定group： 133106154 ；指定config：154001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133106154, 154001, 171) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_154013(context, evt)
	if 154001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_154013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106154, 154001, {171}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_154014(context, evt)
	if 154001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_154014(context, evt)
	-- 将configid为 154001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 154001, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GROUP_REFRESH_154015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106154, 154001, {171}) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_154016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_154017(context, evt)
	if 154001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_154017(context, evt)
	-- 将configid为 154001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 154001, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end
