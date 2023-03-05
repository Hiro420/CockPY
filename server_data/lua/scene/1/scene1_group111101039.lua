-- Trigger变量
local defs = {
	group_id = 111101039,
	gadget_target_1S = 39002,
	gadget_target_1E = 39005,
	gadget_target_2S = 39003,
	gadget_target_2E = 39006,
	gadget_target_3S = 39004,
	gadget_target_3E = 39007
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
	{ config_id = 39001, gadget_id = 70360008, pos = { x = 2342.6, y = 253.8, z = -1419.8 }, rot = { x = 0.0, y = 268.8, z = 0.0 }, level = 1 },
	{ config_id = 39002, gadget_id = 70360011, pos = { x = 2344.6, y = 259.5, z = -1408.6 }, rot = { x = 0.0, y = 302.6, z = 0.0 }, level = 1 },
	{ config_id = 39003, gadget_id = 70360012, pos = { x = 2340.9, y = 259.7, z = -1424.3 }, rot = { x = 0.0, y = 240.7, z = 0.0 }, level = 1 },
	{ config_id = 39004, gadget_id = 70360013, pos = { x = 2346.2, y = 259.6, z = -1421.1 }, rot = { x = 0.0, y = 136.9, z = 0.0 }, level = 1 },
	{ config_id = 39005, gadget_id = 70360014, pos = { x = 2344.6, y = 259.5, z = -1408.6 }, rot = { x = 0.0, y = 187.8, z = 0.0 }, level = 1, route_id = 110100014 },
	{ config_id = 39006, gadget_id = 70360014, pos = { x = 2340.9, y = 259.7, z = -1424.3 }, rot = { x = 0.0, y = 287.7, z = 0.0 }, level = 1, route_id = 110100015 },
	{ config_id = 39007, gadget_id = 70360014, pos = { x = 2346.2, y = 259.6, z = -1421.1 }, rot = { x = 0.0, y = 299.1, z = 0.0 }, level = 1, route_id = 110100016 },
	{ config_id = 39008, gadget_id = 70211111, pos = { x = 2342.6, y = 253.8, z = -1421.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_39009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_39009", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_39010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_39010", action = "action_EVENT_GADGET_STATE_CHANGE_39010" },
	{ name = "VARIABLE_CHANGE_39011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_39011", action = "action_EVENT_VARIABLE_CHANGE_39011" },
	{ name = "GADGET_STATE_CHANGE_39012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_39012", action = "action_EVENT_GADGET_STATE_CHANGE_39012", trigger_count = 0 },
	{ name = "GADGET_CREATE_39013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_39013", action = "action_EVENT_GADGET_CREATE_39013", trigger_count = 0 },
	{ name = "SELECT_OPTION_39014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_39014", action = "action_EVENT_SELECT_OPTION_39014", trigger_count = 0 },
	{ name = "GROUP_REFRESH_39015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_39015" },
	{ name = "ANY_GADGET_DIE_39016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_39016", trigger_count = 0 },
	{ name = "GADGET_CREATE_39017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_39017", action = "action_EVENT_GADGET_CREATE_39017", trigger_count = 0 }
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
		gadgets = { 39001, 39002, 39003, 39004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_39009", "GADGET_STATE_CHANGE_39010", "VARIABLE_CHANGE_39011", "GADGET_STATE_CHANGE_39012", "GADGET_CREATE_39013", "SELECT_OPTION_39014", "GROUP_REFRESH_39015", "ANY_GADGET_DIE_39016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 39001, 39008 },
		regions = { },
		triggers = { "GADGET_CREATE_39017" },
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
function action_EVENT_GADGET_STATE_CHANGE_39009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_39010(context, evt)
	if 39001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_39010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101039, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_39011(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_39011(context, evt)
	-- 将configid为 39001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 39001, GadgetState.GearStop) then
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 111101039, 2) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_39012(context, evt)
	if 39001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_39012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      return -1
	    end
	
	-- 删除指定group： 111101039 ；指定config：39001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101039, 39001, 171) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_39013(context, evt)
	if 39001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_39013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101039, 39001, {171}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_39014(context, evt)
	if 39001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_39014(context, evt)
	-- 将configid为 39001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 39001, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GROUP_REFRESH_39015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101039, 39001, {171}) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_39016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_39017(context, evt)
	if 39001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_39017(context, evt)
	-- 将configid为 39001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 39001, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end
