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
	{ config_id = 328001, gadget_id = 70360041, pos = { x = 1589.5, y = 279.5, z = -1510.7 }, rot = { x = 0.0, y = 319.9, z = 0.0 }, level = 15, persistent = true, interact_id = 2 },
	{ config_id = 328002, gadget_id = 70360041, pos = { x = 1375.4, y = 313.3, z = -1282.8 }, rot = { x = 0.0, y = 325.2, z = 0.0 }, level = 10, persistent = true, interact_id = 2 },
	{ config_id = 328003, gadget_id = 70211131, pos = { x = 1589.5, y = 280.4, z = -1510.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "灵龛蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 328004, gadget_id = 70211131, pos = { x = 1375.4, y = 314.1, z = -1282.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "灵龛蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 328005, gadget_id = 70211131, pos = { x = 1707.9, y = 267.7, z = -1204.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "灵龛蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 328006, gadget_id = 70360041, pos = { x = 1707.9, y = 266.8, z = -1204.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, persistent = true, interact_id = 2 }
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
		gadgets = { 328001, 328002, 328003, 328004, 328005, 328006 },
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
