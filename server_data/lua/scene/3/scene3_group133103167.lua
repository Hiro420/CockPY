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
	{ config_id = 167001, gadget_id = 70210105, pos = { x = 685.4, y = 230.7, z = 1664.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 167002, gadget_id = 70210105, pos = { x = 690.6, y = 230.7, z = 1658.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 167003, gadget_id = 70210105, pos = { x = 696.5, y = 230.7, z = 1662.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 167004, gadget_id = 70210105, pos = { x = 809.4, y = 230.7, z = 1702.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 167005, gadget_id = 70210105, pos = { x = 813.7, y = 230.7, z = 1716.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 167006, gadget_id = 70210105, pos = { x = 869.0, y = 230.7, z = 1717.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 167007, gadget_id = 70210105, pos = { x = 879.2, y = 230.7, z = 1716.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 167008, gadget_id = 70210105, pos = { x = 905.4, y = 230.7, z = 1768.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 167009, gadget_id = 70210105, pos = { x = 844.8, y = 230.7, z = 1788.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 167010, gadget_id = 70210105, pos = { x = 947.9, y = 230.7, z = 1716.4 }, rot = { x = 0.0, y = 115.8, z = 0.0 }, level = 24, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 167011, gadget_id = 70210105, pos = { x = 987.3, y = 230.7, z = 1720.6 }, rot = { x = 0.0, y = 84.1, z = 0.0 }, level = 24, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 167012, gadget_id = 70210105, pos = { x = 898.9, y = 230.7, z = 1768.2 }, rot = { x = 0.0, y = 100.2, z = 0.0 }, level = 24, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 167013, gadget_id = 70210105, pos = { x = 817.5, y = 230.7, z = 1707.4 }, rot = { x = 0.0, y = 293.7, z = 0.0 }, level = 24, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 167014, gadget_id = 70210105, pos = { x = 751.8, y = 230.7, z = 1680.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 167015, gadget_id = 70210105, pos = { x = 746.8, y = 230.7, z = 1682.9 }, rot = { x = 0.0, y = 129.2, z = 0.0 }, level = 24, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 167001, 167002, 167003, 167004, 167005, 167006, 167007, 167008, 167009, 167010, 167011, 167012, 167013, 167014, 167015 },
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
