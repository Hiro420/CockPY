--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 76, monster_id = 20011401, pos = { x = 1797.4, y = 247.2, z = 362.1 }, rot = { x = 0.0, y = 262.1, z = 0.0 }, level = 20, drop_tag = "史莱姆" },
	{ config_id = 77, monster_id = 20011401, pos = { x = 1794.1, y = 247.0, z = 363.5 }, rot = { x = 0.0, y = 121.9, z = 0.0 }, level = 20, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 115, shape = RegionShape.SPHERE, radius = 31, pos = { x = 1796.7, y = 247.1, z = 363.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_115", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_115", action = "action_EVENT_ENTER_REGION_115" }
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
		regions = { 115 },
		triggers = { "ENTER_REGION_115" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_115(context, evt)
	if evt.param1 ~= 115 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_115(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 76, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 77, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
