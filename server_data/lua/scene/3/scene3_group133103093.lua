--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 85, monster_id = 20011201, pos = { x = 707.9, y = 166.6, z = 1107.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 86, monster_id = 20011201, pos = { x = 705.8, y = 165.8, z = 1112.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 87, monster_id = 20011301, pos = { x = 705.5, y = 166.2, z = 1110.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 304, gadget_id = 70290009, pos = { x = 704.3, y = 167.1, z = 1107.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 305, gadget_id = 70500000, pos = { x = 704.3, y = 167.1, z = 1107.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3005, owner = 304 },
	{ config_id = 306, gadget_id = 70290009, pos = { x = 707.9, y = 165.8, z = 1112.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 307, gadget_id = 70500000, pos = { x = 707.9, y = 165.8, z = 1112.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3005, owner = 306 }
}

-- 区域
regions = {
	{ config_id = 113, shape = RegionShape.SPHERE, radius = 5, pos = { x = 706.4, y = 166.1, z = 1110.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_113", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_113", action = "action_EVENT_ENTER_REGION_113" }
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
		gadgets = { 304, 305, 306, 307 },
		regions = { 113 },
		triggers = { "ENTER_REGION_113" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 85, 86, 87 },
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
function condition_EVENT_ENTER_REGION_113(context, evt)
	if evt.param1 ~= 113 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_113(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103093, 2)
	
	return 0
end
