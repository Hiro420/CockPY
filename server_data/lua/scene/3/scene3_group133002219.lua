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
	{ config_id = 1765, gadget_id = 70310001, pos = { x = 1763.1, y = 244.0, z = -776.6 }, rot = { x = 0.0, y = 172.9, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 1766, gadget_id = 70310001, pos = { x = 1750.2, y = 246.8, z = -780.7 }, rot = { x = 0.0, y = 272.7, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 1767, gadget_id = 70310001, pos = { x = 1722.5, y = 252.3, z = -782.6 }, rot = { x = 0.0, y = 46.0, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 1768, gadget_id = 70310001, pos = { x = 1689.0, y = 256.3, z = -754.2 }, rot = { x = 0.0, y = 73.0, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 1769, gadget_id = 70310001, pos = { x = 1730.1, y = 257.5, z = -746.6 }, rot = { x = 0.0, y = 332.4, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 1770, gadget_id = 70310001, pos = { x = 1634.4, y = 268.5, z = -774.3 }, rot = { x = 0.0, y = 359.8, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 1771, gadget_id = 70310001, pos = { x = 1636.4, y = 268.5, z = -780.6 }, rot = { x = 0.0, y = 277.1, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 1772, gadget_id = 70310001, pos = { x = 1644.9, y = 267.0, z = -749.5 }, rot = { x = 0.0, y = 337.9, z = 0.0 }, level = 10, state = GadgetState.GearStart }
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
		gadgets = { 1765, 1766, 1767, 1768, 1769, 1770, 1771, 1772 },
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
