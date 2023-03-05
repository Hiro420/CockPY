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
	{ config_id = 316002, gadget_id = 70210063, pos = { x = 767.9, y = 231.5, z = 778.2 }, rot = { x = 6.6, y = 73.4, z = 19.7 }, level = 19, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 316003, gadget_id = 70211101, pos = { x = 725.6, y = 244.7, z = 744.0 }, rot = { x = 7.3, y = 157.1, z = 354.3 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 316004, gadget_id = 70211101, pos = { x = 771.4, y = 200.2, z = 527.7 }, rot = { x = 0.3, y = 191.2, z = 358.2 }, level = 19, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 316005, gadget_id = 70210063, pos = { x = 853.9, y = 211.1, z = 573.6 }, rot = { x = 12.6, y = 258.6, z = 0.1 }, level = 19, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 316002, 316003, 316004, 316005 },
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
