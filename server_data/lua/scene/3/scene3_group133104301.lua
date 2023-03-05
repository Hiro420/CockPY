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
	{ config_id = 301001, gadget_id = 70210101, pos = { x = 649.6, y = 217.5, z = 690.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "搜刮点解谜矿石璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 301002, gadget_id = 70210101, pos = { x = 667.0, y = 217.5, z = 693.7 }, rot = { x = 333.2, y = 353.4, z = 27.4 }, level = 19, drop_tag = "搜刮点解谜通用璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 301003, gadget_id = 70210101, pos = { x = 659.6, y = 224.2, z = 727.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 301004, gadget_id = 70210101, pos = { x = 667.9, y = 232.1, z = 752.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "搜刮点解谜破损璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 301005, gadget_id = 70210101, pos = { x = 656.8, y = 215.0, z = 682.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "搜刮点解谜破损璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 301006, gadget_id = 70210101, pos = { x = 669.3, y = 212.7, z = 669.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 301007, gadget_id = 70210101, pos = { x = 653.0, y = 220.3, z = 709.1 }, rot = { x = 348.0, y = 355.8, z = 350.3 }, level = 19, drop_tag = "搜刮点解谜遗物璃月", type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 301001, 301002, 301003, 301004, 301005, 301006, 301007 },
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
