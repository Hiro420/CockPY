--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 165001, monster_id = 20011401, pos = { x = 1601.1, y = 201.3, z = 1082.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 23, drop_tag = "史莱姆" },
	{ config_id = 165002, monster_id = 20011101, pos = { x = 1603.6, y = 200.5, z = 1084.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 23, drop_tag = "史莱姆" },
	{ config_id = 165003, monster_id = 20010201, pos = { x = 1598.9, y = 200.5, z = 1084.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 23, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 165004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1600.5, y = 201.1, z = 1084.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_165004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_165004", action = "action_EVENT_ENTER_REGION_165004" }
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
		regions = { 165004 },
		triggers = { "ENTER_REGION_165004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_165004(context, evt)
	if evt.param1 ~= 165004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_165004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 165001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 165002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 165003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
