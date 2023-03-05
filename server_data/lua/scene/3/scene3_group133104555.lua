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
	{ config_id = 555001, gadget_id = 70210101, pos = { x = 908.1, y = 201.5, z = 524.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 555002, gadget_id = 70210101, pos = { x = 876.2, y = 201.4, z = 525.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "搜刮点解谜矿石璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 555003, gadget_id = 70210101, pos = { x = 868.4, y = 203.1, z = 533.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "搜刮点解谜果蔬璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 555004, gadget_id = 70210105, pos = { x = 896.9, y = 200.0, z = 536.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "水上搜刮点璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 555005, gadget_id = 70210105, pos = { x = 909.5, y = 200.0, z = 521.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "水上搜刮点璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 555001, 555002, 555003, 555004, 555005 },
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
