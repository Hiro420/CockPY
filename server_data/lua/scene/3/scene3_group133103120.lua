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
	{ config_id = 120001, gadget_id = 70210101, pos = { x = 537.3, y = 186.6, z = 1054.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 120002, gadget_id = 70210101, pos = { x = 498.8, y = 175.1, z = 1088.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "搜刮点解谜破损璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 120003, gadget_id = 70210101, pos = { x = 511.3, y = 173.1, z = 1124.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "搜刮点解谜破损璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 120004, gadget_id = 70210101, pos = { x = 562.0, y = 182.6, z = 1148.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 120005, gadget_id = 70210101, pos = { x = 569.6, y = 183.0, z = 1170.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 120006, gadget_id = 70210101, pos = { x = 558.3, y = 182.8, z = 1159.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 120007, gadget_id = 70210101, pos = { x = 717.5, y = 185.9, z = 1085.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 120008, gadget_id = 70210101, pos = { x = 703.7, y = 186.1, z = 1079.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "搜刮点解谜遗物璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 120009, gadget_id = 70210101, pos = { x = 648.5, y = 197.1, z = 1257.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "搜刮点解谜果蔬璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 120010, gadget_id = 70900336, pos = { x = 654.1, y = 195.9, z = 1261.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 120011, gadget_id = 70210101, pos = { x = 113.2, y = 227.1, z = 1121.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "搜刮点解谜破损璃月", type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 120001, 120002, 120003, 120004, 120005, 120006, 120007, 120008, 120009, 120010, 120011 },
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
