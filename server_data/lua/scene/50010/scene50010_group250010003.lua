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
	{ config_id = 10, gadget_id = 70900033, pos = { x = 285.2, y = 3.2, z = -37.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 11, gadget_id = 70380001, pos = { x = 293.0, y = 3.5, z = -37.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 75, gadget_id = 70220013, pos = { x = 290.0, y = 4.0, z = -41.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_5", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5", action = "action_EVENT_GADGET_STATE_CHANGE_5", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_6", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6", action = "action_EVENT_GADGET_STATE_CHANGE_6", trigger_count = 0 }
}

-- 变量
variables = {
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
	rand_suite = false,
	npcs = { }
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
		gadgets = { 10, 11 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_5", "GADGET_STATE_CHANGE_6" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5(context, evt)
	if 10 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 11) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6(context, evt)
	if 10 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 11) then
	  return -1
	end
	
	return 0
end
