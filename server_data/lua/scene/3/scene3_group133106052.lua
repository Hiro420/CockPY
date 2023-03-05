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
	{ config_id = 52001, gadget_id = 70310001, pos = { x = -847.5, y = 174.3, z = 899.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 52002, gadget_id = 70310001, pos = { x = -828.6, y = 185.1, z = 930.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 52003, gadget_id = 70310001, pos = { x = -843.5, y = 187.7, z = 931.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 52004, gadget_id = 70310001, pos = { x = -840.6, y = 182.9, z = 928.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 52005, gadget_id = 70310001, pos = { x = -814.9, y = 183.5, z = 917.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart },
	{ config_id = 52006, gadget_id = 70220013, pos = { x = -844.0, y = 189.8, z = 941.0 }, rot = { x = 0.0, y = 44.0, z = 0.0 }, level = 32 },
	{ config_id = 52007, gadget_id = 70220014, pos = { x = -839.4, y = 189.8, z = 940.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 52008, gadget_id = 70220014, pos = { x = -839.9, y = 189.8, z = 941.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 52009, gadget_id = 70220014, pos = { x = -814.2, y = 183.8, z = 922.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 52010, gadget_id = 70220014, pos = { x = -814.3, y = 184.0, z = 920.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 52011, gadget_id = 70220014, pos = { x = -845.7, y = 183.7, z = 930.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 52012, gadget_id = 70220014, pos = { x = -848.6, y = 183.8, z = 931.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 52013, gadget_id = 70220014, pos = { x = -812.8, y = 187.6, z = 934.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 52014, gadget_id = 70220013, pos = { x = -850.2, y = 183.7, z = 932.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 52015, gadget_id = 70220013, pos = { x = -819.2, y = 189.8, z = 942.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 52016, gadget_id = 70300088, pos = { x = -828.1, y = 177.6, z = 901.7 }, rot = { x = 348.5, y = 228.3, z = 0.0 }, level = 32 },
	{ config_id = 52017, gadget_id = 70300088, pos = { x = -831.2, y = 177.0, z = 899.8 }, rot = { x = 0.0, y = 264.0, z = 0.0 }, level = 32 }
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
		gadgets = { 52001, 52002, 52003, 52004, 52005, 52006, 52007, 52008, 52009, 52010, 52011, 52012, 52013, 52014, 52015, 52016, 52017 },
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
