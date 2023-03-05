--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 653001, monster_id = 20010801, pos = { x = 1846.8, y = 205.8, z = 850.5 }, rot = { x = 0.0, y = 282.5, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 653002, monster_id = 20010801, pos = { x = 1848.3, y = 205.6, z = 849.2 }, rot = { x = 0.0, y = 283.1, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 653003, monster_id = 20010801, pos = { x = 1846.5, y = 205.3, z = 849.1 }, rot = { x = 0.0, y = 32.3, z = 0.0 }, level = 18, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 653004, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1847.1, y = 205.8, z = 849.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_653004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_653004", action = "action_EVENT_ENTER_REGION_653004" }
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
		regions = { 653004 },
		triggers = { "ENTER_REGION_653004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_653004(context, evt)
	if evt.param1 ~= 653004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_653004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 653001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 653002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 653003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
