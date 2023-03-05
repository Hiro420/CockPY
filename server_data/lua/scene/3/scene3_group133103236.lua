--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 236001, monster_id = 20011401, pos = { x = 556.8, y = 203.1, z = 963.0 }, rot = { x = 11.2, y = 1.2, z = 12.3 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 236002, monster_id = 20011401, pos = { x = 558.8, y = 203.1, z = 963.8 }, rot = { x = 11.2, y = 1.2, z = 12.3 }, level = 19, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 236004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 557.5, y = 203.4, z = 961.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_236004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_236004", action = "action_EVENT_ENTER_REGION_236004" }
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
		regions = { 236004 },
		triggers = { "ENTER_REGION_236004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_236004(context, evt)
	if evt.param1 ~= 236004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_236004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 236001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 236002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 236003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
