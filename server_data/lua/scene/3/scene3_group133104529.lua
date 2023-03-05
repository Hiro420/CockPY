--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 529001, monster_id = 20011401, pos = { x = 29.1, y = 281.1, z = 218.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 529002, monster_id = 20011401, pos = { x = 27.7, y = 281.0, z = 219.1 }, rot = { x = 0.0, y = 35.8, z = 0.0 }, level = 19, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 529003, shape = RegionShape.SPHERE, radius = 4, pos = { x = 28.9, y = 282.0, z = 221.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_529003", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_529003", action = "action_EVENT_ENTER_REGION_529003" }
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
		regions = { 529003 },
		triggers = { "ENTER_REGION_529003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_529003(context, evt)
	if evt.param1 ~= 529003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_529003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 529001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 529002, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
