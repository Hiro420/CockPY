--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 503001, monster_id = 21020101, pos = { x = 2189.0, y = 260.4, z = -1737.3 }, rot = { x = 0.0, y = 260.5, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 1403 }, isElite = true, pose_id = 401 },
	{ config_id = 503002, monster_id = 21010301, pos = { x = 2181.7, y = 259.5, z = -1736.6 }, rot = { x = 0.0, y = 195.9, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 503003, monster_id = 21010301, pos = { x = 2184.7, y = 260.0, z = -1738.4 }, rot = { x = 0.0, y = 248.9, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 503004, monster_id = 21010301, pos = { x = 2177.8, y = 259.6, z = -1736.8 }, rot = { x = 0.0, y = 155.5, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 503005, monster_id = 21010301, pos = { x = 2176.1, y = 259.8, z = -1740.7 }, rot = { x = 0.0, y = 79.9, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 }
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
		monsters = { 503001, 503002, 503003, 503004, 503005 },
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
