--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 556, monster_id = 21010201, pos = { x = 2265.0, y = 259.7, z = -1505.7 }, rot = { x = 0.0, y = 322.3, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 557, monster_id = 21010901, pos = { x = 2262.3, y = 259.6, z = -1505.1 }, rot = { x = 0.0, y = 341.0, z = 0.0 }, level = 15, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 607, monster_id = 21010201, pos = { x = 2264.7, y = 259.0, z = -1503.4 }, rot = { x = 0.0, y = 249.3, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 712, monster_id = 20010501, pos = { x = 2264.4, y = 258.8, z = -1502.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "史莱姆" },
	{ config_id = 713, monster_id = 20010501, pos = { x = 2269.8, y = 259.2, z = -1503.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "史莱姆" },
	{ config_id = 714, monster_id = 20010501, pos = { x = 2263.9, y = 260.0, z = -1506.5 }, rot = { x = 0.0, y = 10.8, z = 0.0 }, level = 10, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 148, shape = RegionShape.SPHERE, radius = 10.2, pos = { x = 2269.3, y = 259.2, z = -1503.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_148", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_148", action = "action_EVENT_ENTER_REGION_148" }
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
	suite = 0,
	end_suite = 0,
	rand_suite = true
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
		monsters = { 556, 557, 607 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { 148 },
		triggers = { "ENTER_REGION_148" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_148(context, evt)
	if evt.param1 ~= 148 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_148(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 712, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 713, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 714, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
