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
	{ config_id = 451, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2315.0, y = 230.2, z = -1213.9 } },
	{ config_id = 452, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2220.0, y = 230.2, z = -1196.8 } },
	{ config_id = 453, shape = RegionShape.SPHERE, radius = 12.2, pos = { x = 2191.5, y = 212.5, z = -1480.0 } },
	{ config_id = 454, shape = RegionShape.SPHERE, radius = 12.2, pos = { x = 2465.2, y = 244.9, z = -1423.0 } },
	{ config_id = 455, shape = RegionShape.SPHERE, radius = 15.5, pos = { x = 2297.6, y = 247.3, z = -1466.5 } },
	{ config_id = 456, shape = RegionShape.SPHERE, radius = 15.5, pos = { x = 2448.3, y = 316.1, z = -1707.9 } },
	{ config_id = 457, shape = RegionShape.SPHERE, radius = 9.6, pos = { x = 2496.8, y = 302.7, z = -1610.9 } },
	{ config_id = 458, shape = RegionShape.SPHERE, radius = 9.6, pos = { x = 2500.3, y = 262.7, z = -1553.9 } },
	{ config_id = 459, shape = RegionShape.SPHERE, radius = 9.6, pos = { x = 2082.8, y = 231.2, z = -1527.1 } },
	{ config_id = 460, shape = RegionShape.SPHERE, radius = 9.6, pos = { x = 2181.3, y = 259.3, z = -1735.2 } },
	{ config_id = 461, shape = RegionShape.SPHERE, radius = 16.5, pos = { x = 2352.6, y = 283.9, z = -1729.2 } },
	{ config_id = 462, shape = RegionShape.SPHERE, radius = 9.6, pos = { x = 2239.7, y = 244.1, z = -1579.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_451", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_451", action = "", tlog_tag = "神殿_营地_左下_开始" },
	{ name = "ENTER_REGION_452", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_452", action = "", tlog_tag = "神殿_营地_传送点_开始" },
	{ name = "ENTER_REGION_453", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_453", action = "", tlog_tag = "神殿_营地_低洼_开始" },
	{ name = "ENTER_REGION_454", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_454", action = "", tlog_tag = "神殿_营地_烹饪_开始" },
	{ name = "ENTER_REGION_455", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_455", action = "", tlog_tag = "神殿_去池塘" },
	{ name = "ENTER_REGION_456", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_456", action = "", tlog_tag = "神殿_去顶峰" },
	{ name = "ENTER_REGION_457", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_457", action = "", tlog_tag = "神殿_去野猪" },
	{ name = "ENTER_REGION_458", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_458", action = "", tlog_tag = "神殿_去地城" },
	{ name = "ENTER_REGION_459", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_459", action = "", tlog_tag = "神殿_营地_遗迹下_开始" },
	{ name = "ENTER_REGION_460", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_460", action = "", tlog_tag = "神殿_营地_日晷_开始" },
	{ name = "ENTER_REGION_461", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_461", action = "", tlog_tag = "神殿_营地_守卫_开始" },
	{ name = "ENTER_REGION_462", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_462", action = "", tlog_tag = "神殿_营地_深渊冰_开始" }
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
		regions = { 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462 },
		triggers = { "ENTER_REGION_451", "ENTER_REGION_452", "ENTER_REGION_453", "ENTER_REGION_454", "ENTER_REGION_455", "ENTER_REGION_456", "ENTER_REGION_457", "ENTER_REGION_458", "ENTER_REGION_459", "ENTER_REGION_460", "ENTER_REGION_461", "ENTER_REGION_462" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_451(context, evt)
	if evt.param1 ~= 451 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_452(context, evt)
	if evt.param1 ~= 452 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_453(context, evt)
	if evt.param1 ~= 453 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_454(context, evt)
	if evt.param1 ~= 454 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_455(context, evt)
	if evt.param1 ~= 455 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_456(context, evt)
	if evt.param1 ~= 456 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_457(context, evt)
	if evt.param1 ~= 457 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_458(context, evt)
	if evt.param1 ~= 458 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_459(context, evt)
	if evt.param1 ~= 459 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_460(context, evt)
	if evt.param1 ~= 460 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_461(context, evt)
	if evt.param1 ~= 461 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_462(context, evt)
	if evt.param1 ~= 462 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
