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
	{ config_id = 84001, gadget_id = 70210101, pos = { x = -26.9, y = 265.8, z = -35.9 }, rot = { x = 0.0, y = 352.7, z = 0.0 }, level = 19, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 84002, gadget_id = 70210101, pos = { x = -31.8, y = 266.5, z = -38.0 }, rot = { x = 0.0, y = 352.7, z = 0.0 }, level = 32, drop_tag = "搜刮点解谜通用璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 84003, gadget_id = 70210101, pos = { x = -28.5, y = 266.8, z = -41.0 }, rot = { x = 0.0, y = 352.7, z = 0.0 }, level = 19, drop_tag = "搜刮点解谜果蔬璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 84004, gadget_id = 70210101, pos = { x = -26.1, y = 266.3, z = -39.8 }, rot = { x = 0.0, y = 352.7, z = 0.0 }, level = 19, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 84005, gadget_id = 70210101, pos = { x = -29.6, y = 266.5, z = -47.1 }, rot = { x = 0.0, y = 352.7, z = 0.0 }, level = 19, drop_tag = "搜刮点解谜通用璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 84006, gadget_id = 70210101, pos = { x = -24.9, y = 266.3, z = -60.2 }, rot = { x = 0.0, y = 352.7, z = 0.0 }, level = 19, drop_tag = "搜刮点解谜通用璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 84007, gadget_id = 70310006, pos = { x = -31.6, y = 265.8, z = -33.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 84008, gadget_id = 70500000, pos = { x = -29.2, y = 266.0, z = -40.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 9037, isOneoff = true }
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
		gadgets = { 84001, 84002, 84003, 84004, 84005, 84006, 84007, 84008 },
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
