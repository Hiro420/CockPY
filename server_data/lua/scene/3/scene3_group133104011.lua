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
	{ config_id = 29, gadget_id = 70210101, pos = { x = 550.0, y = 217.6, z = 794.3 }, rot = { x = 0.0, y = 267.1, z = 0.0 }, level = 19, drop_tag = "搜刮点解谜破损璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 30, gadget_id = 70210101, pos = { x = 538.3, y = 200.0, z = 789.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "搜刮点解谜破损璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 31, gadget_id = 70211101, pos = { x = 553.2, y = 217.5, z = 800.3 }, rot = { x = 357.8, y = 246.6, z = 359.1 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 32, gadget_id = 70211101, pos = { x = 534.6, y = 216.7, z = 814.6 }, rot = { x = 1.1, y = 180.2, z = 3.2 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 33, gadget_id = 70211101, pos = { x = 546.7, y = 217.6, z = 788.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 34, gadget_id = 70211103, pos = { x = 395.3, y = 233.2, z = 731.8 }, rot = { x = 358.7, y = 359.2, z = 340.4 }, level = 19, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 36, gadget_id = 70211104, pos = { x = 280.4, y = 199.5, z = 586.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "解谜低级璃月", state = GadgetState.ChestFrozen, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 11001, gadget_id = 70210105, pos = { x = 528.0, y = 200.0, z = 800.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 11002, gadget_id = 70210105, pos = { x = 534.2, y = 200.0, z = 803.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 29, 30, 31, 32, 33, 34, 36, 11001, 11002 },
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
