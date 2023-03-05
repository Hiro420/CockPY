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
	{ config_id = 24, gadget_id = 70900307, pos = { x = 204.4, y = 4.0, z = -70.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 25, gadget_id = 70211001, pos = { x = 202.5, y = 4.0, z = -74.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 26, gadget_id = 70900307, pos = { x = 198.8, y = 4.0, z = -73.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 27, gadget_id = 70900307, pos = { x = 204.0, y = 4.0, z = -77.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_19", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19", action = "action_EVENT_GADGET_STATE_CHANGE_19" },
	{ name = "GADGET_STATE_CHANGE_20", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_20", action = "action_EVENT_GADGET_STATE_CHANGE_20" },
	{ name = "GADGET_STATE_CHANGE_21", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_21", action = "action_EVENT_GADGET_STATE_CHANGE_21" },
	{ name = "VARIABLE_CHANGE_22", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_22", action = "action_EVENT_VARIABLE_CHANGE_22" },
	{ name = "TIMER_EVENT_23", event = EventType.EVENT_TIMER_EVENT, source = "SpawnChest", condition = "", action = "action_EVENT_TIMER_EVENT_23" }
}

-- 变量
variables = {
	{ name = "count", value = 0, no_refresh = true }
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
		gadgets = { 24, 26, 27 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_19", "GADGET_STATE_CHANGE_20", "GADGET_STATE_CHANGE_21", "VARIABLE_CHANGE_22", "TIMER_EVENT_23" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_19(context, evt)
	if 24 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_19(context, evt)
	-- 创建id为25的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 25 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_20(context, evt)
	if 26 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_20(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_21(context, evt)
	if 27 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_21(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_22(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_22(context, evt)
	-- 延迟1秒后,向groupId为：250009007的对象,请求一次调用,并将string参数："SpawnChest" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250009007, "SpawnChest", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_23(context, evt)
	-- 创建id为25的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 25 }) then
	  return -1
	end
	
	return 0
end
