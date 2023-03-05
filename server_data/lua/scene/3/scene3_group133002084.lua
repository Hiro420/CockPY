--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 178, monster_id = 21011001, pos = { x = 1712.7, y = 257.4, z = -757.7 }, rot = { x = 0.0, y = 158.1, z = 0.0 }, level = 12, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 179, monster_id = 21010201, pos = { x = 1705.0, y = 255.3, z = -792.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 12, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 180, monster_id = 21010201, pos = { x = 1713.9, y = 254.2, z = -770.0 }, rot = { x = 0.0, y = 175.3, z = 0.0 }, level = 12, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 181, monster_id = 21030101, pos = { x = 1705.1, y = 255.2, z = -761.1 }, rot = { x = 0.0, y = 144.4, z = 0.0 }, level = 12, drop_tag = "丘丘萨满" },
	{ config_id = 494, monster_id = 21010301, pos = { x = 1705.2, y = 255.2, z = -791.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 495, monster_id = 21010301, pos = { x = 1714.3, y = 254.1, z = -770.5 }, rot = { x = 0.0, y = 175.3, z = 0.0 }, level = 10, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 496, monster_id = 21010901, pos = { x = 1713.7, y = 257.1, z = -758.2 }, rot = { x = 0.0, y = 158.1, z = 0.0 }, level = 10, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 497, monster_id = 21030101, pos = { x = 1706.4, y = 255.3, z = -760.0 }, rot = { x = 0.0, y = 144.4, z = 0.0 }, level = 10, drop_tag = "丘丘萨满" }
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
		monsters = { 178, 179, 180, 181 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 494, 495, 496, 497 },
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
