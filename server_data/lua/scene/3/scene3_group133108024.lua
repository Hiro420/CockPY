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
	{ config_id = 24001, gadget_id = 70210107, pos = { x = -189.8, y = 205.0, z = -456.6 }, rot = { x = 324.7, y = 273.0, z = 356.4 }, level = 32, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true },
	{ config_id = 24002, gadget_id = 70210107, pos = { x = -103.5, y = 210.6, z = -893.9 }, rot = { x = 358.5, y = 80.4, z = 345.8 }, level = 32, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true },
	{ config_id = 24003, gadget_id = 70210107, pos = { x = -332.7, y = 201.1, z = -890.7 }, rot = { x = 284.5, y = 117.0, z = 328.4 }, level = 32, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true },
	{ config_id = 24004, gadget_id = 70210107, pos = { x = -314.3, y = 201.7, z = -590.1 }, rot = { x = 335.3, y = 24.6, z = 356.0 }, level = 32, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true },
	{ config_id = 24005, gadget_id = 70210107, pos = { x = -290.0, y = 253.1, z = -974.9 }, rot = { x = 342.2, y = 218.6, z = 180.9 }, level = 32, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true },
	{ config_id = 24006, gadget_id = 70210107, pos = { x = -260.9, y = 207.0, z = -1012.4 }, rot = { x = 0.9, y = 53.5, z = 5.3 }, level = 32, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true },
	{ config_id = 24007, gadget_id = 70210107, pos = { x = -401.8, y = 217.4, z = -709.8 }, rot = { x = 7.3, y = 85.5, z = 6.4 }, level = 32, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true },
	{ config_id = 24008, gadget_id = 70210107, pos = { x = -286.2, y = 237.8, z = -966.3 }, rot = { x = 2.3, y = 64.6, z = 1.1 }, level = 32, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true },
	{ config_id = 24009, gadget_id = 70210107, pos = { x = -221.8, y = 302.9, z = -1016.0 }, rot = { x = 331.6, y = 279.2, z = 345.3 }, level = 32, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true },
	{ config_id = 24010, gadget_id = 70210107, pos = { x = -107.4, y = 225.6, z = -218.4 }, rot = { x = 342.7, y = 178.8, z = 0.8 }, level = 32, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true }
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
		gadgets = { 24001, 24002, 24003, 24004, 24005, 24006, 24007, 24008, 24009, 24010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
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
