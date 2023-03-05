--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 345, monster_id = 21010501, pos = { x = 1396.5, y = 206.2, z = 422.2 }, rot = { x = 0.0, y = 129.0, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 347, monster_id = 21010101, pos = { x = 1387.6, y = 206.7, z = 431.2 }, rot = { x = 0.0, y = 124.3, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 },
	{ config_id = 348, monster_id = 21010101, pos = { x = 1387.8, y = 206.6, z = 428.9 }, rot = { x = 0.0, y = 63.9, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 },
	{ config_id = 190001, monster_id = 21010501, pos = { x = 1399.4, y = 207.7, z = 426.8 }, rot = { x = 0.0, y = 155.8, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 687, gadget_id = 70211101, pos = { x = 1390.8, y = 205.9, z = 429.7 }, rot = { x = 326.7, y = 280.3, z = 349.4 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	{ config_id = 190002, gadget_id = 70211101, pos = { x = 1395.7, y = 207.0, z = 433.0 }, rot = { x = 0.0, y = 133.9, z = 3.2 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true }
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
		-- description = suite_1,
		monsters = { 345, 347, 348, 190001 },
		gadgets = { 687, 190002 },
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
