--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 600, monster_id = 20010501, pos = { x = 2750.2, y = 251.5, z = -369.9 }, rot = { x = 0.0, y = 186.9, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 601, monster_id = 20010701, pos = { x = 2750.8, y = 251.5, z = -367.8 }, rot = { x = 0.0, y = 209.3, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 602, monster_id = 20010501, pos = { x = 2748.8, y = 251.0, z = -367.1 }, rot = { x = 0.0, y = 150.9, z = 0.0 }, level = 12, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 274, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2750.6, y = 251.7, z = -369.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_274", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_274", action = "action_EVENT_ENTER_REGION_274" }
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
		regions = { 274 },
		triggers = { "ENTER_REGION_274" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_274(context, evt)
	if evt.param1 ~= 274 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_274(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 601, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 600, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 602, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
