--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 364, monster_id = 20030101, pos = { x = 1277.7, y = 206.5, z = 202.5 }, rot = { x = 0.0, y = 332.3, z = 0.0 }, level = 11, drop_tag = "雷萤" },
	{ config_id = 365, monster_id = 20030101, pos = { x = 1278.0, y = 206.7, z = 202.5 }, rot = { x = 0.0, y = 3.4, z = 0.0 }, level = 11, drop_tag = "雷萤" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 206001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1277.7, y = 205.6, z = 202.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_206001", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_206001", action = "action_EVENT_ENTER_REGION_206001" }
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
		regions = { 206001 },
		triggers = { "ENTER_REGION_206001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_206001(context, evt)
	if evt.param1 ~= 206001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_206001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 364, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 365, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
