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
	{ config_id = 112, gadget_id = 70380001, pos = { x = 293.6, y = 13.7, z = -154.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 8, start_route = false },
	{ config_id = 113, gadget_id = 70220032, pos = { x = 287.0, y = 4.0, z = -154.1 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 127, gadget_id = 70211031, pos = { x = 298.3, y = 24.0, z = -154.1 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, drop_tag = "战斗超级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_59", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59", action = "action_EVENT_GADGET_STATE_CHANGE_59", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_60", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60", action = "action_EVENT_GADGET_STATE_CHANGE_60", trigger_count = 0 }
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
		gadgets = { 112, 113, 127 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_59", "GADGET_STATE_CHANGE_60" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59(context, evt)
	if 113 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 112) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_60(context, evt)
	if 113 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_60(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 112) then
	  return -1
	end
	
	return 0
end
