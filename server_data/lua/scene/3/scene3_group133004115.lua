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
	{ config_id = 434, gadget_id = 70211101, pos = { x = 2317.5, y = 307.8, z = -202.3 }, rot = { x = 0.0, y = 96.5, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 435, gadget_id = 70211101, pos = { x = 2363.4, y = 274.2, z = -390.9 }, rot = { x = 0.0, y = 182.5, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 436, gadget_id = 70211101, pos = { x = 2135.2, y = 242.6, z = -427.7 }, rot = { x = 344.4, y = 320.8, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 437, gadget_id = 70211101, pos = { x = 2224.7, y = 255.5, z = -398.4 }, rot = { x = 0.0, y = 358.0, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 448, gadget_id = 70211101, pos = { x = 2102.2, y = 228.2, z = -493.8 }, rot = { x = 356.6, y = 177.0, z = 346.3 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 458, gadget_id = 70211101, pos = { x = 2341.9, y = 253.2, z = -464.3 }, rot = { x = 6.9, y = 215.1, z = 351.4 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 497, gadget_id = 70211101, pos = { x = 2265.9, y = 279.1, z = -292.1 }, rot = { x = 0.0, y = 177.5, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 564, gadget_id = 70500000, pos = { x = 2197.0, y = 255.8, z = -418.0 }, rot = { x = 0.0, y = 284.0, z = 0.0 }, level = 15, point_type = 4001001, isOneoff = true },
	{ config_id = 1275, gadget_id = 70211101, pos = { x = 2668.6, y = 248.0, z = -426.8 }, rot = { x = 0.0, y = 343.8, z = 0.0 }, level = 20, drop_tag = "解谜低级蒙德", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
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
	rand_suite = true
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
		gadgets = { 434, 435, 436, 437, 448, 458, 497, 564 },
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
