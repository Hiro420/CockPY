-- Trigger变量
local defs = {
	gadget_lift = 51,
	route_down = 20007015,
	route_up = 20007016,
	group_id = 220007005,
	lift_wait_time = 4
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
	{ config_id = 51, gadget_id = 70380011, pos = { x = -8.4, y = 20.0, z = -5.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 20007015, persistent = true }
}

-- 区域
regions = {
	{ config_id = 33, shape = RegionShape.SPHERE, radius = 3, pos = { x = -7.5, y = 0.0, z = -9.0 } },
	{ config_id = 34, shape = RegionShape.SPHERE, radius = 3, pos = { x = -3.7, y = 21.0, z = -4.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_33", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_33", action = "action_EVENT_ENTER_REGION_33", trigger_count = 0 },
	{ name = "ENTER_REGION_34", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_34", action = "action_EVENT_ENTER_REGION_34", trigger_count = 0 },
	{ name = "PLATFORM_REACH_POINT_35", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "51", condition = "condition_EVENT_PLATFORM_REACH_POINT_35", action = "action_EVENT_PLATFORM_REACH_POINT_35", trigger_count = 0 },
	{ name = "TIMER_EVENT_36", event = EventType.EVENT_TIMER_EVENT, source = "wait_down", condition = "", action = "action_EVENT_TIMER_EVENT_36", trigger_count = 0 },
	{ name = "TIMER_EVENT_37", event = EventType.EVENT_TIMER_EVENT, source = "wait_up", condition = "", action = "action_EVENT_TIMER_EVENT_37", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "route_flag", value = 0, no_refresh = true }
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
		gadgets = { 51 },
		regions = { 33, 34 },
		triggers = { "ENTER_REGION_33", "ENTER_REGION_34", "PLATFORM_REACH_POINT_35", "TIMER_EVENT_36", "TIMER_EVENT_37" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_33(context, evt)
	if evt.param1 ~= 33 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_33(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 51, 20007015) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_34(context, evt)
	if evt.param1 ~= 34 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_34(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 51, 20007016) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_35(context, evt)
	if 51 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_35(context, evt)
	if evt.param2 == defs.route_down then
		ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "wait_down", defs.lift_wait_time)
	elseif evt.param2 == defs.route_up then
		ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "wait_up", defs.lift_wait_time)
	end
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_36(context, evt)
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, "wait_up")
	ScriptLib.SetPlatformRouteId(context, defs.gadget_lift, defs.route_up)
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_37(context, evt)
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, "wait_down")
	ScriptLib.SetPlatformRouteId(context, defs.gadget_lift, defs.route_down)
	return 0
end
