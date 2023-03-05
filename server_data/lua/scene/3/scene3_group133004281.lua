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
	{ config_id = 281001, gadget_id = 70360041, pos = { x = 2154.6, y = 279.4, z = -281.8 }, rot = { x = 0.0, y = 55.9, z = 0.0 }, level = 15, persistent = true, interact_id = 2 },
	{ config_id = 281002, gadget_id = 70360041, pos = { x = 2751.6, y = 250.8, z = -535.8 }, rot = { x = 0.0, y = 89.4, z = 0.0 }, level = 15, persistent = true, interact_id = 2 },
	{ config_id = 281003, gadget_id = 70211131, pos = { x = 2154.6, y = 280.2, z = -281.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "灵龛蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 281004, gadget_id = 70211131, pos = { x = 2751.6, y = 251.6, z = -535.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "灵龛蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 281001, 281002, 281003, 281004 },
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
