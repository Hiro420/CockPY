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
	{ config_id = 148001, gadget_id = 70210101, pos = { x = 1044.4, y = 269.8, z = 1511.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 148002, gadget_id = 70210101, pos = { x = 1049.5, y = 271.2, z = 1497.4 }, rot = { x = 0.0, y = 196.1, z = 0.0 }, level = 24, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 148001, 148002 },
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