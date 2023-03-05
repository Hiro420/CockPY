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
	{ config_id = 380001, gadget_id = 70211001, pos = { x = 1514.7, y = 227.2, z = 659.5 }, rot = { x = 0.0, y = 270.5, z = 0.0 }, level = 18, drop_tag = "战斗低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 380002, gadget_id = 70211001, pos = { x = 1454.0, y = 218.1, z = 626.7 }, rot = { x = 0.0, y = 269.9, z = 0.0 }, level = 1, drop_tag = "战斗低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 380003, gadget_id = 70211001, pos = { x = 1726.9, y = 242.1, z = 662.6 }, rot = { x = 0.0, y = 119.4, z = 0.0 }, level = 1, drop_tag = "战斗低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 380004, gadget_id = 70211001, pos = { x = 1717.1, y = 247.4, z = 575.5 }, rot = { x = 0.0, y = 61.3, z = 0.0 }, level = 18, drop_tag = "战斗低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 380005, gadget_id = 70211001, pos = { x = 1699.1, y = 247.7, z = 594.3 }, rot = { x = 0.0, y = 248.8, z = 0.0 }, level = 18, drop_tag = "战斗低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 380006, gadget_id = 70211001, pos = { x = 1728.2, y = 237.5, z = 692.6 }, rot = { x = 0.0, y = 215.1, z = 0.0 }, level = 18, drop_tag = "战斗低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 380001, 380002, 380003, 380004, 380005, 380006 },
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
