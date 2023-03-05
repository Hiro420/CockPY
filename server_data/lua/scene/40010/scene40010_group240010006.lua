--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 49, gadget_id = 70220005, pos = { x = -152.7, y = 18.0, z = 41.1 }, rot = { x = 0.0, y = 40.5, z = 0.0 }, level = 1 },
	{ config_id = 50, gadget_id = 70220005, pos = { x = -143.6, y = 17.9, z = 40.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 51, gadget_id = 70220005, pos = { x = -141.0, y = 17.9, z = 41.5 }, rot = { x = 0.0, y = 353.9, z = 0.0 }, level = 1 },
	{ config_id = 52, gadget_id = 70211103, pos = { x = -137.6, y = 19.0, z = 45.8 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1, drop_tag = "解谜低级蒙德", state = GadgetState.ChestBramble, isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 53, gadget_id = 70211103, pos = { x = -156.2, y = 19.0, z = 45.9 }, rot = { x = 0.0, y = 88.8, z = 0.0 }, level = 1, drop_tag = "解谜低级蒙德", state = GadgetState.ChestBramble, isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 54, gadget_id = 70220014, pos = { x = -152.0, y = 18.0, z = 39.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 55, gadget_id = 70220014, pos = { x = -141.8, y = 17.9, z = 39.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 56, gadget_id = 70220014, pos = { x = -140.9, y = 17.9, z = 40.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 57, gadget_id = 70211012, pos = { x = -147.0, y = 18.0, z = 46.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, chest_drop_id = 18000000, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
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
		gadgets = { 49, 50, 51, 52, 53, 54, 55, 56, 57 },
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
