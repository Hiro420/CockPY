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
	{ config_id = 22001, gadget_id = 70211101, pos = { x = -122.0, y = 200.0, z = -415.2 }, rot = { x = 357.0, y = 3.5, z = 355.4 }, level = 32, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 22002, gadget_id = 70211101, pos = { x = -111.6, y = 199.2, z = -487.1 }, rot = { x = 349.5, y = 253.5, z = 338.8 }, level = 32, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 22003, gadget_id = 70211104, pos = { x = -69.6, y = 199.5, z = -75.1 }, rot = { x = 0.0, y = 187.6, z = 0.0 }, level = 19, drop_tag = "解谜低级璃月", state = GadgetState.ChestFrozen, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 22004, gadget_id = 70210063, pos = { x = -130.7, y = 200.1, z = -681.8 }, rot = { x = 354.0, y = 252.7, z = 1.8 }, level = 32, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 22005, gadget_id = 70211101, pos = { x = -111.9, y = 220.3, z = -908.2 }, rot = { x = 0.0, y = 187.0, z = 0.0 }, level = 32, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 22006, gadget_id = 70211101, pos = { x = -312.8, y = 231.9, z = -610.3 }, rot = { x = 4.1, y = 84.6, z = 356.3 }, level = 32, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 22007, gadget_id = 70211101, pos = { x = -322.3, y = 223.1, z = -740.9 }, rot = { x = 357.6, y = 243.1, z = 4.9 }, level = 32, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 22008, gadget_id = 70210063, pos = { x = -241.4, y = 251.8, z = -932.3 }, rot = { x = 4.5, y = 24.1, z = 350.5 }, level = 32, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 22009, gadget_id = 70211101, pos = { x = -165.6, y = 241.0, z = -96.0 }, rot = { x = 0.0, y = 187.6, z = 0.0 }, level = 18, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 22010, gadget_id = 70211103, pos = { x = -238.8, y = 253.3, z = -43.5 }, rot = { x = 351.9, y = 83.4, z = 355.6 }, level = 32, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 22011, gadget_id = 70211101, pos = { x = -95.4, y = 214.6, z = -189.5 }, rot = { x = 339.6, y = 60.3, z = 13.6 }, level = 32, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 22012, gadget_id = 70211101, pos = { x = -84.0, y = 230.8, z = -128.4 }, rot = { x = 358.4, y = 116.4, z = 4.7 }, level = 32, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 22013, gadget_id = 70211111, pos = { x = -296.7, y = 212.4, z = -934.4 }, rot = { x = 6.4, y = 188.3, z = 11.6 }, level = 32, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 22001, 22002, 22003, 22004, 22005, 22006, 22007, 22008, 22009, 22010, 22011, 22012, 22013 },
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
