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
	{ config_id = 906001, gadget_id = 70210102, pos = { x = 909.7, y = 212.8, z = 306.7 }, rot = { x = 0.0, y = 31.6, z = 0.0 }, level = 16, chest_drop_id = 1000210, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 906002, gadget_id = 70210102, pos = { x = 903.5, y = 214.9, z = 311.1 }, rot = { x = 0.0, y = 31.6, z = 0.0 }, level = 16, chest_drop_id = 1000210, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 906003, gadget_id = 70210102, pos = { x = 913.1, y = 212.8, z = 310.0 }, rot = { x = 0.0, y = 31.6, z = 0.0 }, level = 16, chest_drop_id = 1000210, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 906004, gadget_id = 70210102, pos = { x = 915.3, y = 212.8, z = 312.5 }, rot = { x = 0.0, y = 31.6, z = 0.0 }, level = 16, chest_drop_id = 1000210, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 906005, gadget_id = 70210102, pos = { x = 905.3, y = 212.8, z = 309.7 }, rot = { x = 0.0, y = 31.6, z = 0.0 }, level = 16, chest_drop_id = 1000210, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 906006, gadget_id = 70220017, pos = { x = 916.7, y = 212.8, z = 313.4 }, rot = { x = 0.0, y = 222.6, z = 0.0 }, level = 16 },
	{ config_id = 906007, gadget_id = 70220017, pos = { x = 906.1, y = 212.8, z = 308.0 }, rot = { x = 0.0, y = 314.0, z = 0.0 }, level = 16 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 906001, 906002, 906003, 906004, 906005, 906006, 906007 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================
