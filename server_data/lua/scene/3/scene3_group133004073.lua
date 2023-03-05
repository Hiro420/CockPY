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
	{ config_id = 271, gadget_id = 70310003, pos = { x = 2224.9, y = 213.7, z = -473.0 }, rot = { x = 0.0, y = 9.4, z = 0.0 }, level = 15, state = GadgetState.GearStart, persistent = true },
	{ config_id = 272, gadget_id = 70310003, pos = { x = 2219.8, y = 213.8, z = -463.3 }, rot = { x = 0.0, y = 358.7, z = 0.0 }, level = 15, persistent = true },
	{ config_id = 287, gadget_id = 70211111, pos = { x = 2224.8, y = 214.2, z = -465.9 }, rot = { x = 6.1, y = 243.9, z = 1.0 }, level = 15, drop_tag = "解谜中级蒙德", isOneoff = true },
	{ config_id = 339, gadget_id = 70310003, pos = { x = 2228.7, y = 214.5, z = -463.5 }, rot = { x = 0.0, y = 3.4, z = 0.0 }, level = 15, state = GadgetState.GearStart, persistent = true },
	{ config_id = 492, gadget_id = 70220006, pos = { x = 2225.1, y = 208.2, z = -465.7 }, rot = { x = 359.9, y = 334.9, z = 3.5 }, level = 15 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "VARIABLE_CHANGE_72", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_72", action = "action_EVENT_VARIABLE_CHANGE_72", tlog_tag = "奔狼岭_73_谜题破解_结算" },
	{ name = "GADGET_STATE_CHANGE_158", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_158", action = "action_EVENT_GADGET_STATE_CHANGE_158", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_159", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_159", action = "action_EVENT_GADGET_STATE_CHANGE_159", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "num_1", value = 2, no_refresh = true }
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
	rand_suite = true
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
		gadgets = { 271, 272, 339, 492 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_72", "GADGET_STATE_CHANGE_158", "GADGET_STATE_CHANGE_159" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_72(context, evt)
	-- 判断变量"num_1"为3
	if ScriptLib.GetGroupVariableValue(context, "num_1") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_72(context, evt)
	-- 创建id为287的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 287 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_158(context, evt)
	if GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_158(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "num_1") + 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "num_1", c_num_1) then
	  return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_159(context, evt)
	if GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_159(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "num_1") - 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "num_1", c_num_1) then
	  return -1
	end
	return 0
end
