--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1451, monster_id = 20011001, pos = { x = 2580.9, y = 211.5, z = -1358.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 1452, monster_id = 20011001, pos = { x = 2576.4, y = 211.6, z = -1360.9 }, rot = { x = 0.0, y = 253.6, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 1453, monster_id = 20011201, pos = { x = 2536.3, y = 217.4, z = -1409.9 }, rot = { x = 0.0, y = 23.2, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 1454, monster_id = 20011201, pos = { x = 2546.1, y = 217.4, z = -1407.5 }, rot = { x = 0.0, y = 68.9, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 1455, monster_id = 20011001, pos = { x = 2579.7, y = 212.0, z = -1297.1 }, rot = { x = 0.0, y = 206.0, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 1456, monster_id = 20011001, pos = { x = 2582.0, y = 211.5, z = -1301.2 }, rot = { x = 0.0, y = 206.0, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 1457, monster_id = 20011201, pos = { x = 2610.1, y = 216.0, z = -1270.8 }, rot = { x = 0.0, y = 23.2, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 1458, monster_id = 20011201, pos = { x = 2612.5, y = 216.7, z = -1274.8 }, rot = { x = 0.0, y = 211.8, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 1459, monster_id = 20011401, pos = { x = 2515.0, y = 223.8, z = -1424.7 }, rot = { x = 0.0, y = 211.8, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 1460, monster_id = 20011401, pos = { x = 2504.7, y = 224.3, z = -1415.9 }, rot = { x = 0.0, y = 211.8, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 1461, monster_id = 20011401, pos = { x = 2532.2, y = 219.7, z = -1436.5 }, rot = { x = 0.0, y = 211.8, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 1462, monster_id = 20011401, pos = { x = 2538.2, y = 219.1, z = -1444.2 }, rot = { x = 0.0, y = 352.2, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 1463, monster_id = 20011401, pos = { x = 2499.5, y = 214.1, z = -1324.5 }, rot = { x = 0.0, y = 352.2, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 1464, monster_id = 20011401, pos = { x = 2498.9, y = 213.6, z = -1334.5 }, rot = { x = 0.0, y = 163.8, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 1465, monster_id = 20010301, pos = { x = 2524.7, y = 212.0, z = -1346.1 }, rot = { x = 0.0, y = 89.4, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 1466, monster_id = 20010301, pos = { x = 2522.5, y = 212.0, z = -1343.0 }, rot = { x = 0.0, y = 272.1, z = 0.0 }, level = 1, drop_tag = "史莱姆" }
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
	suite = 2,
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
		monsters = { 1451, 1453, 1459, 1462 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
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
