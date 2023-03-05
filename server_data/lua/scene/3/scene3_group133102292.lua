--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 292003, monster_id = 28010203, pos = { x = 1419.6, y = 205.2, z = 295.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "采集动物" },
	{ config_id = 292004, monster_id = 28010202, pos = { x = 1418.3, y = 205.2, z = 295.6 }, rot = { x = 0.0, y = 122.9, z = 0.0 }, level = 16, drop_tag = "采集动物" },
	{ config_id = 292005, monster_id = 20030101, pos = { x = 1396.0, y = 201.9, z = 286.5 }, rot = { x = 0.0, y = 115.2, z = 0.0 }, level = 16, drop_tag = "雷萤" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 292001, shape = RegionShape.SPHERE, radius = 1, pos = { x = 1425.5, y = 206.4, z = 295.0 } },
	{ config_id = 292002, shape = RegionShape.SPHERE, radius = 1, pos = { x = 1409.3, y = 206.4, z = 304.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_292001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_292001", action = "action_EVENT_ENTER_REGION_292001" },
	{ name = "ENTER_REGION_292002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_292002", action = "action_EVENT_ENTER_REGION_292002" }
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
		regions = { 292001, 292002 },
		triggers = { "ENTER_REGION_292001", "ENTER_REGION_292002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 292003, 292004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 292005 },
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
function condition_EVENT_ENTER_REGION_292001(context, evt)
	if evt.param1 ~= 292001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_292001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102292, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_292002(context, evt)
	if evt.param1 ~= 292002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_292002(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102292, 3)
	
	return 0
end
