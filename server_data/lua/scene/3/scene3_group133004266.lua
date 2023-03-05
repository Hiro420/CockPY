--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 731, monster_id = 28020301, pos = { x = 2070.8, y = 238.8, z = -567.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 732, monster_id = 28020301, pos = { x = 2080.2, y = 238.1, z = -573.6 }, rot = { x = 0.0, y = 116.2, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 734, monster_id = 28020301, pos = { x = 2079.5, y = 247.4, z = -519.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 735, monster_id = 28020301, pos = { x = 2071.4, y = 242.6, z = -534.1 }, rot = { x = 0.0, y = 150.6, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 736, monster_id = 28020301, pos = { x = 2086.0, y = 246.9, z = -461.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 737, monster_id = 28020301, pos = { x = 2110.7, y = 218.1, z = -479.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 738, monster_id = 28020301, pos = { x = 2152.7, y = 213.1, z = -569.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 740, monster_id = 28020301, pos = { x = 2141.6, y = 213.3, z = -585.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 741, monster_id = 28020301, pos = { x = 2200.5, y = 224.1, z = -559.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 743, monster_id = 28020301, pos = { x = 2185.3, y = 223.8, z = -562.0 }, rot = { x = 0.0, y = 42.4, z = 0.0 }, level = 1, drop_tag = "走兽" }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 731, 732, 734, 735, 736, 737, 738, 740, 741, 743 },
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
