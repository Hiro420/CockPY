-- Trigger变量
local defs = {
	group_id = 133105207,
	gadget_target_1S = 207002,
	gadget_target_1E = 207005,
	gadget_target_2S = 207003,
	gadget_target_2E = 207006,
	gadget_target_3S = 207004,
	gadget_target_3E = 207007
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
	{ config_id = 207001, gadget_id = 70360008, pos = { x = 604.1, y = 299.0, z = -207.5 }, rot = { x = 0.0, y = 268.8, z = 0.0 }, level = 32 },
	{ config_id = 207002, gadget_id = 70360011, pos = { x = 588.4, y = 304.7, z = -205.3 }, rot = { x = 0.0, y = 302.6, z = 0.0 }, level = 32 },
	{ config_id = 207003, gadget_id = 70360012, pos = { x = 601.2, y = 304.8, z = -196.3 }, rot = { x = 0.0, y = 240.7, z = 0.0 }, level = 32 },
	{ config_id = 207004, gadget_id = 70360013, pos = { x = 595.2, y = 304.8, z = -201.1 }, rot = { x = 0.0, y = 136.9, z = 0.0 }, level = 32 },
	{ config_id = 207005, gadget_id = 70360014, pos = { x = 588.4, y = 304.7, z = -205.3 }, rot = { x = 0.0, y = 187.8, z = 0.0 }, level = 32, route_id = 310500064 },
	{ config_id = 207006, gadget_id = 70360014, pos = { x = 601.2, y = 304.8, z = -196.2 }, rot = { x = 0.0, y = 287.7, z = 0.0 }, level = 32, route_id = 310500065 },
	{ config_id = 207007, gadget_id = 70360014, pos = { x = 595.2, y = 304.8, z = -201.1 }, rot = { x = 0.0, y = 299.1, z = 0.0 }, level = 32, route_id = 310500066 },
	{ config_id = 207008, gadget_id = 70211111, pos = { x = 604.1, y = 299.4, z = -209.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_207009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_207009", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_207010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_207010", action = "action_EVENT_GADGET_STATE_CHANGE_207010" },
	{ name = "VARIABLE_CHANGE_207011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_207011", action = "action_EVENT_VARIABLE_CHANGE_207011" },
	{ name = "GADGET_STATE_CHANGE_207012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_207012", action = "action_EVENT_GADGET_STATE_CHANGE_207012", trigger_count = 0 },
	{ name = "GADGET_CREATE_207013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_207013", action = "action_EVENT_GADGET_CREATE_207013", trigger_count = 0 },
	{ name = "SELECT_OPTION_207014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_207014", action = "action_EVENT_SELECT_OPTION_207014", trigger_count = 0 },
	{ name = "GROUP_REFRESH_207015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_207015" },
	{ name = "ANY_GADGET_DIE_207016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_207016", trigger_count = 0 },
	{ name = "GADGET_CREATE_207017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_207017", action = "action_EVENT_GADGET_CREATE_207017", trigger_count = 0 }
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
		gadgets = { 207001, 207002, 207003, 207004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_207009", "GADGET_STATE_CHANGE_207010", "VARIABLE_CHANGE_207011", "GADGET_STATE_CHANGE_207012", "GADGET_CREATE_207013", "SELECT_OPTION_207014", "GROUP_REFRESH_207015", "ANY_GADGET_DIE_207016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 207001, 207008 },
		regions = { },
		triggers = { "GADGET_CREATE_207017" },
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
function action_EVENT_GADGET_STATE_CHANGE_207009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_207010(context, evt)
	if 207001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
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
function action_EVENT_GADGET_STATE_CHANGE_207010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105207, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_207011(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_207011(context, evt)
	-- 将configid为 207001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 207001, GadgetState.GearStop) then
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133105207, 2) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_207012(context, evt)
	if 207001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_207012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      return -1
	    end
	
	-- 删除指定group： 133105207 ；指定config：207001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133105207, 207001, 171) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_207013(context, evt)
	if 207001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_207013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133105207, 207001, {171}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_207014(context, evt)
	if 207001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_207014(context, evt)
	-- 将configid为 207001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 207001, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GROUP_REFRESH_207015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133105207, 207001, {171}) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_207016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_207017(context, evt)
	if 207001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_207017(context, evt)
	-- 将configid为 207001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 207001, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end
