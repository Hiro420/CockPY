-- Trigger变量
local defs = {
	group_id = 250008090,
	gadget_target_1S = 90002,
	gadget_target_1E = 90005,
	gadget_target_2S = 90003,
	gadget_target_2E = 90006,
	gadget_target_3S = 90004,
	gadget_target_3E = 90007
}
-- DEFS_MISCS
































































































































-- DEFS_MISCS

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
	{ config_id = 90001, gadget_id = 70360008, pos = { x = 221.5, y = 4.0, z = -515.5 }, rot = { x = 0.0, y = 268.8, z = 0.0 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 90002, gadget_id = 70360011, pos = { x = 214.8, y = 9.7, z = -514.5 }, rot = { x = 0.0, y = 302.6, z = 0.0 }, level = 1 },
	{ config_id = 90003, gadget_id = 70360012, pos = { x = 224.9, y = 9.8, z = -515.4 }, rot = { x = 0.0, y = 240.7, z = 0.0 }, level = 1 },
	{ config_id = 90004, gadget_id = 70360013, pos = { x = 226.4, y = 9.8, z = -519.1 }, rot = { x = 0.0, y = 136.9, z = 0.0 }, level = 1 },
	{ config_id = 90005, gadget_id = 70360014, pos = { x = 214.8, y = 9.7, z = -514.5 }, rot = { x = 0.0, y = 187.8, z = 0.0 }, level = 1, route_id = 50008062 },
	{ config_id = 90006, gadget_id = 70360014, pos = { x = 224.9, y = 9.8, z = -515.3 }, rot = { x = 0.0, y = 287.7, z = 0.0 }, level = 1, route_id = 50008063 },
	{ config_id = 90007, gadget_id = 70360014, pos = { x = 226.4, y = 9.8, z = -519.1 }, rot = { x = 0.0, y = 299.1, z = 0.0 }, level = 1, route_id = 50008042 },
	{ config_id = 90008, gadget_id = 70211111, pos = { x = 221.5, y = 4.0, z = -517.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_90009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_90009", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_90011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_90011", action = "action_EVENT_VARIABLE_CHANGE_90011" },
	{ name = "GADGET_STATE_CHANGE_90012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90012", action = "action_EVENT_GADGET_STATE_CHANGE_90012", trigger_count = 0 },
	{ name = "GADGET_CREATE_90013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_90013", action = "action_EVENT_GADGET_CREATE_90013", trigger_count = 0 },
	{ name = "SELECT_OPTION_90014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_90014", action = "action_EVENT_SELECT_OPTION_90014", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 90001, 90002, 90003, 90004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_90009", "VARIABLE_CHANGE_90011", "GADGET_STATE_CHANGE_90012", "GADGET_CREATE_90013", "SELECT_OPTION_90014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 90001, 90008 },
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

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_90009(context, evt)
	if evt.param1 == defs.gadget_target_1S then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_1E }) 	
	elseif evt.param1 == defs.gadget_target_2S then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_2E }) 
	elseif evt.param1 == defs.gadget_target_3S then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_3E }) 
	elseif evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_90011(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_90011(context, evt)
	-- 将configid为 90001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90001, GadgetState.GearStop) then
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 250008090, 2) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90012(context, evt)
	if 90001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      return -1
	    end
	
	-- 删除指定group： 250008090 ；指定config：90001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250008090, 90001, 171) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_90013(context, evt)
	if 90001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_90013(context, evt)
	-- 将configid为 90001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250008090, 90001, {171}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_90014(context, evt)
	if 90001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_90014(context, evt)
	-- 将configid为 90001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90001, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
