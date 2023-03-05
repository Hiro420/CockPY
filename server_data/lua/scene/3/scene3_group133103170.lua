--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 170001, monster_id = 21010401, pos = { x = 627.9, y = 248.4, z = 1502.8 }, rot = { x = 0.0, y = 240.4, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 170002, monster_id = 21010901, pos = { x = 639.1, y = 255.0, z = 1527.0 }, rot = { x = 0.0, y = 354.2, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 170003, monster_id = 21010301, pos = { x = 640.5, y = 245.0, z = 1530.5 }, rot = { x = 0.0, y = 149.3, z = 0.0 }, level = 24, drop_tag = "丘丘人", pose_id = 9015 },
	{ config_id = 170004, monster_id = 21010901, pos = { x = 562.4, y = 255.3, z = 1564.9 }, rot = { x = 0.0, y = 140.3, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 170006, monster_id = 21030401, pos = { x = 564.3, y = 244.7, z = 1583.7 }, rot = { x = 0.0, y = 89.5, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 170007, monster_id = 21010301, pos = { x = 566.4, y = 244.6, z = 1582.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 170008, monster_id = 21010401, pos = { x = 625.0, y = 240.0, z = 1565.9 }, rot = { x = 0.0, y = 52.5, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 170009, monster_id = 21020201, pos = { x = 635.4, y = 236.8, z = 1579.7 }, rot = { x = 0.0, y = 248.7, z = 0.0 }, level = 24, drop_tag = "丘丘暴徒", pose_id = 0 },
	{ config_id = 170010, monster_id = 21010701, pos = { x = 632.7, y = 236.6, z = 1582.2 }, rot = { x = 0.0, y = 248.7, z = 0.0 }, level = 24, drop_tag = "丘丘人", pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 170005, gadget_id = 70220014, pos = { x = 639.9, y = 255.0, z = 1524.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 }
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
		monsters = { 170001, 170002, 170003, 170004, 170006, 170007, 170008, 170009, 170010 },
		gadgets = { 170005 },
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
