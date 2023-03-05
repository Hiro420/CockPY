--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 288005, monster_id = 20010301, pos = { x = 1619.7, y = 223.4, z = 152.5 }, rot = { x = 359.6, y = 131.7, z = 359.2 }, level = 15, drop_tag = "史莱姆" },
	{ config_id = 288006, monster_id = 20010301, pos = { x = 1621.0, y = 222.9, z = 154.6 }, rot = { x = 359.9, y = 150.8, z = 359.2 }, level = 15, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 288007, shape = RegionShape.SPHERE, radius = 4, pos = { x = 1619.6, y = 222.3, z = 152.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_288007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_288007", action = "action_EVENT_ENTER_REGION_288007" }
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
		regions = { 288007 },
		triggers = { "ENTER_REGION_288007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 288005, 288006 },
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
function condition_EVENT_ENTER_REGION_288007(context, evt)
	if evt.param1 ~= 288007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_288007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102288, 2)
	
	return 0
end
