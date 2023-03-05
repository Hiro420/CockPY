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
	{ config_id = 27, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1335.7, y = 328.4, z = -1273.3 } },
	{ config_id = 28, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1654.6, y = 282.6, z = -1236.5 } },
	{ config_id = 29, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1461.0, y = 254.4, z = -1539.1 } },
	{ config_id = 30, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1493.1, y = 270.9, z = -1394.9 } },
	{ config_id = 31, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1299.3, y = 323.8, z = -1185.1 } },
	{ config_id = 32, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1599.1, y = 309.1, z = -1084.1 } },
	{ config_id = 33, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1943.1, y = 238.6, z = -1089.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_27", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_27", action = "action_EVENT_ENTER_REGION_27" },
	{ name = "ENTER_REGION_28", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_28", action = "action_EVENT_ENTER_REGION_28" },
	{ name = "ENTER_REGION_29", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_29", action = "action_EVENT_ENTER_REGION_29" },
	{ name = "ENTER_REGION_30", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_30", action = "action_EVENT_ENTER_REGION_30" },
	{ name = "ENTER_REGION_31", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_31", action = "action_EVENT_ENTER_REGION_31" },
	{ name = "ENTER_REGION_32", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_32", action = "action_EVENT_ENTER_REGION_32" },
	{ name = "ENTER_REGION_33", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_33", action = "action_EVENT_ENTER_REGION_33" }
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
		regions = { 27, 28, 29, 30, 31, 32, 33 },
		triggers = { "ENTER_REGION_27", "ENTER_REGION_28", "ENTER_REGION_29", "ENTER_REGION_30", "ENTER_REGION_31", "ENTER_REGION_32", "ENTER_REGION_33" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_27(context, evt)
	if evt.param1 ~= 27 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_27(context, evt)
	-- 触发镜头注目，注目位置为坐标（1335，328，-5369），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1335, y=328, z=-5369}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_28(context, evt)
	if evt.param1 ~= 28 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_28(context, evt)
	-- 触发镜头注目，注目位置为坐标（1655，282，-5339），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1655, y=282, z=-5339}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_29(context, evt)
	if evt.param1 ~= 29 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_29(context, evt)
	-- 触发镜头注目，注目位置为坐标（1460，254，-5635），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1460, y=254, z=-5635}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_30(context, evt)
	if evt.param1 ~= 30 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_30(context, evt)
	-- 触发镜头注目，注目位置为坐标（1491，280，-5492），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1491, y=280, z=-5492}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_31(context, evt)
	if evt.param1 ~= 31 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_31(context, evt)
	-- 触发镜头注目，注目位置为坐标（1299，323，-5281），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1299, y=323, z=-5281}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_32(context, evt)
	if evt.param1 ~= 32 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_32(context, evt)
	-- 触发镜头注目，注目位置为坐标（1599，309，-5180），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1599, y=309, z=-5180}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

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
	-- 触发镜头注目，注目位置为坐标（1943，238，-5185），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1943, y=238, z=-5185}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end
