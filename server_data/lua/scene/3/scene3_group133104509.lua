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
	{ config_id = 509001, gadget_id = 70310001, pos = { x = 880.3, y = 246.9, z = 952.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 509002, gadget_id = 70310001, pos = { x = 879.0, y = 247.0, z = 961.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 509003, gadget_id = 70310001, pos = { x = 892.0, y = 235.0, z = 959.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 509004, gadget_id = 70310001, pos = { x = 901.5, y = 235.5, z = 966.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 509005, gadget_id = 70310001, pos = { x = 890.0, y = 236.8, z = 842.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, state = GadgetState.GearStart },
	{ config_id = 509006, gadget_id = 70310001, pos = { x = 896.4, y = 238.1, z = 851.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, state = GadgetState.GearStart },
	{ config_id = 509007, gadget_id = 70310001, pos = { x = 875.8, y = 237.9, z = 979.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 509008, gadget_id = 70310001, pos = { x = 863.6, y = 247.1, z = 971.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 509009, gadget_id = 70310001, pos = { x = 872.2, y = 247.1, z = 968.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart }
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
		gadgets = { 509001, 509002, 509003, 509004, 509005, 509006, 509007, 509008, 509009 },
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
