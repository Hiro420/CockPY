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
	{ config_id = 571001, gadget_id = 70210107, pos = { x = 738.9, y = 223.0, z = 845.4 }, rot = { x = 352.3, y = 280.7, z = 359.7 }, level = 19, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true },
	{ config_id = 571002, gadget_id = 70210107, pos = { x = 625.8, y = 206.9, z = 852.7 }, rot = { x = 351.8, y = 211.4, z = 7.6 }, level = 19, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true },
	{ config_id = 571003, gadget_id = 70210107, pos = { x = 744.9, y = 221.7, z = 679.9 }, rot = { x = 0.2, y = 232.3, z = 5.6 }, level = 19, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true },
	{ config_id = 571004, gadget_id = 70210107, pos = { x = 645.4, y = 226.1, z = 770.1 }, rot = { x = 331.6, y = 169.0, z = 9.2 }, level = 19, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true },
	{ config_id = 571005, gadget_id = 70210107, pos = { x = 571.9, y = 206.7, z = 964.0 }, rot = { x = 22.3, y = 223.4, z = 353.1 }, level = 19, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true },
	{ config_id = 571006, gadget_id = 70210063, pos = { x = 571.4, y = 205.3, z = 963.2 }, rot = { x = 0.0, y = 248.3, z = 0.0 }, level = 19, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 571007, gadget_id = 70210107, pos = { x = 1014.7, y = 219.3, z = 830.9 }, rot = { x = 352.6, y = 144.4, z = 323.5 }, level = 19, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true },
	{ config_id = 571008, gadget_id = 70210107, pos = { x = 843.7, y = 270.5, z = 854.9 }, rot = { x = 323.9, y = 80.4, z = 350.4 }, level = 19, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true },
	{ config_id = 571009, gadget_id = 70210107, pos = { x = 848.6, y = 270.0, z = 852.4 }, rot = { x = 2.1, y = 30.8, z = 14.6 }, level = 19, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true },
	{ config_id = 571010, gadget_id = 70210107, pos = { x = 845.8, y = 270.9, z = 856.4 }, rot = { x = 350.7, y = 0.2, z = 12.1 }, level = 19, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true },
	{ config_id = 571011, gadget_id = 70210107, pos = { x = 856.1, y = 223.2, z = 696.4 }, rot = { x = 13.1, y = 330.3, z = 15.5 }, level = 19, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true }
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
		gadgets = { 571001, 571002, 571003, 571004, 571005, 571006, 571007, 571008, 571009, 571010, 571011 },
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
