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
	{ config_id = 638001, gadget_id = 70210105, pos = { x = 1236.6, y = 210.4, z = 998.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "水上搜刮点璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 638002, gadget_id = 70210105, pos = { x = 1250.4, y = 210.4, z = 1025.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "水上搜刮点璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 638003, gadget_id = 70210105, pos = { x = 1231.4, y = 201.5, z = 972.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "水上搜刮点璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 638004, gadget_id = 70210105, pos = { x = 1208.9, y = 201.5, z = 899.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "水上搜刮点璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 638001, 638002, 638003, 638004 },
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
