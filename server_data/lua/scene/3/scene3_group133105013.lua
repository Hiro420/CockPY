--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 67, monster_id = 20030101, pos = { x = 503.1, y = 200.9, z = -116.9 }, rot = { x = 0.0, y = 298.3, z = 0.0 }, level = 19, drop_tag = "雷萤" },
	{ config_id = 68, monster_id = 20030101, pos = { x = 499.1, y = 200.9, z = -119.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "雷萤" },
	{ config_id = 69, monster_id = 20030101, pos = { x = 503.0, y = 200.9, z = -114.0 }, rot = { x = 0.0, y = 63.3, z = 0.0 }, level = 19, drop_tag = "雷萤" },
	{ config_id = 70, monster_id = 20030101, pos = { x = 498.1, y = 200.9, z = -111.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "雷萤" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 10, shape = RegionShape.SPHERE, radius = 8.2, pos = { x = 499.2, y = 200.9, z = -113.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_10", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10", action = "action_EVENT_ENTER_REGION_10" }
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
		gadgets = { },
		regions = { 10 },
		triggers = { "ENTER_REGION_10" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_10(context, evt)
	if evt.param1 ~= 10 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 67, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 68, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 69, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end
