--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 805001, monster_id = 28020301, pos = { x = 533.7, y = 288.7, z = 1495.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 805002, monster_id = 28020301, pos = { x = 537.2, y = 290.4, z = 1489.7 }, rot = { x = 0.0, y = 77.9, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 805003, monster_id = 28020301, pos = { x = 532.2, y = 289.7, z = 1489.2 }, rot = { x = 0.0, y = 77.9, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 805004, monster_id = 28020301, pos = { x = 495.1, y = 293.9, z = 1505.7 }, rot = { x = 0.0, y = 77.9, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 805005, monster_id = 28020301, pos = { x = 500.2, y = 292.1, z = 1501.5 }, rot = { x = 0.0, y = 77.9, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 805006, monster_id = 28020301, pos = { x = 496.7, y = 293.5, z = 1496.2 }, rot = { x = 0.0, y = 77.9, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 805007, monster_id = 28020404, pos = { x = 438.5, y = 279.2, z = 1243.2 }, rot = { x = 0.0, y = 243.1, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 805008, monster_id = 28020502, pos = { x = 456.6, y = 280.2, z = 1229.9 }, rot = { x = 0.0, y = 337.9, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 805009, monster_id = 28020402, pos = { x = 448.2, y = 277.6, z = 1234.0 }, rot = { x = 0.0, y = 214.2, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 805010, monster_id = 28020505, pos = { x = 359.3, y = 291.1, z = 1212.8 }, rot = { x = 0.0, y = 204.3, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 805011, monster_id = 28030401, pos = { x = 331.5, y = 265.3, z = 1128.2 }, rot = { x = 0.0, y = 44.1, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805012, monster_id = 28030401, pos = { x = 334.5, y = 264.7, z = 1126.0 }, rot = { x = 0.0, y = 44.1, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805013, monster_id = 28030401, pos = { x = 332.0, y = 266.4, z = 1126.5 }, rot = { x = 0.0, y = 44.1, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 805014, monster_id = 28020504, pos = { x = 353.1, y = 260.5, z = 1357.0 }, rot = { x = 0.0, y = 33.0, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 805015, monster_id = 28020505, pos = { x = 396.1, y = 293.5, z = 1531.4 }, rot = { x = 0.0, y = 320.4, z = 0.0 }, level = 24, drop_tag = "走兽" }
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
		monsters = { 805001, 805002, 805003, 805004, 805005, 805006, 805007, 805008, 805009, 805010, 805011, 805012, 805013, 805014, 805015 },
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