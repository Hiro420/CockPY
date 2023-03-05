--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 329001, monster_id = 21010501, pos = { x = 1596.6, y = 248.7, z = -23.5 }, rot = { x = 353.6, y = 301.9, z = 350.6 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 329002, monster_id = 21010601, pos = { x = 1598.7, y = 251.8, z = -26.1 }, rot = { x = 351.2, y = 109.8, z = 1.6 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 329005, monster_id = 21010701, pos = { x = 1593.7, y = 242.6, z = -14.7 }, rot = { x = 7.6, y = 214.9, z = 352.0 }, level = 16, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 329008, monster_id = 20011201, pos = { x = 1595.2, y = 242.3, z = -17.7 }, rot = { x = 345.7, y = 35.2, z = 4.5 }, level = 16, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 329009, monster_id = 20011201, pos = { x = 1600.5, y = 242.1, z = -15.6 }, rot = { x = 14.1, y = 253.5, z = 5.2 }, level = 16, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 329012, monster_id = 21030201, pos = { x = 1600.8, y = 242.9, z = -18.6 }, rot = { x = 0.0, y = 295.8, z = 0.0 }, level = 16, drop_tag = "丘丘萨满", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 329003, gadget_id = 70220005, pos = { x = 1599.4, y = 251.9, z = -26.4 }, rot = { x = 355.4, y = 40.3, z = 4.7 }, level = 16 },
	{ config_id = 329004, gadget_id = 70220005, pos = { x = 1602.2, y = 242.7, z = -17.0 }, rot = { x = 359.4, y = 37.3, z = 29.8 }, level = 16 },
	{ config_id = 329006, gadget_id = 70300089, pos = { x = 1590.4, y = 243.6, z = -16.0 }, rot = { x = 12.1, y = 36.8, z = 340.3 }, level = 16 },
	{ config_id = 329007, gadget_id = 70300089, pos = { x = 1594.9, y = 243.1, z = -21.2 }, rot = { x = 13.1, y = 37.8, z = 14.2 }, level = 16 },
	{ config_id = 329010, gadget_id = 70300089, pos = { x = 1603.5, y = 241.6, z = -12.6 }, rot = { x = 21.0, y = 2.0, z = 10.6 }, level = 16 },
	{ config_id = 329011, gadget_id = 70300089, pos = { x = 1598.0, y = 240.5, z = -8.9 }, rot = { x = 9.6, y = 359.2, z = 351.1 }, level = 16 },
	{ config_id = 329013, gadget_id = 70220013, pos = { x = 1596.8, y = 242.7, z = -19.6 }, rot = { x = 14.0, y = 0.2, z = 1.8 }, level = 16 },
	{ config_id = 329014, gadget_id = 70220026, pos = { x = 1602.0, y = 241.9, z = -14.0 }, rot = { x = 21.0, y = 2.0, z = 10.6 }, level = 16 },
	{ config_id = 329015, gadget_id = 70220026, pos = { x = 1594.9, y = 241.6, z = -11.3 }, rot = { x = 9.2, y = 358.5, z = 341.0 }, level = 16 }
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
		monsters = { 329001, 329002, 329005, 329008, 329009, 329012 },
		gadgets = { 329003, 329004, 329006, 329007, 329010, 329011, 329013, 329014, 329015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================
