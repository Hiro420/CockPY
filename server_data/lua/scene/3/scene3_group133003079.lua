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
	{ config_id = 2381, gadget_id = 70500000, pos = { x = 2311.6, y = 253.6, z = -1262.3 }, rot = { x = 0.0, y = 175.1, z = 0.0 }, level = 5, point_type = 4001001, isOneoff = true },
	{ config_id = 2383, gadget_id = 70500000, pos = { x = 2502.4, y = 308.2, z = -1632.9 }, rot = { x = 0.0, y = 350.8, z = 0.0 }, level = 10, point_type = 4001001, isOneoff = true },
	{ config_id = 2384, gadget_id = 70500000, pos = { x = 2239.1, y = 274.3, z = -1560.7 }, rot = { x = 0.0, y = 192.8, z = 0.0 }, level = 15, point_type = 4001001, isOneoff = true },
	{ config_id = 3447, gadget_id = 70500000, pos = { x = 2330.5, y = 315.5, z = -1761.6 }, rot = { x = 0.0, y = 175.1, z = 0.0 }, level = 15, point_type = 4001001, isOneoff = true },
	{ config_id = 4209, gadget_id = 70500000, pos = { x = 2613.9, y = 236.0, z = -2297.8 }, rot = { x = 0.0, y = 175.1, z = 0.0 }, level = 30, point_type = 4001001, isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 44, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2503.9, y = 215.5, z = -1385.6 } },
	{ config_id = 45, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2360.0, y = 269.0, z = -1371.3 } },
	{ config_id = 46, shape = RegionShape.SPHERE, radius = 42.3, pos = { x = 2411.5, y = 267.8, z = -1205.9 } },
	{ config_id = 47, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2531.8, y = 212.4, z = -1137.5 } },
	{ config_id = 48, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2659.9, y = 265.5, z = -1338.5 } },
	{ config_id = 49, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2132.5, y = 234.5, z = -1270.2 } },
	{ config_id = 50, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2866.1, y = 257.8, z = -1878.5 } },
	{ config_id = 51, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2639.2, y = 392.5, z = -1713.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_44", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_44", action = "action_EVENT_ENTER_REGION_44" },
	{ name = "ENTER_REGION_45", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45", action = "action_EVENT_ENTER_REGION_45" },
	{ name = "ENTER_REGION_46", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_46", action = "action_EVENT_ENTER_REGION_46" },
	{ name = "ENTER_REGION_47", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_47", action = "action_EVENT_ENTER_REGION_47" },
	{ name = "ENTER_REGION_48", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_48", action = "action_EVENT_ENTER_REGION_48" },
	{ name = "ENTER_REGION_49", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49", action = "action_EVENT_ENTER_REGION_49" },
	{ name = "ENTER_REGION_50", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_50", action = "action_EVENT_ENTER_REGION_50" },
	{ name = "ENTER_REGION_51", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_51", action = "action_EVENT_ENTER_REGION_51" }
}

-- 变量
variables = {
	{ name = "TriggerState_44", value = 1, no_refresh = false },
	{ name = "TriggerState_45", value = 1, no_refresh = false },
	{ name = "TriggerState_46", value = 1, no_refresh = false },
	{ name = "TriggerState_47", value = 1, no_refresh = false }
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
		gadgets = { 2381, 2383, 2384, 3447, 4209 },
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
function condition_EVENT_ENTER_REGION_44(context, evt)
	if evt.param1 ~= 44 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_44(context, evt)
	-- 触发镜头注目，注目位置为坐标（2502，219，-5480），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2502, y=219, z=-5480}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_45(context, evt)
	if evt.param1 ~= 45 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_45(context, evt)
	-- 触发镜头注目，注目位置为坐标（2363，269，-5453），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2363, y=269, z=-5453}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_46(context, evt)
	if evt.param1 ~= 46 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_46(context, evt)
	-- 触发镜头注目，注目位置为坐标（2411，267，-5301），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2411, y=267, z=-5301}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_47(context, evt)
	if evt.param1 ~= 47 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_47(context, evt)
	-- 触发镜头注目，注目位置为坐标（2536，226，-5218），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2536, y=226, z=-5218}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_48(context, evt)
	if evt.param1 ~= 48 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_48(context, evt)
	-- 触发镜头注目，注目位置为坐标（2658，264，-5421），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2658, y=264, z=-5421}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_49(context, evt)
	if evt.param1 ~= 49 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49(context, evt)
	-- 触发镜头注目，注目位置为坐标（2149，234，-5360），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2149, y=234, z=-5360}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_50(context, evt)
	if evt.param1 ~= 50 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_50(context, evt)
	-- 触发镜头注目，注目位置为坐标（2866，257，-5974），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2866, y=257, z=-5974}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_51(context, evt)
	if evt.param1 ~= 51 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_51(context, evt)
	-- 触发镜头注目，注目位置为坐标（2657，397，-5795），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2657, y=397, z=-5795}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end
