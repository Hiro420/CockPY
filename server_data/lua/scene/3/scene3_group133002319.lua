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
	{ config_id = 319001, gadget_id = 70360041, pos = { x = 1992.8, y = 236.9, z = -627.7 }, rot = { x = 0.0, y = 287.9, z = 0.0 }, level = 10, persistent = true, interact_id = 2 },
	{ config_id = 319002, gadget_id = 70360041, pos = { x = 1579.1, y = 234.5, z = -197.8 }, rot = { x = 0.0, y = 319.0, z = 0.0 }, level = 10, persistent = true, interact_id = 2 },
	{ config_id = 319003, gadget_id = 70360041, pos = { x = 1982.4, y = 225.5, z = -994.5 }, rot = { x = 0.0, y = 247.6, z = 0.0 }, level = 5, persistent = true, interact_id = 2 },
	{ config_id = 319004, gadget_id = 70211131, pos = { x = 1992.8, y = 237.8, z = -627.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "灵龛蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 319005, gadget_id = 70211131, pos = { x = 1579.1, y = 235.3, z = -197.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "灵龛璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 319006, gadget_id = 70211131, pos = { x = 1982.4, y = 226.3, z = -994.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "灵龛蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 319001, 319002, 319003, 319004, 319005, 319006 },
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
