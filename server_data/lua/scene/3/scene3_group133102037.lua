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
	{ config_id = 165, gadget_id = 70210101, pos = { x = 1769.8, y = 200.9, z = 36.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 222, gadget_id = 70211101, pos = { x = 1616.3, y = 229.8, z = 145.9 }, rot = { x = 0.0, y = 72.7, z = 0.0 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 223, gadget_id = 70211103, pos = { x = 1605.1, y = 232.4, z = 132.6 }, rot = { x = 345.5, y = 1.1, z = 351.2 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 344, gadget_id = 70211103, pos = { x = 1604.6, y = 251.2, z = 172.4 }, rot = { x = 10.4, y = 99.2, z = 10.9 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 769, gadget_id = 70211104, pos = { x = 1689.3, y = 201.0, z = 84.7 }, rot = { x = 5.8, y = 87.8, z = 17.3 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestFrozen, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 37001, gadget_id = 70211101, pos = { x = 1769.8, y = 200.2, z = 39.6 }, rot = { x = 3.6, y = 126.2, z = 358.2 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 37002, gadget_id = 70210101, pos = { x = 1535.3, y = 218.8, z = 266.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "搜刮点解谜矿石璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 37006, gadget_id = 70210101, pos = { x = 1569.0, y = 218.8, z = 258.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 37007, gadget_id = 70210101, pos = { x = 1532.9, y = 218.8, z = 265.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "搜刮点解谜矿石璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 37009, gadget_id = 70211001, pos = { x = 1570.7, y = 211.0, z = 240.3 }, rot = { x = 355.6, y = 123.7, z = 4.1 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 37010, gadget_id = 70210101, pos = { x = 1556.8, y = 218.8, z = 262.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 37011, gadget_id = 70210101, pos = { x = 1445.1, y = 201.0, z = 325.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 37013, gadget_id = 70211001, pos = { x = 1563.1, y = 218.8, z = 265.2 }, rot = { x = 0.0, y = 127.8, z = 0.0 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 165, 222, 223, 344, 769, 37001, 37002, 37006, 37007, 37009, 37010, 37011, 37013 },
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
