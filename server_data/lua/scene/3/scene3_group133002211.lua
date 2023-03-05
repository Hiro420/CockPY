--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 644, monster_id = 28020301, pos = { x = 1662.7, y = 209.9, z = -495.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 645, monster_id = 28020301, pos = { x = 1613.5, y = 203.7, z = -445.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 646, monster_id = 28020301, pos = { x = 1843.7, y = 247.7, z = -671.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 647, monster_id = 28020301, pos = { x = 1835.1, y = 247.8, z = -687.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 648, monster_id = 28020301, pos = { x = 1965.3, y = 207.1, z = -757.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 649, monster_id = 28020301, pos = { x = 1982.4, y = 208.7, z = -772.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 650, monster_id = 28020301, pos = { x = 1908.1, y = 209.4, z = -768.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 651, monster_id = 28020301, pos = { x = 1920.6, y = 210.5, z = -802.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 710, monster_id = 28020201, pos = { x = 1750.3, y = 259.5, z = -844.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 711, monster_id = 28020201, pos = { x = 1779.5, y = 250.6, z = -807.6 }, rot = { x = 0.0, y = 218.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 716, monster_id = 28020201, pos = { x = 1873.2, y = 244.4, z = -457.2 }, rot = { x = 0.0, y = 218.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 717, monster_id = 28020201, pos = { x = 2024.1, y = 247.8, z = -485.4 }, rot = { x = 0.0, y = 218.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 718, monster_id = 28020201, pos = { x = 2008.2, y = 217.0, z = -754.3 }, rot = { x = 0.0, y = 218.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 719, monster_id = 28020201, pos = { x = 1875.8, y = 234.9, z = -686.8 }, rot = { x = 0.0, y = 218.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 720, monster_id = 28020201, pos = { x = 1915.9, y = 245.9, z = -417.7 }, rot = { x = 0.0, y = 218.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 741, monster_id = 28020102, pos = { x = 1999.2, y = 229.8, z = -658.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 777, monster_id = 20011301, pos = { x = 2018.2, y = 245.5, z = -582.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "史莱姆", affix = { 1001, 1002, 1004 }, isElite = true },
	{ config_id = 778, monster_id = 28020102, pos = { x = 2014.5, y = 244.1, z = -518.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 779, monster_id = 28020102, pos = { x = 2000.9, y = 251.9, z = -406.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" }
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
		monsters = { 644, 645, 646, 647, 648, 649, 650, 651, 710, 711, 716, 717, 718, 719, 720, 741, 777, 778, 779 },
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
