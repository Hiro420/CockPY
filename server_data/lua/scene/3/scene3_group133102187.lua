--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 341, monster_id = 20010501, pos = { x = 1558.0, y = 202.2, z = 311.2 }, rot = { x = 0.0, y = 128.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 342, monster_id = 20010501, pos = { x = 1560.5, y = 202.2, z = 307.0 }, rot = { x = 0.0, y = 292.4, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 343, monster_id = 20010701, pos = { x = 1561.6, y = 202.5, z = 310.8 }, rot = { x = 0.0, y = 220.4, z = 0.0 }, level = 18, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 678, gadget_id = 70290010, pos = { x = 1566.8, y = 203.3, z = 319.8 }, rot = { x = 351.7, y = 16.3, z = 350.3 }, level = 16 },
	{ config_id = 679, gadget_id = 70500000, pos = { x = 1566.8, y = 203.3, z = 319.8 }, rot = { x = 351.7, y = 16.3, z = 350.3 }, level = 16, point_type = 3006, owner = 678 }
}

-- 区域
regions = {
	{ config_id = 374, shape = RegionShape.SPHERE, radius = 7, pos = { x = 1561.4, y = 202.7, z = 309.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_374", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_374", action = "action_EVENT_ENTER_REGION_374" }
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
		gadgets = { 678, 679 },
		regions = { 374 },
		triggers = { "ENTER_REGION_374" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_374(context, evt)
	if evt.param1 ~= 374 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_374(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 343, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 341, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 342, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
