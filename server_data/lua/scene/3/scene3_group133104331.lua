--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 331002, monster_id = 20011201, pos = { x = 418.7, y = 200.1, z = 190.8 }, rot = { x = 353.0, y = 0.8, z = 347.7 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 331003, monster_id = 20011201, pos = { x = 420.7, y = 199.7, z = 192.4 }, rot = { x = 357.3, y = 67.5, z = 350.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 331004, monster_id = 20011201, pos = { x = 417.9, y = 200.6, z = 193.1 }, rot = { x = 13.1, y = 146.9, z = 7.1 }, level = 19, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 331001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 419.3, y = 200.3, z = 192.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_331001", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_331001", action = "action_EVENT_ENTER_REGION_331001" }
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
		regions = { 331001 },
		triggers = { "ENTER_REGION_331001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_331001(context, evt)
	if evt.param1 ~= 331001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_331001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 331002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 331003, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 331004, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
