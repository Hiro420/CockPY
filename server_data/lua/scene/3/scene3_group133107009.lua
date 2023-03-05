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
	{ config_id = 9001, gadget_id = 70500000, pos = { x = -549.3, y = 239.2, z = 384.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 9043, isOneoff = true },
	{ config_id = 9002, gadget_id = 70500000, pos = { x = -544.3, y = 238.8, z = 384.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 9044, isOneoff = true },
	{ config_id = 9003, gadget_id = 70500000, pos = { x = -544.2, y = 239.2, z = 390.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 9042, isOneoff = true },
	{ config_id = 9004, gadget_id = 70500000, pos = { x = -541.1, y = 238.8, z = 390.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 9045, isOneoff = true },
	{ config_id = 9005, gadget_id = 70500000, pos = { x = -548.5, y = 238.8, z = 379.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 9056, isOneoff = true },
	{ config_id = 9006, gadget_id = 70500000, pos = { x = -540.1, y = 238.8, z = 384.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 9057, isOneoff = true },
	{ config_id = 9007, gadget_id = 70500000, pos = { x = -549.8, y = 238.9, z = 383.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 9060, isOneoff = true },
	{ config_id = 9008, gadget_id = 70500000, pos = { x = -548.2, y = 239.4, z = 384.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 9061, isOneoff = true },
	{ config_id = 9009, gadget_id = 70500000, pos = { x = -547.3, y = 238.6, z = 384.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 9064, isOneoff = true }
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
		gadgets = { 9001, 9002, 9003, 9004, 9005, 9006, 9007, 9008, 9009 },
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
