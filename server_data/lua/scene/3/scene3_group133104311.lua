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
	{ config_id = 311001, gadget_id = 70500000, pos = { x = 704.6, y = 210.9, z = 864.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 4002, isOneoff = true, persistent = true },
	{ config_id = 311002, gadget_id = 70500000, pos = { x = 671.7, y = 247.4, z = 825.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 4002, isOneoff = true, persistent = true },
	{ config_id = 311003, gadget_id = 70500000, pos = { x = 889.3, y = 210.5, z = 542.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 4002, isOneoff = true, persistent = true },
	{ config_id = 311004, gadget_id = 70500000, pos = { x = 740.2, y = 228.4, z = 680.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true, persistent = true },
	{ config_id = 311005, gadget_id = 70500000, pos = { x = 764.4, y = 212.8, z = 518.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true, persistent = true },
	{ config_id = 311007, gadget_id = 70500000, pos = { x = 632.2, y = 230.2, z = 866.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true, persistent = true }
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
		gadgets = { 311001, 311002, 311003, 311004, 311005, 311007 },
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
