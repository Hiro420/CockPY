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
	{ config_id = 319001, gadget_id = 70310001, pos = { x = 882.1, y = 379.7, z = 1442.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 319002, gadget_id = 70310001, pos = { x = 852.9, y = 400.6, z = 1444.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 319003, gadget_id = 70310001, pos = { x = 875.1, y = 384.4, z = 1453.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 319004, gadget_id = 70310001, pos = { x = 857.5, y = 388.3, z = 1455.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 319005, gadget_id = 70310001, pos = { x = 849.3, y = 393.0, z = 1448.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_319006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_319006", action = "action_EVENT_GADGET_STATE_CHANGE_319006" },
	{ name = "GADGET_STATE_CHANGE_319007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_319007", action = "action_EVENT_GADGET_STATE_CHANGE_319007" },
	{ name = "GADGET_STATE_CHANGE_319008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_319008", action = "action_EVENT_GADGET_STATE_CHANGE_319008" },
	{ name = "GADGET_STATE_CHANGE_319009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_319009", action = "action_EVENT_GADGET_STATE_CHANGE_319009" },
	{ name = "VARIABLE_CHANGE_319010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_319010", action = "action_EVENT_VARIABLE_CHANGE_319010" }
}

-- 变量
variables = {
	{ name = "fire", value = 0, no_refresh = false }
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
		gadgets = { 319001, 319002, 319003, 319004, 319005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_319006", "GADGET_STATE_CHANGE_319007", "GADGET_STATE_CHANGE_319008", "GADGET_STATE_CHANGE_319009", "VARIABLE_CHANGE_319010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_319006(context, evt)
	if 319002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_319006(context, evt)
	-- 针对当前group内变量名为 "fire" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "fire", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_319007(context, evt)
	if 319001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_319007(context, evt)
	-- 针对当前group内变量名为 "fire" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "fire", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_319008(context, evt)
	if 319003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_319008(context, evt)
	-- 针对当前group内变量名为 "fire" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "fire", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_319009(context, evt)
	if 319004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_319009(context, evt)
	-- 针对当前group内变量名为 "fire" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "fire", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_319010(context, evt)
	-- 判断变量"fire"为4
	if ScriptLib.GetGroupVariableValue(context, "fire") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_319010(context, evt)
	-- 创建id为319005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 319005 }) then
	  return -1
	end
	
	return 0
end
