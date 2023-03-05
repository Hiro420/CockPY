--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 95, monster_id = 20011201, pos = { x = 817.4, y = 324.3, z = 1535.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 96, monster_id = 20011201, pos = { x = 815.2, y = 322.5, z = 1540.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 334, gadget_id = 70290009, pos = { x = 813.7, y = 324.3, z = 1535.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 335, gadget_id = 70500000, pos = { x = 813.7, y = 324.3, z = 1535.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3005, owner = 334 },
	{ config_id = 336, gadget_id = 70290009, pos = { x = 817.3, y = 322.5, z = 1539.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 337, gadget_id = 70500000, pos = { x = 817.3, y = 322.5, z = 1539.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3005, owner = 336 }
}

-- 区域
regions = {
	{ config_id = 132, shape = RegionShape.SPHERE, radius = 5, pos = { x = 815.8, y = 323.1, z = 1537.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_132", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_132", action = "action_EVENT_ENTER_REGION_132" }
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
		gadgets = { 334, 335, 336, 337 },
		regions = { 132 },
		triggers = { "ENTER_REGION_132" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 95, 96 },
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
function condition_EVENT_ENTER_REGION_132(context, evt)
	if evt.param1 ~= 132 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_132(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103081, 2)
	
	return 0
end
