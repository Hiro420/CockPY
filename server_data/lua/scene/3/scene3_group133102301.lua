--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 301001, monster_id = 20011401, pos = { x = 1600.9, y = 294.0, z = 375.6 }, rot = { x = 0.0, y = 212.3, z = 0.0 }, level = 23, drop_tag = "史莱姆" },
	{ config_id = 301002, monster_id = 20011401, pos = { x = 1601.8, y = 294.2, z = 371.6 }, rot = { x = 0.0, y = 291.0, z = 0.0 }, level = 23, drop_tag = "史莱姆" },
	{ config_id = 301003, monster_id = 20011401, pos = { x = 1604.6, y = 294.1, z = 374.6 }, rot = { x = 0.0, y = 239.5, z = 0.0 }, level = 23, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 301004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1601.4, y = 293.8, z = 372.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_301004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_301004", action = "action_EVENT_ENTER_REGION_301004" }
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
		regions = { 301004 },
		triggers = { "ENTER_REGION_301004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 301001, 301002, 301003 },
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
function condition_EVENT_ENTER_REGION_301004(context, evt)
	if evt.param1 ~= 301004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_301004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102301, 2)
	
	return 0
end
