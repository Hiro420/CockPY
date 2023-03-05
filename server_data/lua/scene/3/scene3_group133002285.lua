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
	{ config_id = 285001, gadget_id = 70500000, pos = { x = 1941.1, y = 211.4, z = -834.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9101, persistent = true },
	{ config_id = 285002, gadget_id = 70500000, pos = { x = 1948.5, y = 210.5, z = -848.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9101, persistent = true },
	{ config_id = 285003, gadget_id = 70500000, pos = { x = 1931.2, y = 212.4, z = -826.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9102, persistent = true },
	{ config_id = 285004, gadget_id = 70500000, pos = { x = 1941.0, y = 211.4, z = -834.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9101, persistent = true },
	{ config_id = 285005, gadget_id = 70500000, pos = { x = 1948.4, y = 210.5, z = -848.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9102, persistent = true },
	{ config_id = 285006, gadget_id = 70500000, pos = { x = 1931.1, y = 212.4, z = -826.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9101, persistent = true },
	{ config_id = 285007, gadget_id = 70500000, pos = { x = 1941.1, y = 211.5, z = -834.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9102, persistent = true },
	{ config_id = 285008, gadget_id = 70500000, pos = { x = 1948.5, y = 210.5, z = -848.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9101, persistent = true },
	{ config_id = 285009, gadget_id = 70500000, pos = { x = 1931.2, y = 212.4, z = -826.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9101, persistent = true },
	{ config_id = 285010, gadget_id = 70500000, pos = { x = 1949.5, y = 207.9, z = -763.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9103, persistent = true }
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
		gadgets = { 285001, 285002, 285003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 285004, 285005, 285006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 285007, 285008, 285009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 285010 },
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
