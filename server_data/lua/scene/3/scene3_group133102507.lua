--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 507002, monster_id = 20011401, pos = { x = 1914.4, y = 231.8, z = 788.0 }, rot = { x = 0.0, y = 188.6, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 507003, monster_id = 20011401, pos = { x = 1914.4, y = 231.9, z = 784.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 507004, monster_id = 20011401, pos = { x = 1913.3, y = 231.4, z = 786.5 }, rot = { x = 0.0, y = 78.6, z = 0.0 }, level = 18, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 507001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1913.9, y = 232.1, z = 786.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_507001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_507001", action = "action_EVENT_ENTER_REGION_507001" }
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
		regions = { 507001 },
		triggers = { "ENTER_REGION_507001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_507001(context, evt)
	if evt.param1 ~= 507001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_507001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 507002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 507003, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 507004, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
