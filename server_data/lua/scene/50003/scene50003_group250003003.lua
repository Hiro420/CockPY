--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 25, monster_id = 21020101, pos = { x = 1953.4, y = 196.3, z = -1303.4 }, rot = { x = 0.0, y = 97.6, z = 0.0 }, level = 1 },
	{ config_id = 26, monster_id = 21030101, pos = { x = 1948.2, y = 196.1, z = -1307.2 }, rot = { x = 0.0, y = 46.0, z = 0.0 }, level = 1 },
	{ config_id = 27, monster_id = 21020201, pos = { x = 1956.5, y = 196.3, z = -1301.9 }, rot = { x = 0.0, y = 83.1, z = 0.0 }, level = 1 },
	{ config_id = 28, monster_id = 21010701, pos = { x = 1958.5, y = 196.3, z = -1298.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 29, monster_id = 21010201, pos = { x = 1960.1, y = 196.5, z = -1302.7 }, rot = { x = 0.0, y = 65.5, z = 0.0 }, level = 1 },
	{ config_id = 30, monster_id = 21030301, pos = { x = 1958.8, y = 196.3, z = -1291.2 }, rot = { x = 0.0, y = 116.8, z = 0.0 }, level = 1 },
	{ config_id = 31, monster_id = 21010701, pos = { x = 1961.7, y = 196.1, z = -1289.6 }, rot = { x = 0.0, y = 97.4, z = 0.0 }, level = 1 },
	{ config_id = 32, monster_id = 21010701, pos = { x = 1961.2, y = 196.2, z = -1292.4 }, rot = { x = 0.0, y = 97.6, z = 0.0 }, level = 1 },
	{ config_id = 33, monster_id = 21030201, pos = { x = 1959.0, y = 196.8, z = -1310.3 }, rot = { x = 0.0, y = 78.7, z = 0.0 }, level = 1 },
	{ config_id = 34, monster_id = 21010701, pos = { x = 1963.1, y = 197.2, z = -1312.9 }, rot = { x = 0.0, y = 62.6, z = 0.0 }, level = 1 },
	{ config_id = 35, monster_id = 21010701, pos = { x = 1960.8, y = 196.9, z = -1309.0 }, rot = { x = 0.0, y = 61.3, z = 0.0 }, level = 1 },
	{ config_id = 36, monster_id = 21030101, pos = { x = 1959.4, y = 196.4, z = -1296.3 }, rot = { x = 0.0, y = 102.3, z = 0.0 }, level = 1 },
	{ config_id = 37, monster_id = 21010301, pos = { x = 1962.5, y = 196.2, z = -1294.3 }, rot = { x = 0.0, y = 64.7, z = 0.0 }, level = 1 },
	{ config_id = 38, monster_id = 21010301, pos = { x = 1962.8, y = 196.3, z = -1295.9 }, rot = { x = 0.0, y = 102.5, z = 0.0 }, level = 1 },
	{ config_id = 39, monster_id = 21010301, pos = { x = 1961.9, y = 196.4, z = -1298.2 }, rot = { x = 0.0, y = 129.0, z = 0.0 }, level = 1 },
	{ config_id = 40, monster_id = 20020101, pos = { x = 1944.0, y = 199.7, z = -1302.1 }, rot = { x = 0.0, y = 294.1, z = 0.0 }, level = 1 },
	{ config_id = 41, monster_id = 22010201, pos = { x = 1952.3, y = 196.6, z = -1294.0 }, rot = { x = 0.0, y = 124.0, z = 0.0 }, level = 1 },
	{ config_id = 42, monster_id = 20011001, pos = { x = 1955.4, y = 196.5, z = -1291.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 43, monster_id = 20011001, pos = { x = 1955.3, y = 196.5, z = -1293.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 44, monster_id = 20011001, pos = { x = 1954.1, y = 196.4, z = -1296.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 45, monster_id = 22010301, pos = { x = 1959.1, y = 196.6, z = -1305.3 }, rot = { x = 0.0, y = 94.3, z = 0.0 }, level = 1 },
	{ config_id = 46, monster_id = 20010801, pos = { x = 1960.5, y = 196.8, z = -1307.2 }, rot = { x = 0.0, y = 63.3, z = 0.0 }, level = 1 },
	{ config_id = 47, monster_id = 20010801, pos = { x = 1959.8, y = 196.5, z = -1303.7 }, rot = { x = 0.0, y = 82.1, z = 0.0 }, level = 1 },
	{ config_id = 48, monster_id = 20010801, pos = { x = 1960.3, y = 196.6, z = -1305.0 }, rot = { x = 0.0, y = 75.1, z = 0.0 }, level = 1 },
	{ config_id = 49, monster_id = 22010101, pos = { x = 1960.1, y = 196.4, z = -1300.8 }, rot = { x = 0.0, y = 112.1, z = 0.0 }, level = 1 },
	{ config_id = 50, monster_id = 20011202, pos = { x = 1961.2, y = 196.5, z = -1302.6 }, rot = { x = 0.0, y = 104.6, z = 0.0 }, level = 1 },
	{ config_id = 51, monster_id = 20011202, pos = { x = 1962.5, y = 196.5, z = -1301.2 }, rot = { x = 0.0, y = 98.5, z = 0.0 }, level = 1 }
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
		monsters = { 25, 26 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 27, 28, 29 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 30, 31, 32 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 33, 34, 35 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 36, 37, 38, 39 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { 40 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = suite_8,
		monsters = { 41, 42, 43, 44 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = suite_9,
		monsters = { 45, 46, 47, 48 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = suite_10,
		monsters = { 49, 50, 51 },
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
