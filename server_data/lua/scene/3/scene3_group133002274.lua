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
	{ config_id = 2284, gadget_id = 70210102, pos = { x = 1934.2, y = 223.9, z = -939.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 2285, gadget_id = 70210102, pos = { x = 1946.2, y = 217.4, z = -935.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 2286, gadget_id = 70210102, pos = { x = 1958.7, y = 215.5, z = -912.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 2287, gadget_id = 70210102, pos = { x = 1945.4, y = 221.1, z = -906.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 2288, gadget_id = 70210102, pos = { x = 1967.3, y = 211.2, z = -897.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 2289, gadget_id = 70210102, pos = { x = 1946.0, y = 218.1, z = -921.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 2290, gadget_id = 70210102, pos = { x = 1970.4, y = 211.7, z = -906.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 2291, gadget_id = 70210102, pos = { x = 1943.0, y = 218.4, z = -900.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 2292, gadget_id = 70210102, pos = { x = 1955.5, y = 213.7, z = -882.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 2293, gadget_id = 70210102, pos = { x = 1948.8, y = 217.8, z = -938.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 2294, gadget_id = 70210102, pos = { x = 1960.8, y = 218.1, z = -932.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 2295, gadget_id = 70210102, pos = { x = 1946.1, y = 218.1, z = -921.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 2296, gadget_id = 70210102, pos = { x = 1948.1, y = 217.6, z = -936.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 2297, gadget_id = 70210102, pos = { x = 1914.6, y = 223.8, z = -936.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 2298, gadget_id = 70210102, pos = { x = 1953.5, y = 218.3, z = -954.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 2284, 2285, 2286, 2287, 2288 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 2289, 2290, 2291, 2292, 2293 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 2294, 2295, 2296, 2297, 2298 },
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
