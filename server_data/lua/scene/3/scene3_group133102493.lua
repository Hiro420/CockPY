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
	{ config_id = 493001, gadget_id = 70310001, pos = { x = 1757.7, y = 319.4, z = 427.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 493002, gadget_id = 70310001, pos = { x = 1742.1, y = 325.9, z = 436.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 493003, gadget_id = 70310001, pos = { x = 1749.4, y = 323.1, z = 422.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 493004, gadget_id = 70310001, pos = { x = 1723.6, y = 328.5, z = 429.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 493005, gadget_id = 70310001, pos = { x = 1719.9, y = 332.1, z = 443.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 493006, gadget_id = 70310001, pos = { x = 1719.8, y = 331.1, z = 437.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 493007, gadget_id = 70310001, pos = { x = 1702.5, y = 332.9, z = 439.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 493008, gadget_id = 70310001, pos = { x = 1767.4, y = 317.6, z = 434.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 493009, gadget_id = 70310001, pos = { x = 1770.3, y = 316.2, z = 423.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 493010, gadget_id = 70310001, pos = { x = 1803.0, y = 303.6, z = 386.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 493011, gadget_id = 70310001, pos = { x = 1808.6, y = 303.6, z = 384.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 493012, gadget_id = 70310001, pos = { x = 1795.2, y = 305.9, z = 337.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart }
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
		gadgets = { 493001, 493002, 493003, 493004, 493005, 493006, 493007, 493008, 493009, 493010, 493011, 493012 },
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
