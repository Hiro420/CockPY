--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15001, monster_id = 20011201, pos = { x = -266.6, y = 237.4, z = 82.8 }, rot = { x = 0.0, y = 255.7, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 15002, monster_id = 20011201, pos = { x = -265.1, y = 239.0, z = 77.9 }, rot = { x = 0.0, y = 31.8, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 15003, monster_id = 20011201, pos = { x = -269.7, y = 237.1, z = 78.4 }, rot = { x = 0.0, y = 87.5, z = 0.0 }, level = 18, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 15004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -267.2, y = 237.9, z = 79.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_15004", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_15004", action = "action_EVENT_ENTER_REGION_15004" }
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
		regions = { 15004 },
		triggers = { "ENTER_REGION_15004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_15004(context, evt)
	if evt.param1 ~= 15004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 15001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 15002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 15003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
