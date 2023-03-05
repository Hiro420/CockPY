--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 169001, monster_id = 20010501, pos = { x = 1418.8, y = 230.1, z = 1366.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 23, drop_tag = "史莱姆" },
	{ config_id = 169002, monster_id = 20010501, pos = { x = 1420.3, y = 230.1, z = 1365.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 23, drop_tag = "史莱姆" },
	{ config_id = 169003, monster_id = 20010601, pos = { x = 1417.3, y = 230.0, z = 1365.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 23, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 169004, shape = RegionShape.SPHERE, radius = 7, pos = { x = 1418.8, y = 230.0, z = 1365.2 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_169004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_169004", action = "action_EVENT_ENTER_REGION_169004" }
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
		regions = { 169004 },
		triggers = { "ENTER_REGION_169004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_169004(context, evt)
	if evt.param1 ~= 169004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_169004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 169001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 169002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 169003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
