--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 411001, gadget_id = 70211101, pos = { x = 1474.2, y = 200.6, z = 756.4 }, rot = { x = 7.1, y = 43.8, z = 4.4 }, level = 1, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 411002, gadget_id = 70210105, pos = { x = 1473.8, y = 199.9, z = 776.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 411003, gadget_id = 70210105, pos = { x = 1379.1, y = 199.9, z = 734.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 411004, gadget_id = 70210105, pos = { x = 1384.3, y = 205.1, z = 629.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 411005, gadget_id = 70210105, pos = { x = 1340.7, y = 199.9, z = 418.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
		gadgets = { 411001, 411002, 411003, 411004, 411005 },
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
