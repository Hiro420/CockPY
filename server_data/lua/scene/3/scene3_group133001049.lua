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
	{ config_id = 246, shape = RegionShape.SPHERE, radius = 52.9, pos = { x = 2018.1, y = 194.5, z = -1163.1 } },
	{ config_id = 247, shape = RegionShape.SPHERE, radius = 52.9, pos = { x = 2051.6, y = 202.3, z = -1266.0 } },
	{ config_id = 248, shape = RegionShape.SPHERE, radius = 52.9, pos = { x = 2140.7, y = 223.5, z = -1365.3 } },
	{ config_id = 249, shape = RegionShape.SPHERE, radius = 52.9, pos = { x = 1998.5, y = 216.9, z = -1475.0 } },
	{ config_id = 250, shape = RegionShape.SPHERE, radius = 40.1, pos = { x = 1658.3, y = 240.3, z = -1355.7 } },
	{ config_id = 251, shape = RegionShape.SPHERE, radius = 40.1, pos = { x = 1836.7, y = 225.6, z = -1099.2 } },
	{ config_id = 252, shape = RegionShape.SPHERE, radius = 52.9, pos = { x = 2168.0, y = 224.3, z = -1250.0 } },
	{ config_id = 253, shape = RegionShape.SPHERE, radius = 25.2, pos = { x = 1957.8, y = 196.8, z = -1167.4 } },
	{ config_id = 254, shape = RegionShape.SPHERE, radius = 25.2, pos = { x = 1805.8, y = 203.1, z = -1270.1 } },
	{ config_id = 255, shape = RegionShape.SPHERE, radius = 25.2, pos = { x = 1870.7, y = 196.5, z = -1552.7 } },
	{ config_id = 256, shape = RegionShape.SPHERE, radius = 25.2, pos = { x = 1993.6, y = 204.7, z = -1362.7 } },
	{ config_id = 257, shape = RegionShape.SPHERE, radius = 25.2, pos = { x = 1758.5, y = 214.6, z = -1368.3 } },
	{ config_id = 258, shape = RegionShape.SPHERE, radius = 25.2, pos = { x = 2073.6, y = 205.0, z = -1267.3 } },
	{ config_id = 259, shape = RegionShape.SPHERE, radius = 30.8, pos = { x = 1837.1, y = 194.9, z = -1495.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_246", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_246", action = "", tlog_tag = "小平原_入口_东" },
	{ name = "ENTER_REGION_247", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_247", action = "", tlog_tag = "小平原_入口_东" },
	{ name = "ENTER_REGION_248", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_248", action = "", tlog_tag = "小平原_去往神殿_西" },
	{ name = "ENTER_REGION_249", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_249", action = "", tlog_tag = "小平原_去往神殿_东" },
	{ name = "ENTER_REGION_250", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_250", action = "", tlog_tag = "小平原_去丽莎" },
	{ name = "ENTER_REGION_251", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_251", action = "", tlog_tag = "小平原_去丘丘圣山" },
	{ name = "ENTER_REGION_252", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_252", action = "", tlog_tag = "小平原_去往神殿_西" },
	{ name = "ENTER_REGION_253", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_253", action = "", tlog_tag = "小平原_营地_g73_开始" },
	{ name = "ENTER_REGION_254", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_254", action = "", tlog_tag = "小平原_营地_g102_开始" },
	{ name = "ENTER_REGION_255", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_255", action = "", tlog_tag = "小平原_营地_海滩_开始" },
	{ name = "ENTER_REGION_256", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_256", action = "", tlog_tag = "小平原_营地_遗迹附近_开始" },
	{ name = "ENTER_REGION_257", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_257", action = "", tlog_tag = "小平原_营地_风场平台_开始" },
	{ name = "ENTER_REGION_258", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_258", action = "", tlog_tag = "小平原_解谜_移动靶_草原_开始" },
	{ name = "ENTER_REGION_259", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_259", action = "", tlog_tag = "小平原_解谜_移动靶_海滩_开始" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259 },
		triggers = { "ENTER_REGION_246", "ENTER_REGION_247", "ENTER_REGION_248", "ENTER_REGION_249", "ENTER_REGION_250", "ENTER_REGION_251", "ENTER_REGION_252", "ENTER_REGION_253", "ENTER_REGION_254", "ENTER_REGION_255", "ENTER_REGION_256", "ENTER_REGION_257", "ENTER_REGION_258", "ENTER_REGION_259" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_246(context, evt)
	if evt.param1 ~= 246 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_247(context, evt)
	if evt.param1 ~= 247 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_248(context, evt)
	if evt.param1 ~= 248 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_249(context, evt)
	if evt.param1 ~= 249 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_250(context, evt)
	if evt.param1 ~= 250 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_251(context, evt)
	if evt.param1 ~= 251 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_252(context, evt)
	if evt.param1 ~= 252 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_253(context, evt)
	if evt.param1 ~= 253 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_254(context, evt)
	if evt.param1 ~= 254 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_255(context, evt)
	if evt.param1 ~= 255 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_256(context, evt)
	if evt.param1 ~= 256 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_257(context, evt)
	if evt.param1 ~= 257 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_258(context, evt)
	if evt.param1 ~= 258 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_259(context, evt)
	if evt.param1 ~= 259 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
