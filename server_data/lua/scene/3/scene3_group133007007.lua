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
	{ config_id = 18, gadget_id = 70500000, pos = { x = 2652.9, y = 329.5, z = 132.6 }, rot = { x = 0.0, y = 10.6, z = 0.0 }, level = 23, point_type = 4001001, isOneoff = true },
	{ config_id = 19, gadget_id = 70500000, pos = { x = 2685.6, y = 237.0, z = 182.4 }, rot = { x = 0.0, y = 208.8, z = 0.0 }, level = 23, point_type = 4001001, isOneoff = true },
	{ config_id = 20, gadget_id = 70500000, pos = { x = 2824.4, y = 253.8, z = -24.7 }, rot = { x = 0.0, y = 301.5, z = 0.0 }, level = 23, point_type = 4001001, isOneoff = true },
	{ config_id = 21, gadget_id = 70500000, pos = { x = 2559.2, y = 189.6, z = 390.0 }, rot = { x = 0.0, y = 80.3, z = 0.0 }, level = 23, point_type = 4001001, isOneoff = true },
	{ config_id = 22, gadget_id = 70500000, pos = { x = 2883.2, y = 247.0, z = 299.7 }, rot = { x = 0.0, y = 39.3, z = 0.0 }, level = 23, point_type = 4001001, isOneoff = true },
	{ config_id = 31, gadget_id = 70500000, pos = { x = 2930.8, y = 218.4, z = -35.4 }, rot = { x = 0.0, y = 62.2, z = 0.0 }, level = 23, point_type = 4001001, isOneoff = true },
	{ config_id = 32, gadget_id = 70500000, pos = { x = 2743.8, y = 221.6, z = 171.1 }, rot = { x = 0.0, y = 245.8, z = 0.0 }, level = 23, point_type = 4001001, isOneoff = true },
	{ config_id = 34, gadget_id = 70500000, pos = { x = 2864.6, y = 223.0, z = 88.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 23, point_type = 4001001, isOneoff = true },
	{ config_id = 40, gadget_id = 70500000, pos = { x = 2701.7, y = 215.7, z = 232.6 }, rot = { x = 0.0, y = 65.3, z = 0.0 }, level = 23, point_type = 4001001, isOneoff = true },
	{ config_id = 435, gadget_id = 70500000, pos = { x = 2479.9, y = 226.6, z = 272.3 }, rot = { x = 0.0, y = 240.7, z = 0.0 }, level = 23, point_type = 4001001, isOneoff = true },
	{ config_id = 693, gadget_id = 70500000, pos = { x = 2643.1, y = 295.0, z = -189.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, point_type = 4001001, isOneoff = true },
	{ config_id = 941, gadget_id = 70500000, pos = { x = 2315.3, y = 259.8, z = -59.1 }, rot = { x = 0.0, y = 10.6, z = 0.0 }, level = 23, point_type = 4001001, isOneoff = true },
	{ config_id = 942, gadget_id = 70500000, pos = { x = 2183.1, y = 272.3, z = 22.8 }, rot = { x = 0.0, y = 10.6, z = 0.0 }, level = 23, point_type = 4001001, isOneoff = true }
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
		gadgets = { 18, 19, 20, 21, 22, 31, 32, 34, 40, 435, 693, 941, 942 },
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
