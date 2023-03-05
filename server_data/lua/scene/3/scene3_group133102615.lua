--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 615001, monster_id = 25020201, pos = { x = 1927.8, y = 207.5, z = 829.7 }, rot = { x = 358.4, y = 23.9, z = 5.1 }, level = 18, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 615002, monster_id = 25010201, pos = { x = 1898.3, y = 206.4, z = 855.0 }, rot = { x = 0.0, y = 135.1, z = 0.0 }, level = 18, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 615003, monster_id = 25030201, pos = { x = 1898.2, y = 206.6, z = 852.1 }, rot = { x = 0.0, y = 72.8, z = 0.0 }, level = 18, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 615004, monster_id = 25040201, pos = { x = 1877.8, y = 205.7, z = 886.8 }, rot = { x = 0.0, y = 78.4, z = 0.0 }, level = 18, drop_tag = "盗宝团" },
	{ config_id = 615022, monster_id = 20010801, pos = { x = 1950.0, y = 205.8, z = 839.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 615023, monster_id = 20010801, pos = { x = 1951.0, y = 205.8, z = 853.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 615024, monster_id = 20010801, pos = { x = 1938.9, y = 205.8, z = 848.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 615025, monster_id = 20010801, pos = { x = 1965.8, y = 205.8, z = 829.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 615026, monster_id = 20010801, pos = { x = 1939.6, y = 205.8, z = 827.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 615005, gadget_id = 70310003, pos = { x = 1920.4, y = 216.9, z = 881.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 615006, gadget_id = 70310003, pos = { x = 1920.2, y = 216.8, z = 877.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 615007, gadget_id = 70220014, pos = { x = 1915.7, y = 216.5, z = 882.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 615008, gadget_id = 70220014, pos = { x = 1919.8, y = 216.6, z = 875.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 615009, gadget_id = 70220014, pos = { x = 1919.7, y = 216.7, z = 883.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 615010, gadget_id = 70310006, pos = { x = 1917.2, y = 216.5, z = 880.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 615011, gadget_id = 70300098, pos = { x = 1899.7, y = 205.8, z = 853.1 }, rot = { x = 359.1, y = 0.0, z = 348.5 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 615012, gadget_id = 70220014, pos = { x = 1900.1, y = 205.6, z = 854.8 }, rot = { x = 1.7, y = 359.8, z = 343.5 }, level = 18 },
	{ config_id = 615013, gadget_id = 70220014, pos = { x = 1901.3, y = 205.3, z = 854.5 }, rot = { x = 14.6, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 615014, gadget_id = 70220014, pos = { x = 1900.5, y = 205.6, z = 856.0 }, rot = { x = 347.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 615019, gadget_id = 70211101, pos = { x = 1975.2, y = 205.5, z = 833.2 }, rot = { x = 5.5, y = 273.1, z = 16.6 }, level = 18, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 615020, gadget_id = 70211101, pos = { x = 1939.8, y = 216.4, z = 874.4 }, rot = { x = 22.6, y = 156.9, z = 356.1 }, level = 18, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 615021, gadget_id = 70211101, pos = { x = 1951.9, y = 205.6, z = 813.9 }, rot = { x = 0.0, y = 328.8, z = 0.0 }, level = 18, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		monsters = { 615001, 615002, 615003, 615004, 615022, 615023, 615024, 615025, 615026 },
		gadgets = { 615005, 615006, 615007, 615008, 615009, 615010, 615011, 615012, 615013, 615014, 615019, 615020, 615021 },
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
