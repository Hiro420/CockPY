--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 557001, monster_id = 20011301, pos = { x = 589.1, y = 205.1, z = 907.9 }, rot = { x = 0.0, y = 90.1, z = 0.0 }, level = 21, drop_tag = "史莱姆" },
	{ config_id = 557002, monster_id = 20010501, pos = { x = 591.4, y = 204.8, z = 906.0 }, rot = { x = 0.0, y = 64.7, z = 0.0 }, level = 21, drop_tag = "史莱姆" },
	{ config_id = 557003, monster_id = 20010501, pos = { x = 590.9, y = 205.0, z = 909.6 }, rot = { x = 0.0, y = 107.4, z = 0.0 }, level = 21, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 557004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 590.6, y = 204.9, z = 907.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_557004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_557004", action = "action_EVENT_ENTER_REGION_557004" }
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
		regions = { 557004 },
		triggers = { "ENTER_REGION_557004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_557004(context, evt)
	if evt.param1 ~= 557004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_557004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 557001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 557002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 557003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
