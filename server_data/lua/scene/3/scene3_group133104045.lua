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
	{ config_id = 76, gadget_id = 70211103, pos = { x = 962.2, y = 200.6, z = 309.7 }, rot = { x = 7.9, y = 359.5, z = 348.6 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 78, gadget_id = 70211103, pos = { x = 888.3, y = 227.3, z = 356.1 }, rot = { x = 6.2, y = 359.8, z = 356.7 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 79, gadget_id = 70211101, pos = { x = 878.8, y = 248.3, z = 344.4 }, rot = { x = 0.0, y = 89.9, z = 0.0 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 81, gadget_id = 70211101, pos = { x = 896.9, y = 267.1, z = 351.1 }, rot = { x = 347.5, y = 89.6, z = 3.4 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 82, gadget_id = 70210101, pos = { x = 955.8, y = 208.3, z = 349.3 }, rot = { x = 0.0, y = 200.1, z = 0.0 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 178, gadget_id = 70211101, pos = { x = 919.2, y = 200.9, z = 357.6 }, rot = { x = 0.0, y = 90.3, z = 0.0 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 179, gadget_id = 70211101, pos = { x = 954.8, y = 200.5, z = 354.1 }, rot = { x = 15.8, y = 70.8, z = 5.5 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 180, gadget_id = 70210101, pos = { x = 938.2, y = 208.3, z = 349.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 310, gadget_id = 70210101, pos = { x = 950.9, y = 202.4, z = 384.9 }, rot = { x = 0.0, y = 139.8, z = 0.0 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 45001, gadget_id = 70211101, pos = { x = 895.8, y = 276.3, z = 341.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 45002, gadget_id = 70211011, pos = { x = 893.8, y = 238.0, z = 343.1 }, rot = { x = 0.0, y = 136.5, z = 0.0 }, level = 16, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 45003, gadget_id = 70220020, pos = { x = 894.6, y = 238.0, z = 341.5 }, rot = { x = 0.0, y = 227.8, z = 0.0 }, level = 16 },
	{ config_id = 45004, gadget_id = 70220020, pos = { x = 896.3, y = 238.0, z = 342.8 }, rot = { x = 0.0, y = 76.4, z = 0.0 }, level = 16 },
	{ config_id = 45005, gadget_id = 70211101, pos = { x = 884.6, y = 223.1, z = 380.5 }, rot = { x = 15.4, y = 312.1, z = 359.7 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 76, 78, 79, 81, 82, 178, 179, 180, 310, 45001, 45002, 45003, 45004, 45005 },
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
