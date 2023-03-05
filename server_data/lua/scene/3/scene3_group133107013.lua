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
	{ config_id = 13001, gadget_id = 70211103, pos = { x = -211.3, y = 278.1, z = 119.2 }, rot = { x = 343.1, y = 356.9, z = 17.6 }, level = 18, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 13002, gadget_id = 70211103, pos = { x = -125.4, y = 360.4, z = 249.6 }, rot = { x = 0.0, y = 68.6, z = 8.2 }, level = 19, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 13003, gadget_id = 70211103, pos = { x = -91.3, y = 398.8, z = 328.8 }, rot = { x = 357.2, y = 357.8, z = 14.8 }, level = 18, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 13004, gadget_id = 70211103, pos = { x = -214.1, y = 275.4, z = 211.6 }, rot = { x = 2.0, y = 8.4, z = 22.6 }, level = 18, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 13005, gadget_id = 70211103, pos = { x = -223.9, y = 235.5, z = 169.6 }, rot = { x = 351.5, y = 4.6, z = 16.9 }, level = 18, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 13001, 13002, 13003, 13004, 13005 },
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
