-- Trigger变量
local defs = {
	group_id = 133104465,
	gadget_target_1S = 465002,
	gadget_target_1E = 465005,
	gadget_target_2S = 465003,
	gadget_target_2E = 465006,
	gadget_target_3S = 465004,
	gadget_target_3E = 465007
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
	{ config_id = 465001, gadget_id = 70360008, pos = { x = 37.8, y = 206.0, z = 534.5 }, rot = { x = 0.0, y = 268.8, z = 0.0 }, level = 19 },
	{ config_id = 465002, gadget_id = 70360011, pos = { x = 26.1, y = 203.8, z = 524.7 }, rot = { x = 0.0, y = 302.6, z = 0.0 }, level = 19 },
	{ config_id = 465003, gadget_id = 70360012, pos = { x = 20.1, y = 201.8, z = 518.3 }, rot = { x = 0.0, y = 240.7, z = 0.0 }, level = 19 },
	{ config_id = 465004, gadget_id = 70360013, pos = { x = 31.4, y = 203.2, z = 509.9 }, rot = { x = 0.0, y = 136.9, z = 0.0 }, level = 19 },
	{ config_id = 465005, gadget_id = 70360014, pos = { x = 26.1, y = 203.8, z = 524.7 }, rot = { x = 0.0, y = 187.8, z = 0.0 }, level = 19, route_id = 310400181 },
	{ config_id = 465006, gadget_id = 70360014, pos = { x = 20.1, y = 201.8, z = 518.3 }, rot = { x = 0.0, y = 287.7, z = 0.0 }, level = 19, route_id = 310400182 },
	{ config_id = 465007, gadget_id = 70360014, pos = { x = 31.4, y = 203.2, z = 509.9 }, rot = { x = 0.0, y = 299.1, z = 0.0 }, level = 19, route_id = 310400183 },
	{ config_id = 465008, gadget_id = 70211111, pos = { x = 38.6, y = 205.9, z = 535.7 }, rot = { x = 346.6, y = 206.3, z = 357.3 }, level = 19, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_465009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_465009", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_465010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_465010", action = "action_EVENT_GADGET_STATE_CHANGE_465010" },
	{ name = "VARIABLE_CHANGE_465011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_465011", action = "action_EVENT_VARIABLE_CHANGE_465011" },
	{ name = "GADGET_STATE_CHANGE_465012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_465012", action = "action_EVENT_GADGET_STATE_CHANGE_465012", trigger_count = 0 },
	{ name = "GADGET_CREATE_465013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_465013", action = "action_EVENT_GADGET_CREATE_465013", trigger_count = 0 },
	{ name = "SELECT_OPTION_465014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_465014", action = "action_EVENT_SELECT_OPTION_465014", trigger_count = 0 },
	{ name = "GROUP_REFRESH_465015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_465015" },
	{ name = "ANY_GADGET_DIE_465016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_465016", trigger_count = 0 },
	{ name = "GADGET_CREATE_465017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_465017", action = "action_EVENT_GADGET_CREATE_465017", trigger_count = 0 }
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
		gadgets = { 465001, 465002, 465003, 465004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_465009", "GADGET_STATE_CHANGE_465010", "VARIABLE_CHANGE_465011", "GADGET_STATE_CHANGE_465012", "GADGET_CREATE_465013", "SELECT_OPTION_465014", "GROUP_REFRESH_465015", "ANY_GADGET_DIE_465016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 465001, 465008 },
		regions = { },
		triggers = { "GADGET_CREATE_465017" },
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
function action_EVENT_GADGET_STATE_CHANGE_465009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_465010(context, evt)
	if 465001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_465010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104465, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_465011(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_465011(context, evt)
	-- 将configid为 465001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 465001, GadgetState.GearStop) then
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104465, 2) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_465012(context, evt)
	if 465001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_465012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      return -1
	    end
	
	-- 删除指定group： 133104465 ；指定config：465001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104465, 465001, 171) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_465013(context, evt)
	if 465001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_465013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104465, 465001, {171}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_465014(context, evt)
	if 465001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_465014(context, evt)
	-- 将configid为 465001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 465001, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GROUP_REFRESH_465015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104465, 465001, {171}) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_465016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_465017(context, evt)
	if 465001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_465017(context, evt)
	-- 将configid为 465001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 465001, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end
