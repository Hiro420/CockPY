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
	{ config_id = 98001, gadget_id = 70210101, pos = { x = -655.5, y = 222.1, z = 841.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "搜刮点解谜通用璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 98002, gadget_id = 70210101, pos = { x = -652.4, y = 222.1, z = 840.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "搜刮点解谜通用璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 98003, gadget_id = 70210101, pos = { x = -651.7, y = 222.1, z = 835.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "搜刮点解谜通用璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 98004, gadget_id = 70210101, pos = { x = -656.6, y = 222.3, z = 838.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "搜刮点解谜人文璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 98005, gadget_id = 70310009, pos = { x = -660.3, y = 220.8, z = 847.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 }
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
		gadgets = { 98001, 98002, 98003, 98004, 98005 },
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
