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
}

-- 区域
regions = {
	{ config_id = 52, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2387.1, y = 206.7, z = -1298.6 } },
	{ config_id = 53, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2395.9, y = 253.9, z = -1365.6 } },
	{ config_id = 54, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2545.5, y = 267.5, z = -1458.1 } },
	{ config_id = 55, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2672.3, y = 246.6, z = -1276.0 } },
	{ config_id = 56, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2660.0, y = 246.7, z = -1320.9 } },
	{ config_id = 57, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2463.2, y = 211.6, z = -1029.6 } },
	{ config_id = 58, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2635.8, y = 220.1, z = -1045.1 } },
	{ config_id = 59, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2539.8, y = 218.5, z = -1052.2 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_52", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52", action = "action_EVENT_ENTER_REGION_52" },
	{ name = "ENTER_REGION_53", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_53", action = "action_EVENT_ENTER_REGION_53" },
	{ name = "ENTER_REGION_54", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_54", action = "action_EVENT_ENTER_REGION_54" },
	{ name = "ENTER_REGION_55", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_55", action = "action_EVENT_ENTER_REGION_55" },
	{ name = "ENTER_REGION_56", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_56", action = "action_EVENT_ENTER_REGION_56" },
	{ name = "ENTER_REGION_57", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_57", action = "action_EVENT_ENTER_REGION_57" },
	{ name = "ENTER_REGION_58", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_58", action = "action_EVENT_ENTER_REGION_58" },
	{ name = "ENTER_REGION_59", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59", action = "action_EVENT_ENTER_REGION_59" }
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
function condition_EVENT_ENTER_REGION_52(context, evt)
	if evt.param1 ~= 52 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_52(context, evt)
	-- 触发镜头注目，注目位置为坐标（2387，206，-5394），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2387, y=206, z=-5394}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_53(context, evt)
	if evt.param1 ~= 53 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_53(context, evt)
	-- 触发镜头注目，注目位置为坐标（2395，253，-5461），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2395, y=253, z=-5461}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_54(context, evt)
	if evt.param1 ~= 54 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_54(context, evt)
	-- 触发镜头注目，注目位置为坐标（2545，267，-5554），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2545, y=267, z=-5554}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_55(context, evt)
	if evt.param1 ~= 55 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_55(context, evt)
	-- 触发镜头注目，注目位置为坐标（2672，246，-5372），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2672, y=246, z=-5372}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_56(context, evt)
	if evt.param1 ~= 56 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_56(context, evt)
	-- 触发镜头注目，注目位置为坐标（2659，246，-5416），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2659, y=246, z=-5416}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_57(context, evt)
	if evt.param1 ~= 57 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_57(context, evt)
	-- 触发镜头注目，注目位置为坐标（2463，211，-5125），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2463, y=211, z=-5125}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_58(context, evt)
	if evt.param1 ~= 58 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_58(context, evt)
	-- 触发镜头注目，注目位置为坐标（2635，220，-5141），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2635, y=220, z=-5141}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59(context, evt)
	if evt.param1 ~= 59 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59(context, evt)
	-- 触发镜头注目，注目位置为坐标（2539，218，-5148），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2539, y=218, z=-5148}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end
