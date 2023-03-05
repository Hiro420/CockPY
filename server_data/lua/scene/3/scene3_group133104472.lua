--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 472001, monster_id = 20010501, pos = { x = 250.1, y = 211.8, z = 913.9 }, rot = { x = 0.4, y = 358.1, z = 10.6 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 472002, monster_id = 20010501, pos = { x = 246.7, y = 210.8, z = 910.9 }, rot = { x = 12.1, y = 285.6, z = 12.2 }, level = 19, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 472003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 248.1, y = 211.8, z = 912.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_472003", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_472003", action = "action_EVENT_ENTER_REGION_472003" }
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
		regions = { 472003 },
		triggers = { "ENTER_REGION_472003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_472003(context, evt)
	if evt.param1 ~= 472003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_472003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 472001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 472002, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
