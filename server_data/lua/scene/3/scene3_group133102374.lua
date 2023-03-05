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
	{ config_id = 374001, gadget_id = 70211001, pos = { x = 1494.6, y = 221.5, z = 534.3 }, rot = { x = 2.8, y = 179.7, z = 357.1 }, level = 1, drop_tag = "战斗低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 374002, gadget_id = 70211101, pos = { x = 1485.4, y = 231.7, z = 535.2 }, rot = { x = 0.0, y = 269.3, z = 0.0 }, level = 18, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 374003, gadget_id = 70310001, pos = { x = 1481.7, y = 220.1, z = 505.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 374004, gadget_id = 70211101, pos = { x = 1429.1, y = 227.9, z = 581.6 }, rot = { x = 24.3, y = 268.8, z = 357.9 }, level = 18, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 374005, gadget_id = 70211101, pos = { x = 1438.1, y = 242.4, z = 584.6 }, rot = { x = 355.9, y = 267.6, z = 6.8 }, level = 1, drop_tag = "解谜低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 374001, 374002, 374003, 374004, 374005 },
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
