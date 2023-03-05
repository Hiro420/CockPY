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
	{ config_id = 1947, gadget_id = 70310006, pos = { x = 1693.4, y = 207.0, z = -395.8 }, rot = { x = 0.0, y = 11.0, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 1948, gadget_id = 70310006, pos = { x = 1718.2, y = 207.7, z = -494.1 }, rot = { x = 0.0, y = 11.0, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 1949, gadget_id = 70310006, pos = { x = 1712.7, y = 256.0, z = -658.8 }, rot = { x = 0.0, y = 11.0, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 1950, gadget_id = 70220014, pos = { x = 1711.3, y = 255.9, z = -655.3 }, rot = { x = 0.0, y = 137.5, z = 0.0 }, level = 10 },
	{ config_id = 1951, gadget_id = 70220014, pos = { x = 1710.6, y = 255.9, z = -656.0 }, rot = { x = 0.0, y = 137.5, z = 0.0 }, level = 10 },
	{ config_id = 1952, gadget_id = 70310006, pos = { x = 1704.2, y = 256.0, z = -741.9 }, rot = { x = 0.0, y = 11.0, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 1957, gadget_id = 70310006, pos = { x = 1879.4, y = 224.6, z = -412.2 }, rot = { x = 0.0, y = 11.0, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 1958, gadget_id = 70310006, pos = { x = 1975.8, y = 230.5, z = -452.0 }, rot = { x = 0.0, y = 11.0, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 1959, gadget_id = 70310006, pos = { x = 1924.2, y = 205.3, z = -771.2 }, rot = { x = 0.0, y = 11.0, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 1960, gadget_id = 70310006, pos = { x = 2009.5, y = 205.2, z = -835.3 }, rot = { x = 0.0, y = 11.0, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 1961, gadget_id = 70310006, pos = { x = 1957.2, y = 218.0, z = -942.9 }, rot = { x = 0.0, y = 11.0, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 1962, gadget_id = 70310006, pos = { x = 1912.6, y = 223.6, z = -928.9 }, rot = { x = 0.0, y = 11.0, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 1963, gadget_id = 70310006, pos = { x = 1854.8, y = 236.7, z = -883.7 }, rot = { x = 0.0, y = 11.0, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 1964, gadget_id = 70310006, pos = { x = 1631.6, y = 266.5, z = -757.9 }, rot = { x = 0.0, y = 11.0, z = 0.0 }, level = 10, state = GadgetState.GearStart }
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
		gadgets = { 1947, 1948, 1949, 1950, 1951, 1952, 1957, 1958, 1959, 1960, 1961, 1962, 1963, 1964 },
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
