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
	{ config_id = 114001, gadget_id = 70210101, pos = { x = -621.0, y = 218.3, z = 1289.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "搜刮点解谜矿石璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 114002, gadget_id = 70210101, pos = { x = -619.9, y = 220.8, z = 1311.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "搜刮点解谜矿石璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 114003, gadget_id = 70210101, pos = { x = -625.9, y = 221.3, z = 1315.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "搜刮点解谜矿石璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 114004, gadget_id = 70210101, pos = { x = -606.1, y = 222.5, z = 1324.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "搜刮点解谜矿石璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 114005, gadget_id = 70210101, pos = { x = -596.8, y = 223.6, z = 1314.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "搜刮点解谜矿石璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 114006, gadget_id = 70210101, pos = { x = -607.9, y = 219.2, z = 1295.5 }, rot = { x = 0.0, y = 236.0, z = 0.0 }, level = 32, drop_tag = "搜刮点解谜矿石璃月", persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 114001, 114002, 114003, 114004, 114005, 114006 },
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
