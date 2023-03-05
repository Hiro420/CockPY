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
	{ config_id = 129, gadget_id = 70220033, pos = { x = 302.4, y = 24.0, z = -153.8 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 130, gadget_id = 70690006, pos = { x = 300.4, y = 24.8, z = -162.5 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 131, gadget_id = 70380001, pos = { x = 309.5, y = 24.0, z = -153.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 9, start_route = false },
	{ config_id = 132, gadget_id = 70380001, pos = { x = 315.4, y = 24.0, z = -153.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 10, start_route = false },
	{ config_id = 133, gadget_id = 70211031, pos = { x = 323.3, y = 24.0, z = -153.9 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, drop_tag = "战斗超级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_63", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_63", action = "action_EVENT_GADGET_STATE_CHANGE_63", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_64", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_64", action = "action_EVENT_GADGET_STATE_CHANGE_64", trigger_count = 0 }
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
		gadgets = { 129, 130, 131, 132, 133 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_63", "GADGET_STATE_CHANGE_64" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_63(context, evt)
	if 129 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_63(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 131) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 132) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_64(context, evt)
	if 129 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_64(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 131) then
	  return -1
	end
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 132) then
	  return -1
	end
	
	return 0
end
