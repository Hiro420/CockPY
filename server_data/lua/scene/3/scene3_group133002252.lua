--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 828, monster_id = 20010301, pos = { x = 1967.1, y = 238.3, z = -386.0 }, rot = { x = 0.0, y = 197.8, z = 0.0 }, level = 7, drop_tag = "史莱姆" },
	{ config_id = 829, monster_id = 20010301, pos = { x = 1970.4, y = 237.8, z = -386.9 }, rot = { x = 0.0, y = 228.5, z = 0.0 }, level = 7, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 295, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1967.9, y = 237.8, z = -388.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_295", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_295", action = "action_EVENT_ENTER_REGION_295" }
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
		regions = { 295 },
		triggers = { "ENTER_REGION_295" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_295(context, evt)
	if evt.param1 ~= 295 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_295(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 828, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 829, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
