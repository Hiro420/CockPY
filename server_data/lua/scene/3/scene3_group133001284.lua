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
	{ config_id = 428, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1651.3, y = 244.8, z = -1658.8 } },
	{ config_id = 429, shape = RegionShape.SPHERE, radius = 33.3, pos = { x = 1489.3, y = 239.2, z = -1606.3 } },
	{ config_id = 430, shape = RegionShape.SPHERE, radius = 33.3, pos = { x = 1270.3, y = 250.7, z = -1521.2 } },
	{ config_id = 431, shape = RegionShape.SPHERE, radius = 33.3, pos = { x = 1294.4, y = 254.1, z = -1685.5 } },
	{ config_id = 437, shape = RegionShape.SPHERE, radius = 36.5, pos = { x = 1633.6, y = 197.8, z = -2609.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_428", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_428", action = "", tlog_tag = "好肉族捷径_入口" },
	{ name = "ENTER_REGION_429", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_429", action = "", tlog_tag = "好肉族normal_入口" },
	{ name = "ENTER_REGION_430", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_430", action = "", tlog_tag = "好睡族normal_入口" },
	{ name = "ENTER_REGION_431", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_431", action = "", tlog_tag = "黑日族normal_入口" },
	{ name = "ENTER_REGION_437", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_437", action = "", tlog_tag = "传送进入远岛" }
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
		regions = { 428, 429, 430, 431, 437 },
		triggers = { "ENTER_REGION_428", "ENTER_REGION_429", "ENTER_REGION_430", "ENTER_REGION_431", "ENTER_REGION_437" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_428(context, evt)
	if evt.param1 ~= 428 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_429(context, evt)
	if evt.param1 ~= 429 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_430(context, evt)
	if evt.param1 ~= 430 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_431(context, evt)
	if evt.param1 ~= 431 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_437(context, evt)
	if evt.param1 ~= 437 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
