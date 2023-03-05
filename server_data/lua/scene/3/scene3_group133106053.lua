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
	{ config_id = 53001, gadget_id = 70500000, pos = { x = -842.3, y = 197.6, z = 939.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 4002, isOneoff = true },
	{ config_id = 53002, gadget_id = 70500000, pos = { x = -846.3, y = 201.4, z = 760.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 4002, isOneoff = true },
	{ config_id = 53004, gadget_id = 70500000, pos = { x = -875.4, y = 215.9, z = 1270.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 4002, isOneoff = true },
	{ config_id = 53005, gadget_id = 70500000, pos = { x = -550.6, y = 194.9, z = 1093.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 4002, isOneoff = true },
	{ config_id = 53007, gadget_id = 70500000, pos = { x = -513.6, y = 248.3, z = 1282.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 4002, isOneoff = true },
	{ config_id = 53008, gadget_id = 70500000, pos = { x = -254.9, y = 247.2, z = 1244.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 4002, isOneoff = true },
	{ config_id = 53009, gadget_id = 70500000, pos = { x = -497.6, y = 187.9, z = 879.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 4002, isOneoff = true },
	{ config_id = 53010, gadget_id = 70500000, pos = { x = -651.7, y = 236.3, z = 1280.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 4002, isOneoff = true },
	{ config_id = 53011, gadget_id = 70500000, pos = { x = -171.9, y = 164.6, z = 946.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 4002, isOneoff = true },
	{ config_id = 53012, gadget_id = 70500000, pos = { x = -185.2, y = 209.3, z = 869.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 4002, isOneoff = true },
	{ config_id = 53013, gadget_id = 70500000, pos = { x = -158.2, y = 219.3, z = 1037.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 4002, isOneoff = true },
	{ config_id = 53014, gadget_id = 70500000, pos = { x = -582.5, y = 262.1, z = 697.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 4002, isOneoff = true },
	{ config_id = 53015, gadget_id = 70500000, pos = { x = -344.4, y = 238.1, z = 1149.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 4002, isOneoff = true }
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
		gadgets = { 53001, 53002, 53004, 53005, 53007, 53008, 53009, 53010, 53011, 53012, 53013, 53014, 53015 },
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
