--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 31001, monster_id = 20011401, pos = { x = -34.2, y = 200.0, z = -663.4 }, rot = { x = 0.0, y = 37.4, z = 0.0 }, level = 30, drop_tag = "史莱姆" },
	{ config_id = 31002, monster_id = 20011401, pos = { x = -33.3, y = 200.0, z = -665.4 }, rot = { x = 0.0, y = 41.1, z = 0.0 }, level = 30, drop_tag = "史莱姆" },
	{ config_id = 31003, monster_id = 20011401, pos = { x = -36.2, y = 200.0, z = -665.3 }, rot = { x = 0.0, y = 178.5, z = 0.0 }, level = 30, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 31004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -34.8, y = 200.0, z = -665.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_31004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_31004", action = "action_EVENT_ENTER_REGION_31004" }
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
		regions = { 31004 },
		triggers = { "ENTER_REGION_31004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_31004(context, evt)
	if evt.param1 ~= 31004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_31004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 31001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 31002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 31003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
