--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 110001, monster_id = 20030201, pos = { x = 1395.3, y = 228.6, z = 1248.5 }, rot = { x = 0.0, y = 187.7, z = 0.0 }, level = 22, drop_tag = "雷萤" },
	{ config_id = 110002, monster_id = 20030201, pos = { x = 1395.7, y = 228.8, z = 1244.3 }, rot = { x = 0.0, y = 220.1, z = 0.0 }, level = 22, drop_tag = "雷萤" },
	{ config_id = 110003, monster_id = 20030201, pos = { x = 1392.4, y = 228.3, z = 1245.3 }, rot = { x = 0.0, y = 211.9, z = 0.0 }, level = 22, drop_tag = "雷萤" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 110004, shape = RegionShape.SPHERE, radius = 8, pos = { x = 1393.9, y = 227.3, z = 1245.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_110004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_110004", action = "action_EVENT_ENTER_REGION_110004" }
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
		regions = { 110004 },
		triggers = { "ENTER_REGION_110004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_110004(context, evt)
	if evt.param1 ~= 110004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_110004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 110001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 110002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 110003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
