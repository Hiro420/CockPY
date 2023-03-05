--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 605002, monster_id = 20011401, pos = { x = 1735.7, y = 211.7, z = 614.5 }, rot = { x = 0.0, y = 137.2, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 605003, monster_id = 20011401, pos = { x = 1735.8, y = 211.7, z = 612.6 }, rot = { x = 0.0, y = 21.3, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 605004, monster_id = 20011401, pos = { x = 1737.5, y = 211.7, z = 612.3 }, rot = { x = 0.0, y = 349.9, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 605005, monster_id = 20011401, pos = { x = 1737.8, y = 211.7, z = 614.7 }, rot = { x = 0.0, y = 208.1, z = 0.0 }, level = 18, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 605001, shape = RegionShape.SPHERE, radius = 4, pos = { x = 1736.6, y = 211.7, z = 613.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_605001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_605001", action = "action_EVENT_ENTER_REGION_605001" }
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
		regions = { 605001 },
		triggers = { "ENTER_REGION_605001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_605001(context, evt)
	if evt.param1 ~= 605001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_605001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 605002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 605003, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 605004, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 605005, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
