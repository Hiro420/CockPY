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
	{ config_id = 505001, gadget_id = 70360041, pos = { x = 2874.3, y = 287.0, z = -1194.4 }, rot = { x = 0.0, y = 187.3, z = 0.0 }, level = 30, persistent = true, interact_id = 2 },
	{ config_id = 505002, gadget_id = 70360041, pos = { x = 2589.5, y = 261.6, z = -1679.2 }, rot = { x = 0.0, y = 36.8, z = 0.0 }, level = 30, persistent = true, interact_id = 2 },
	{ config_id = 505003, gadget_id = 70211131, pos = { x = 2874.3, y = 287.8, z = -1194.4 }, rot = { x = 0.0, y = 187.7, z = 0.0 }, level = 30, drop_tag = "灵龛蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 505004, gadget_id = 70211131, pos = { x = 2589.5, y = 262.5, z = -1679.2 }, rot = { x = 0.0, y = 215.4, z = 0.0 }, level = 30, drop_tag = "灵龛蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 505001, 505002, 505003, 505004 },
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
