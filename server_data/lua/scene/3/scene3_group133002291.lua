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
	{ config_id = 291001, gadget_id = 70500000, pos = { x = 2006.9, y = 211.1, z = -968.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 9101, persistent = true },
	{ config_id = 291002, gadget_id = 70500000, pos = { x = 2014.8, y = 212.7, z = -979.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 9101, persistent = true },
	{ config_id = 291003, gadget_id = 70500000, pos = { x = 2004.0, y = 211.9, z = -954.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 9102, persistent = true },
	{ config_id = 291004, gadget_id = 70500000, pos = { x = 2006.8, y = 211.2, z = -968.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 9101, persistent = true },
	{ config_id = 291005, gadget_id = 70500000, pos = { x = 2014.6, y = 212.7, z = -979.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 9102, persistent = true },
	{ config_id = 291006, gadget_id = 70500000, pos = { x = 2004.0, y = 211.8, z = -954.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 9101, persistent = true },
	{ config_id = 291007, gadget_id = 70500000, pos = { x = 2007.0, y = 211.1, z = -968.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 9102, persistent = true },
	{ config_id = 291008, gadget_id = 70500000, pos = { x = 2014.4, y = 212.7, z = -979.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5, point_type = 9101, persistent = true },
	{ config_id = 291009, gadget_id = 70500000, pos = { x = 2004.1, y = 211.9, z = -954.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5, point_type = 9101, persistent = true },
	{ config_id = 291010, gadget_id = 70500000, pos = { x = 2014.4, y = 204.7, z = -846.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9103, persistent = true }
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
		gadgets = { 291001, 291002, 291003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 291004, 291005, 291006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 291007, 291008, 291009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 291010 },
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
