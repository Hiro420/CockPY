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
	{ config_id = 67001, gadget_id = 70350004, pos = { x = -385.9, y = 291.0, z = 657.5 }, rot = { x = 0.0, y = 91.5, z = 180.0 }, level = 24 },
	{ config_id = 67002, gadget_id = 70350004, pos = { x = -377.4, y = 291.0, z = 653.9 }, rot = { x = 0.0, y = 0.2, z = 180.0 }, level = 24 },
	{ config_id = 67003, gadget_id = 70350004, pos = { x = -369.6, y = 291.0, z = 657.1 }, rot = { x = 0.0, y = 91.5, z = 180.0 }, level = 24 },
	{ config_id = 67004, gadget_id = 70210063, pos = { x = -381.5, y = 285.6, z = 655.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 67005, gadget_id = 70210063, pos = { x = -382.0, y = 285.6, z = 658.7 }, rot = { x = 0.0, y = 90.2, z = 0.0 }, level = 24, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 67006, gadget_id = 70210063, pos = { x = -379.3, y = 285.6, z = 657.1 }, rot = { x = 0.0, y = 68.5, z = 0.0 }, level = 24, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 67007, gadget_id = 70210063, pos = { x = -376.4, y = 285.6, z = 655.8 }, rot = { x = 0.0, y = 298.8, z = 0.0 }, level = 24, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 67008, gadget_id = 70210063, pos = { x = -377.2, y = 285.6, z = 658.8 }, rot = { x = 0.0, y = 209.1, z = 0.0 }, level = 24, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 67001, 67002, 67003, 67004, 67005, 67006, 67007, 67008 },
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
