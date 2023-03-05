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
	{ config_id = 1342, gadget_id = 70310001, pos = { x = 2694.6, y = 250.8, z = -373.9 }, rot = { x = 0.0, y = 161.9, z = 0.0 }, level = 20, state = GadgetState.GearStart, persistent = true },
	{ config_id = 1343, gadget_id = 70310001, pos = { x = 2687.0, y = 250.3, z = -372.2 }, rot = { x = 0.0, y = 10.2, z = 0.0 }, level = 20, persistent = true },
	{ config_id = 1344, gadget_id = 70310001, pos = { x = 2691.2, y = 250.8, z = -369.1 }, rot = { x = 0.0, y = 246.2, z = 0.0 }, level = 20, persistent = true },
	{ config_id = 1345, gadget_id = 70310001, pos = { x = 2690.4, y = 250.4, z = -377.1 }, rot = { x = 0.0, y = 14.4, z = 0.0 }, level = 20, state = GadgetState.GearStart, persistent = true },
	{ config_id = 1346, gadget_id = 70211111, pos = { x = 2688.6, y = 251.5, z = -374.7 }, rot = { x = 355.7, y = 53.9, z = 1.5 }, level = 20, drop_tag = "解谜中级蒙德", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_255", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_255", action = "action_EVENT_GADGET_STATE_CHANGE_255", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_256", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_256", action = "action_EVENT_GADGET_STATE_CHANGE_256", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_257", event = EventType.EVENT_VARIABLE_CHANGE, source = "num_1", condition = "condition_EVENT_VARIABLE_CHANGE_257", action = "action_EVENT_VARIABLE_CHANGE_257", tlog_tag = "奔狼岭_232_谜题破解_结算" }
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
		gadgets = { 1342, 1343, 1344, 1345 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_255", "GADGET_STATE_CHANGE_256", "VARIABLE_CHANGE_257" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_255(context, evt)
	if GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_255(context, evt)
	-- 针对当前group内变量名为 "num_1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num_1", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_256(context, evt)
	if GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_256(context, evt)
	-- 针对当前group内变量名为 "num_1" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num_1", -1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_257(context, evt)
	-- 判断变量"num_1"为4
	if ScriptLib.GetGroupVariableValue(context, "num_1") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_257(context, evt)
	-- 创建id为1346的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1346 }) then
	  return -1
	end
	
	return 0
end
