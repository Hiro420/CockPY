--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 75, monster_id = 20010801, pos = { x = 813.2, y = 355.6, z = 1484.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 76, monster_id = 20010801, pos = { x = 811.1, y = 355.2, z = 1489.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 77, monster_id = 20010901, pos = { x = 810.8, y = 355.6, z = 1486.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 259, gadget_id = 70290008, pos = { x = 810.6, y = 356.0, z = 1483.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 260, gadget_id = 70500000, pos = { x = 810.6, y = 356.0, z = 1483.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3008, owner = 259 },
	{ config_id = 261, gadget_id = 70290008, pos = { x = 812.9, y = 355.1, z = 1488.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 262, gadget_id = 70500000, pos = { x = 812.9, y = 355.1, z = 1488.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3008, owner = 261 }
}

-- 区域
regions = {
	{ config_id = 87, shape = RegionShape.SPHERE, radius = 5, pos = { x = 811.7, y = 355.5, z = 1486.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_87", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_87", action = "action_EVENT_ENTER_REGION_87" }
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
		gadgets = { 259, 260, 261, 262 },
		regions = { 87 },
		triggers = { "ENTER_REGION_87" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 75, 76, 77 },
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
function condition_EVENT_ENTER_REGION_87(context, evt)
	if evt.param1 ~= 87 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_87(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103082, 2)
	
	return 0
end
