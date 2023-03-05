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
	{ config_id = 414001, gadget_id = 70210101, pos = { x = 1934.5, y = 227.7, z = 667.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "搜刮点解谜果蔬璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 414002, gadget_id = 70210101, pos = { x = 1935.4, y = 227.1, z = 671.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "搜刮点解谜果蔬璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 414003, gadget_id = 70210101, pos = { x = 1842.3, y = 212.0, z = 580.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "搜刮点解谜果蔬璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 414004, gadget_id = 70210101, pos = { x = 1735.4, y = 237.0, z = 683.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "搜刮点解谜果蔬璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 414005, gadget_id = 70210101, pos = { x = 1721.0, y = 242.9, z = 662.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "搜刮点解谜人文璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 414006, gadget_id = 70210101, pos = { x = 1707.0, y = 247.6, z = 623.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "搜刮点解谜人文璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 414007, gadget_id = 70210101, pos = { x = 1704.3, y = 247.3, z = 602.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "搜刮点解谜果蔬璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 414008, gadget_id = 70210101, pos = { x = 1697.0, y = 248.2, z = 601.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "搜刮点解谜果蔬璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 414009, gadget_id = 70210101, pos = { x = 1740.5, y = 256.4, z = 517.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "搜刮点解谜人文璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 414010, gadget_id = 70210101, pos = { x = 1738.8, y = 223.2, z = 870.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "搜刮点解谜人文璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 414011, gadget_id = 70210101, pos = { x = 1551.4, y = 248.0, z = 439.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "搜刮点解谜通用璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 414012, gadget_id = 70210101, pos = { x = 1523.5, y = 251.3, z = 428.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "搜刮点解谜通用璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 414001, 414002, 414003, 414004, 414005, 414006, 414007, 414008, 414009, 414010, 414011, 414012 },
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
