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
	{ config_id = 26, gadget_id = 70380003, pos = { x = 47.7, y = 7.0, z = -48.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 28, gadget_id = 70380003, pos = { x = 81.6, y = 17.6, z = -42.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 3, start_route = false },
	{ config_id = 30, gadget_id = 70380003, pos = { x = 104.3, y = 54.7, z = -12.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 4, start_route = false },
	{ config_id = 31, gadget_id = 70380003, pos = { x = 108.2, y = 54.6, z = -32.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 5, start_route = false },
	{ config_id = 33, gadget_id = 70380003, pos = { x = 120.9, y = 54.5, z = -10.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 6, start_route = false },
	{ config_id = 34, gadget_id = 70380003, pos = { x = 124.8, y = 54.4, z = -32.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 1006010, start_route = false },
	{ config_id = 35, gadget_id = 70350005, pos = { x = 151.5, y = 60.5, z = -22.0 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1 },
	{ config_id = 77, gadget_id = 70900201, pos = { x = 146.6, y = 60.5, z = -22.0 }, rot = { x = 0.0, y = 99.3, z = 0.0 }, level = 1 },
	{ config_id = 79, gadget_id = 70900201, pos = { x = 165.4, y = 82.0, z = -21.6 }, rot = { x = 0.0, y = 156.4, z = 0.0 }, level = 1 },
	{ config_id = 80, gadget_id = 70900201, pos = { x = 81.7, y = 19.4, z = -43.2 }, rot = { x = 0.0, y = 45.3, z = 0.0 }, level = 1 },
	{ config_id = 82, gadget_id = 70380003, pos = { x = 112.0, y = 54.6, z = -14.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 1006009, start_route = false },
	{ config_id = 83, gadget_id = 70380003, pos = { x = 128.8, y = 54.4, z = -14.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 7, start_route = false }
}

-- 区域
regions = {
	{ config_id = 22, shape = RegionShape.CUBIC, size = { x = 15.0, y = 3.0, z = 10.0 }, pos = { x = 144.5, y = 60.6, z = -22.2 } },
	{ config_id = 32, shape = RegionShape.CUBIC, size = { x = 10.0, y = 5.0, z = 10.0 }, pos = { x = 81.3, y = 19.4, z = -41.5 } },
	{ config_id = 45, shape = RegionShape.SPHERE, radius = 5, pos = { x = 41.1, y = 9.0, z = -49.8 } },
	{ config_id = 46, shape = RegionShape.CUBIC, size = { x = 5.0, y = 5.0, z = 35.0 }, pos = { x = 172.2, y = 81.5, z = -21.1 } },
	{ config_id = 47, shape = RegionShape.SPHERE, radius = 5, pos = { x = 199.7, y = 72.2, z = -22.5 } },
	{ config_id = 48, shape = RegionShape.SPHERE, radius = 5, pos = { x = 99.7, y = 56.4, z = -21.7 } },
	{ config_id = 49, shape = RegionShape.SPHERE, radius = 5, pos = { x = 114.4, y = 56.2, z = -22.7 } },
	{ config_id = 55, shape = RegionShape.CUBIC, size = { x = 4.0, y = 5.0, z = 4.0 }, pos = { x = 48.4, y = 8.8, z = -48.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_22", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_22", action = "action_EVENT_ENTER_REGION_22", forbid_guest = false },
	{ name = "ENTER_REGION_32", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_32", action = "action_EVENT_ENTER_REGION_32", forbid_guest = false },
	{ name = "ENTER_REGION_45", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45", action = "action_EVENT_ENTER_REGION_45", forbid_guest = false },
	{ name = "ENTER_REGION_46", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_46", action = "action_EVENT_ENTER_REGION_46", forbid_guest = false },
	{ name = "ENTER_REGION_47", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_47", action = "action_EVENT_ENTER_REGION_47", forbid_guest = false },
	{ name = "ENTER_REGION_48", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_48", action = "action_EVENT_ENTER_REGION_48", forbid_guest = false },
	{ name = "ENTER_REGION_49", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49", action = "action_EVENT_ENTER_REGION_49", forbid_guest = false },
	{ name = "ENTER_REGION_55", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_55", action = "action_EVENT_ENTER_REGION_55", forbid_guest = false }
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
		gadgets = { 26, 28, 30, 31, 33, 34, 35, 82, 83 },
		regions = { 22, 32, 45, 46, 47, 48, 49, 55 },
		triggers = { "ENTER_REGION_22", "ENTER_REGION_32", "ENTER_REGION_45", "ENTER_REGION_46", "ENTER_REGION_47", "ENTER_REGION_48", "ENTER_REGION_49", "ENTER_REGION_55" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_22(context, evt)
	if evt.param1 ~= 22 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_22(context, evt)
	-- 将configid为 35 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35, GadgetState.GearStart) then
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201006006, monsters = {}, gadgets = {77} }) then
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
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 28) then
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201006006, monsters = {}, gadgets = {80} }) then
			return -1
		end
	
	-- 创生gadget 77
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 77 }) then
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
	-- 创生gadget 80
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 80 }) then
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
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201006006, monsters = {}, gadgets = {79} }) then
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
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201006007, monsters = {}, gadgets = {78} }) then
			return -1
		end
	
	-- 创生gadget 79
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 79 }) then
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
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 30) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 31) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 82) then
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
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 33) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 34) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 83) then
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
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 26) then
	  return -1
	end
	
	return 0
end
