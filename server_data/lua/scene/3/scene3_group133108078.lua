--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 78001, monster_id = 28050102, pos = { x = -278.9, y = 244.9, z = -957.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "魔法生物" },
	{ config_id = 78002, monster_id = 28050102, pos = { x = -279.4, y = 245.0, z = -954.5 }, rot = { x = 0.0, y = 242.1, z = 0.0 }, level = 32, drop_tag = "魔法生物" },
	{ config_id = 78003, monster_id = 28050102, pos = { x = -242.1, y = 204.4, z = -977.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "魔法生物" },
	{ config_id = 78004, monster_id = 28050102, pos = { x = -268.3, y = 214.1, z = -970.7 }, rot = { x = 0.0, y = 129.4, z = 0.0 }, level = 32, drop_tag = "魔法生物" },
	{ config_id = 78005, monster_id = 28050102, pos = { x = -287.2, y = 229.5, z = -951.9 }, rot = { x = 0.0, y = 183.0, z = 0.0 }, level = 32, drop_tag = "魔法生物" },
	{ config_id = 78006, monster_id = 28050102, pos = { x = -273.0, y = 227.0, z = -957.6 }, rot = { x = 0.0, y = 267.4, z = 0.0 }, level = 32, drop_tag = "魔法生物" },
	{ config_id = 78007, monster_id = 28050102, pos = { x = -298.6, y = 211.1, z = -899.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "魔法生物" },
	{ config_id = 78008, monster_id = 28050102, pos = { x = -298.7, y = 211.6, z = -906.0 }, rot = { x = 0.0, y = 264.1, z = 0.0 }, level = 32, drop_tag = "魔法生物" },
	{ config_id = 78009, monster_id = 28050102, pos = { x = -284.3, y = 215.2, z = -956.1 }, rot = { x = 0.0, y = 267.4, z = 0.0 }, level = 32, drop_tag = "魔法生物" },
	{ config_id = 78010, monster_id = 28050102, pos = { x = -278.3, y = 215.1, z = -960.7 }, rot = { x = 0.0, y = 223.4, z = 0.0 }, level = 32, drop_tag = "魔法生物" },
	{ config_id = 78011, monster_id = 28050102, pos = { x = -285.2, y = 225.6, z = -968.4 }, rot = { x = 0.0, y = 351.5, z = 0.0 }, level = 32, drop_tag = "魔法生物" }
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
		monsters = { 78001, 78002, 78003, 78004, 78005, 78006, 78007, 78008, 78009, 78010, 78011 },
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