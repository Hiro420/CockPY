--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 289001, monster_id = 25010201, pos = { x = 817.9, y = 252.3, z = 1280.5 }, rot = { x = 0.0, y = 337.7, z = 0.0 }, level = 24, drop_tag = "盗宝团" },
	{ config_id = 289002, monster_id = 25010201, pos = { x = 819.7, y = 252.4, z = 1279.9 }, rot = { x = 0.0, y = 337.7, z = 0.0 }, level = 24, drop_tag = "盗宝团" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 289004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 818.7, y = 252.6, z = 1285.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_289004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_289004", action = "action_EVENT_ENTER_REGION_289004" }
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
		regions = { 289004 },
		triggers = { "ENTER_REGION_289004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_289004(context, evt)
	if evt.param1 ~= 289004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_289004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 289001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 289002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 289003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
