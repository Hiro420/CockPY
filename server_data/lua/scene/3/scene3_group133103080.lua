-- Trigger变量
local defs = {
	group_id = 133103080,
	gadget_target_1S = 80002,
	gadget_target_1E = 80005,
	gadget_target_2S = 80003,
	gadget_target_2E = 80006,
	gadget_target_3S = 80004,
	gadget_target_3E = 80007
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
	{ config_id = 80001, gadget_id = 70360008, pos = { x = 745.8, y = 394.9, z = 1871.6 }, rot = { x = 0.0, y = 359.8, z = 0.0 }, level = 32 },
	{ config_id = 80002, gadget_id = 70360011, pos = { x = 755.6, y = 382.5, z = 1879.9 }, rot = { x = 0.0, y = 33.6, z = 0.0 }, level = 32 },
	{ config_id = 80003, gadget_id = 70360012, pos = { x = 754.5, y = 390.6, z = 1869.8 }, rot = { x = 0.0, y = 331.7, z = 0.0 }, level = 32 },
	{ config_id = 80004, gadget_id = 70360013, pos = { x = 750.7, y = 392.7, z = 1868.4 }, rot = { x = 0.0, y = 227.9, z = 0.0 }, level = 32 },
	{ config_id = 80005, gadget_id = 70360014, pos = { x = 755.6, y = 383.0, z = 1879.9 }, rot = { x = 0.0, y = 278.8, z = 0.0 }, level = 32, route_id = 310300022 },
	{ config_id = 80006, gadget_id = 70360014, pos = { x = 754.6, y = 390.5, z = 1869.8 }, rot = { x = 0.0, y = 18.7, z = 0.0 }, level = 32, route_id = 310300023 },
	{ config_id = 80007, gadget_id = 70360014, pos = { x = 750.7, y = 392.5, z = 1868.4 }, rot = { x = 0.0, y = 30.1, z = 0.0 }, level = 32, route_id = 310300024 },
	{ config_id = 80008, gadget_id = 70211111, pos = { x = 741.0, y = 398.9, z = 1872.4 }, rot = { x = 11.3, y = 76.0, z = 353.0 }, level = 32, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_80009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_80009", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_80010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80010", action = "action_EVENT_GADGET_STATE_CHANGE_80010" },
	{ name = "VARIABLE_CHANGE_80011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_80011", action = "action_EVENT_VARIABLE_CHANGE_80011" },
	{ name = "GADGET_STATE_CHANGE_80012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80012", action = "action_EVENT_GADGET_STATE_CHANGE_80012", trigger_count = 0 },
	{ name = "GADGET_CREATE_80013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_80013", action = "action_EVENT_GADGET_CREATE_80013", trigger_count = 0 },
	{ name = "SELECT_OPTION_80014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80014", action = "action_EVENT_SELECT_OPTION_80014", trigger_count = 0 },
	{ name = "GROUP_REFRESH_80015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_80015" },
	{ name = "ANY_GADGET_DIE_80016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_80016", trigger_count = 0 },
	{ name = "GADGET_CREATE_80017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_80017", action = "action_EVENT_GADGET_CREATE_80017", trigger_count = 0 }
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
		gadgets = { 80001, 80002, 80003, 80004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_80009", "GADGET_STATE_CHANGE_80010", "VARIABLE_CHANGE_80011", "GADGET_STATE_CHANGE_80012", "GADGET_CREATE_80013", "SELECT_OPTION_80014", "GROUP_REFRESH_80015", "ANY_GADGET_DIE_80016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 80001, 80008 },
		regions = { },
		triggers = { "GADGET_CREATE_80017" },
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
function action_EVENT_GADGET_STATE_CHANGE_80009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_80010(context, evt)
	if 80001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_80010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103080, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_80011(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_80011(context, evt)
	-- 将configid为 80001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80001, GadgetState.GearStop) then
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133103080, 2) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_80012(context, evt)
	if 80001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_80012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      return -1
	    end
	
	-- 删除指定group： 133103080 ；指定config：80001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103080, 80001, 171) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_80013(context, evt)
	if 80001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_80013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103080, 80001, {171}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_80014(context, evt)
	if 80001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_80014(context, evt)
	-- 将configid为 80001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80001, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GROUP_REFRESH_80015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103080, 80001, {171}) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_80016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_80017(context, evt)
	if 80001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_80017(context, evt)
	-- 将configid为 80001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80001, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end
