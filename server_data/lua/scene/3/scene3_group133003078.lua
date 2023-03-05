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
	{ config_id = 60, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2889.0, y = 256.6, z = -1818.1 } },
	{ config_id = 61, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2547.5, y = 217.5, z = -1439.8 } },
	{ config_id = 62, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2537.7, y = 256.0, z = -1527.4 } },
	{ config_id = 63, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2420.8, y = 203.1, z = -1164.6 } },
	{ config_id = 64, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2571.9, y = 210.7, z = -1246.7 } },
	{ config_id = 65, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2687.1, y = 264.3, z = -1344.8 } },
	{ config_id = 66, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2855.4, y = 274.5, z = -1523.2 } },
	{ config_id = 67, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2385.3, y = 270.9, z = -1417.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_60", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_60", action = "action_EVENT_ENTER_REGION_60" },
	{ name = "ENTER_REGION_61", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_61", action = "action_EVENT_ENTER_REGION_61" },
	{ name = "ENTER_REGION_62", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_62", action = "action_EVENT_ENTER_REGION_62" },
	{ name = "ENTER_REGION_63", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_63", action = "action_EVENT_ENTER_REGION_63" },
	{ name = "ENTER_REGION_64", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_64", action = "action_EVENT_ENTER_REGION_64" },
	{ name = "ENTER_REGION_65", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65", action = "action_EVENT_ENTER_REGION_65" },
	{ name = "ENTER_REGION_66", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_66", action = "action_EVENT_ENTER_REGION_66" },
	{ name = "ENTER_REGION_67", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_67", action = "action_EVENT_ENTER_REGION_67" }
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
function condition_EVENT_ENTER_REGION_60(context, evt)
	if evt.param1 ~= 60 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_60(context, evt)
	-- 触发镜头注目，注目位置为坐标（2889，256，-5914），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2889, y=256, z=-5914}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_61(context, evt)
	if evt.param1 ~= 61 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_61(context, evt)
	-- 触发镜头注目，注目位置为坐标（2547，217，-5535），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2547, y=217, z=-5535}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_62(context, evt)
	if evt.param1 ~= 62 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_62(context, evt)
	-- 触发镜头注目，注目位置为坐标（2537，255，-5623），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2537, y=255, z=-5623}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_63(context, evt)
	if evt.param1 ~= 63 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_63(context, evt)
	-- 触发镜头注目，注目位置为坐标（2420，203，-5260），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2420, y=203, z=-5260}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_64(context, evt)
	if evt.param1 ~= 64 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_64(context, evt)
	-- 触发镜头注目，注目位置为坐标（2571，210，-5342），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2571, y=210, z=-5342}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65(context, evt)
	if evt.param1 ~= 65 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65(context, evt)
	-- 触发镜头注目，注目位置为坐标（2687，264，-5440），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2687, y=264, z=-5440}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_66(context, evt)
	if evt.param1 ~= 66 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_66(context, evt)
	-- 触发镜头注目，注目位置为坐标（2855，274，-5619），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2855, y=274, z=-5619}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_67(context, evt)
	if evt.param1 ~= 67 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_67(context, evt)
	-- 触发镜头注目，注目位置为坐标（2385，270，-5513），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2385, y=270, z=-5513}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end
