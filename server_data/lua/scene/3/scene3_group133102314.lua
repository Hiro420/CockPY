--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 314006, monster_id = 20010501, pos = { x = 1784.1, y = 200.4, z = 124.9 }, rot = { x = 0.0, y = 242.7, z = 0.0 }, level = 15, drop_tag = "史莱姆" },
	{ config_id = 314007, monster_id = 20010501, pos = { x = 1784.5, y = 200.4, z = 122.5 }, rot = { x = 0.0, y = 281.6, z = 0.0 }, level = 15, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 314005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1785.4, y = 200.5, z = 123.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_314005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_314005", action = "action_EVENT_ENTER_REGION_314005" }
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
		regions = { 314005 },
		triggers = { "ENTER_REGION_314005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 314006, 314007 },
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
function condition_EVENT_ENTER_REGION_314005(context, evt)
	if evt.param1 ~= 314005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_314005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102314, 2)
	
	return 0
end
