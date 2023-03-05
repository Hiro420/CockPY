--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 384001, monster_id = 22010201, pos = { x = 1217.7, y = 200.0, z = -132.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 17, drop_tag = "深渊法师", disableWander = true },
	{ config_id = 384003, monster_id = 20010801, pos = { x = 1220.9, y = 200.0, z = -137.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 384004, monster_id = 20010801, pos = { x = 1218.4, y = 200.0, z = -139.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 384005, monster_id = 20010801, pos = { x = 1216.0, y = 200.0, z = -137.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 384006, monster_id = 20010801, pos = { x = 1218.7, y = 200.0, z = -135.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 384002, shape = RegionShape.SPHERE, radius = 7, pos = { x = 1218.4, y = 200.0, z = -137.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_384002", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_384002", action = "action_EVENT_ENTER_REGION_384002" }
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
		monsters = { 384001 },
		gadgets = { },
		regions = { 384002 },
		triggers = { "ENTER_REGION_384002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_384002(context, evt)
	if evt.param1 ~= 384002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_384002(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 384003, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 384004, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 384005, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 384006, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
