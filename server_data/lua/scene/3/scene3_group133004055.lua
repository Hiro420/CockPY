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
	{ config_id = 234, gadget_id = 70210101, pos = { x = 2721.3, y = 209.4, z = -19.6 }, rot = { x = 0.0, y = 175.7, z = 0.0 }, level = 23, drop_tag = "搜刮点解谜通用蒙德" },
	{ config_id = 235, gadget_id = 70210101, pos = { x = 2715.1, y = 209.2, z = -36.2 }, rot = { x = 0.0, y = 175.7, z = 0.0 }, level = 23, drop_tag = "搜刮点解谜通用蒙德" },
	{ config_id = 236, gadget_id = 70210101, pos = { x = 2614.6, y = 211.9, z = -133.5 }, rot = { x = 0.0, y = 175.7, z = 0.0 }, level = 23, drop_tag = "搜刮点解谜通用蒙德" },
	{ config_id = 237, gadget_id = 70210101, pos = { x = 2606.7, y = 211.1, z = -139.6 }, rot = { x = 0.0, y = 175.7, z = 0.0 }, level = 23, drop_tag = "搜刮点解谜通用蒙德" }
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
	rand_suite = true
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
		gadgets = { 234, 235, 236, 237 },
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