--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 813, monster_id = 28040101, pos = { x = 2565.9, y = 224.9, z = -1564.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "水族" },
	{ config_id = 814, monster_id = 28040101, pos = { x = 2564.7, y = 224.9, z = -1568.0 }, rot = { x = 0.0, y = 1.2, z = 0.0 }, level = 1, drop_tag = "水族" },
	{ config_id = 815, monster_id = 28040101, pos = { x = 2569.6, y = 224.9, z = -1569.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "水族" },
	{ config_id = 972, monster_id = 28040101, pos = { x = 2570.8, y = 224.9, z = -1564.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "水族" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 165, shape = RegionShape.SPHERE, radius = 25, pos = { x = 2578.8, y = 225.6, z = -1571.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_165", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_165", action = "action_EVENT_ENTER_REGION_165" }
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
		monsters = { 813, 814, 815, 972 },
		gadgets = { },
		regions = { 165 },
		triggers = { "ENTER_REGION_165" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_165(context, evt)
	if evt.param1 ~= 165 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_165(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 472, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
