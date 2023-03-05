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
	{ config_id = 691, gadget_id = 70500000, pos = { x = 1277.9, y = 209.5, z = 202.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 4002, isOneoff = true },
	{ config_id = 71001, gadget_id = 70500000, pos = { x = 946.0, y = 228.0, z = 162.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 4002, isOneoff = true },
	{ config_id = 71002, gadget_id = 70500000, pos = { x = 1237.2, y = 209.3, z = 353.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 4002, isOneoff = true },
	{ config_id = 71004, gadget_id = 70500000, pos = { x = 1139.3, y = 204.1, z = 579.0 }, rot = { x = 0.0, y = 260.1, z = 0.0 }, level = 16, point_type = 4002, isOneoff = true },
	{ config_id = 71005, gadget_id = 70500000, pos = { x = 1056.8, y = 239.4, z = 428.2 }, rot = { x = 0.0, y = 78.7, z = 0.0 }, level = 16, point_type = 4002, showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 71006, gadget_id = 70500000, pos = { x = 1576.8, y = 238.2, z = 195.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 4002, isOneoff = true, persistent = true },
	{ config_id = 71007, gadget_id = 70500000, pos = { x = 1218.4, y = 201.2, z = -137.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 4002, isOneoff = true, persistent = true },
	{ config_id = 71008, gadget_id = 70500000, pos = { x = 1366.5, y = 208.8, z = 299.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 4002, isOneoff = true, persistent = true }
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
		gadgets = { 691, 71001, 71002, 71004, 71005, 71006, 71007, 71008 },
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
