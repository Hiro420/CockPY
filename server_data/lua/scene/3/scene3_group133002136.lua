--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 360, monster_id = 20010801, pos = { x = 1751.3, y = 229.9, z = -598.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "史莱姆" },
	{ config_id = 361, monster_id = 20010801, pos = { x = 1746.6, y = 228.0, z = -590.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "史莱姆" },
	{ config_id = 362, monster_id = 20010801, pos = { x = 1714.8, y = 233.8, z = -598.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "史莱姆" },
	{ config_id = 363, monster_id = 20011501, pos = { x = 1747.5, y = 232.8, z = -615.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "史莱姆", affix = { 1001 }, isElite = true },
	{ config_id = 364, monster_id = 20011501, pos = { x = 1711.3, y = 234.9, z = -602.5 }, rot = { x = 0.0, y = 80.4, z = 0.0 }, level = 10, drop_tag = "史莱姆", affix = { 1001 }, isElite = true }
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
		monsters = { 360, 361, 362 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 363 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 364 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
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
