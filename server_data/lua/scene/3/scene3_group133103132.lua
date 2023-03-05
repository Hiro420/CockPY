--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 132002, monster_id = 20010501, pos = { x = 705.4, y = 219.1, z = 1328.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 132003, monster_id = 20010501, pos = { x = 702.5, y = 218.0, z = 1326.9 }, rot = { x = 0.0, y = 342.4, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 132004, monster_id = 20010501, pos = { x = 704.2, y = 218.1, z = 1323.6 }, rot = { x = 0.0, y = 252.7, z = 0.0 }, level = 24, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 132001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 706.5, y = 219.0, z = 1325.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_132001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_132001", action = "action_EVENT_ENTER_REGION_132001" }
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
		regions = { 132001 },
		triggers = { "ENTER_REGION_132001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 132002, 132003, 132004 },
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
function condition_EVENT_ENTER_REGION_132001(context, evt)
	if evt.param1 ~= 132001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_132001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103132, 2)
	
	return 0
end
