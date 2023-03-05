--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 302001, monster_id = 20030101, pos = { x = 1648.3, y = 302.7, z = 392.3 }, rot = { x = 0.0, y = 202.6, z = 0.0 }, level = 19, drop_tag = "雷萤" },
	{ config_id = 302002, monster_id = 20030101, pos = { x = 1646.3, y = 302.2, z = 388.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "雷萤" },
	{ config_id = 302003, monster_id = 20030101, pos = { x = 1653.0, y = 303.5, z = 392.0 }, rot = { x = 0.0, y = 264.4, z = 0.0 }, level = 19, drop_tag = "雷萤" },
	{ config_id = 302004, monster_id = 20030101, pos = { x = 1650.8, y = 303.3, z = 389.2 }, rot = { x = 0.0, y = 246.8, z = 0.0 }, level = 19, drop_tag = "雷萤" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 302005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1646.1, y = 301.6, z = 388.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_302005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_302005", action = "action_EVENT_ENTER_REGION_302005" }
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
		regions = { 302005 },
		triggers = { "ENTER_REGION_302005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 302001, 302002, 302003, 302004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_302005(context, evt)
	if evt.param1 ~= 302005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_302005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102302, 2)
	
	return 0
end
