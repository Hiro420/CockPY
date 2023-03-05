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
	{ config_id = 467001, gadget_id = 70350004, pos = { x = 16.7, y = 224.9, z = 761.8 }, rot = { x = 0.0, y = 29.0, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 467002, gadget_id = 70211121, pos = { x = 12.1, y = 224.2, z = 752.8 }, rot = { x = 0.0, y = 30.2, z = 0.0 }, level = 19, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 467003, gadget_id = 70211101, pos = { x = 16.6, y = 224.2, z = 755.0 }, rot = { x = 0.0, y = 340.3, z = 0.0 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 467005, gadget_id = 70220013, pos = { x = 12.1, y = 224.2, z = 756.9 }, rot = { x = 0.0, y = 27.3, z = 0.0 }, level = 24 },
	{ config_id = 467006, gadget_id = 70220014, pos = { x = 12.4, y = 224.2, z = 759.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 467007, gadget_id = 70220014, pos = { x = 19.0, y = 224.2, z = 759.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 }
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
	end_suite = 2,
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
		gadgets = { 467001, 467002, 467003, 467005, 467006, 467007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 467001 },
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
