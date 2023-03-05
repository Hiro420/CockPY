--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1, monster_id = 20010302, pos = { x = 1963.2, y = 197.0, z = -1307.5 }, rot = { x = 0.0, y = 78.6, z = 0.0 }, level = 1 },
	{ config_id = 2, monster_id = 20010302, pos = { x = 1961.7, y = 196.8, z = -1306.0 }, rot = { x = 0.0, y = 66.7, z = 0.0 }, level = 1 },
	{ config_id = 3, monster_id = 20010302, pos = { x = 1962.9, y = 196.8, z = -1304.9 }, rot = { x = 0.0, y = 77.5, z = 0.0 }, level = 1 },
	{ config_id = 4, monster_id = 20010401, pos = { x = 1963.7, y = 196.9, z = -1306.0 }, rot = { x = 0.0, y = 72.7, z = 0.0 }, level = 1 },
	{ config_id = 5, monster_id = 20010701, pos = { x = 1964.1, y = 196.6, z = -1302.1 }, rot = { x = 0.0, y = 88.0, z = 0.0 }, level = 1 },
	{ config_id = 6, monster_id = 20010701, pos = { x = 1962.4, y = 196.4, z = -1299.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 7, monster_id = 20010701, pos = { x = 1964.3, y = 196.4, z = -1298.2 }, rot = { x = 0.0, y = 120.3, z = 0.0 }, level = 1 },
	{ config_id = 8, monster_id = 20010601, pos = { x = 1964.1, y = 196.5, z = -1300.3 }, rot = { x = 0.0, y = 91.3, z = 0.0 }, level = 1 },
	{ config_id = 9, monster_id = 20010801, pos = { x = 1963.2, y = 197.0, z = -1309.2 }, rot = { x = 0.0, y = 81.8, z = 0.0 }, level = 1 },
	{ config_id = 10, monster_id = 20010801, pos = { x = 1964.5, y = 197.1, z = -1310.8 }, rot = { x = 0.0, y = 65.9, z = 0.0 }, level = 1 },
	{ config_id = 11, monster_id = 20010801, pos = { x = 1965.1, y = 197.0, z = -1308.9 }, rot = { x = 0.0, y = 70.9, z = 0.0 }, level = 1 },
	{ config_id = 12, monster_id = 20010901, pos = { x = 1966.2, y = 197.0, z = -1310.4 }, rot = { x = 0.0, y = 61.7, z = 0.0 }, level = 1 },
	{ config_id = 13, monster_id = 20011001, pos = { x = 1964.9, y = 196.9, z = -1305.3 }, rot = { x = 0.0, y = 101.5, z = 0.0 }, level = 1 },
	{ config_id = 14, monster_id = 20011001, pos = { x = 1965.1, y = 196.8, z = -1304.1 }, rot = { x = 0.0, y = 104.0, z = 0.0 }, level = 1 },
	{ config_id = 15, monster_id = 20011001, pos = { x = 1965.7, y = 196.7, z = -1303.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 16, monster_id = 20011101, pos = { x = 1965.9, y = 196.8, z = -1305.1 }, rot = { x = 0.0, y = 81.6, z = 0.0 }, level = 1 },
	{ config_id = 17, monster_id = 20011202, pos = { x = 1967.3, y = 196.7, z = -1303.3 }, rot = { x = 0.0, y = 95.8, z = 0.0 }, level = 1 },
	{ config_id = 18, monster_id = 20011202, pos = { x = 1968.1, y = 196.7, z = -1302.3 }, rot = { x = 0.0, y = 80.7, z = 0.0 }, level = 1 },
	{ config_id = 19, monster_id = 20011202, pos = { x = 1967.8, y = 196.8, z = -1304.2 }, rot = { x = 0.0, y = 97.0, z = 0.0 }, level = 1 },
	{ config_id = 20, monster_id = 20011301, pos = { x = 1966.9, y = 196.6, z = -1301.5 }, rot = { x = 0.0, y = 79.5, z = 0.0 }, level = 1 },
	{ config_id = 21, monster_id = 20011401, pos = { x = 1967.5, y = 196.4, z = -1300.0 }, rot = { x = 0.0, y = 104.3, z = 0.0 }, level = 1 },
	{ config_id = 22, monster_id = 20011401, pos = { x = 1966.7, y = 196.3, z = -1299.0 }, rot = { x = 0.0, y = 106.0, z = 0.0 }, level = 1 },
	{ config_id = 23, monster_id = 20011401, pos = { x = 1967.9, y = 196.2, z = -1298.3 }, rot = { x = 0.0, y = 109.4, z = 0.0 }, level = 1 },
	{ config_id = 24, monster_id = 20011501, pos = { x = 1968.1, y = 196.5, z = -1300.6 }, rot = { x = 0.0, y = 106.8, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
	rand_suite = false,
	npcs = { }
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
		monsters = { 1, 2, 3, 4 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 5, 6, 7, 8 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 9, 10, 11, 12 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 13, 14, 15, 16 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 17, 18, 19, 20 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { 21, 22, 23, 24 },
		gadgets = { },
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
