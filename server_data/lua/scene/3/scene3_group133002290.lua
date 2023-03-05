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
	{ config_id = 290001, gadget_id = 70500000, pos = { x = 1970.2, y = 221.1, z = -573.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9101, persistent = true },
	{ config_id = 290002, gadget_id = 70500000, pos = { x = 1968.7, y = 221.1, z = -579.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9101, persistent = true },
	{ config_id = 290003, gadget_id = 70500000, pos = { x = 1967.0, y = 220.4, z = -590.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9102, persistent = true },
	{ config_id = 290004, gadget_id = 70500000, pos = { x = 1969.9, y = 221.1, z = -573.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9101, persistent = true },
	{ config_id = 290005, gadget_id = 70500000, pos = { x = 1968.6, y = 221.1, z = -579.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9102, persistent = true },
	{ config_id = 290006, gadget_id = 70500000, pos = { x = 1966.8, y = 220.4, z = -590.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9101, persistent = true },
	{ config_id = 290007, gadget_id = 70500000, pos = { x = 1969.9, y = 221.1, z = -573.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9102, persistent = true },
	{ config_id = 290008, gadget_id = 70500000, pos = { x = 1968.6, y = 221.1, z = -579.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9101, persistent = true },
	{ config_id = 290009, gadget_id = 70500000, pos = { x = 1966.7, y = 220.4, z = -589.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9101, persistent = true },
	{ config_id = 290010, gadget_id = 70500000, pos = { x = 1924.0, y = 219.1, z = -638.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, point_type = 9103, persistent = true }
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
		gadgets = { 290001, 290002, 290003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 290004, 290005, 290006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 290007, 290008, 290009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 290010 },
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
