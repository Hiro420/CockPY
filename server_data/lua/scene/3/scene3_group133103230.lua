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
	{ config_id = 230001, gadget_id = 70211101, pos = { x = 652.7, y = 154.6, z = 1238.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 230002, gadget_id = 70211101, pos = { x = 658.5, y = 155.9, z = 1266.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 230003, gadget_id = 70210063, pos = { x = 718.5, y = 157.3, z = 1258.1 }, rot = { x = 0.0, y = 263.9, z = 0.0 }, level = 24, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 230004, gadget_id = 70210107, pos = { x = 743.4, y = 156.2, z = 1190.6 }, rot = { x = 359.1, y = 129.8, z = 358.3 }, level = 24, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true }
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
		gadgets = { 230001, 230002, 230003, 230004 },
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
