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
	{ config_id = 410001, gadget_id = 70500000, pos = { x = 1446.4, y = 251.1, z = 625.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 4002, isOneoff = true },
	{ config_id = 410002, gadget_id = 70500000, pos = { x = 1477.4, y = 249.5, z = 453.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 4002, isOneoff = true },
	{ config_id = 410003, gadget_id = 70500000, pos = { x = 1785.2, y = 308.2, z = 328.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 4002, isOneoff = true },
	{ config_id = 410004, gadget_id = 70500000, pos = { x = 1780.7, y = 232.0, z = 683.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 4002, isOneoff = true },
	{ config_id = 410005, gadget_id = 70500000, pos = { x = 1509.1, y = 226.0, z = 586.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 4002, isOneoff = true },
	{ config_id = 410006, gadget_id = 70500000, pos = { x = 1727.1, y = 347.3, z = 450.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 4002, isOneoff = true },
	{ config_id = 410007, gadget_id = 70500000, pos = { x = 1866.6, y = 234.0, z = 852.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 4002, isOneoff = true },
	{ config_id = 410009, gadget_id = 70500000, pos = { x = 1542.2, y = 289.3, z = 377.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 4002, isOneoff = true },
	{ config_id = 410010, gadget_id = 70500000, pos = { x = 1811.2, y = 235.2, z = 600.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 4002, isOneoff = true },
	{ config_id = 410011, gadget_id = 70500000, pos = { x = 1851.8, y = 213.0, z = 726.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 4002, isOneoff = true },
	{ config_id = 410012, gadget_id = 70500000, pos = { x = 1409.6, y = 221.2, z = 467.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 4002, isOneoff = true },
	{ config_id = 410013, gadget_id = 70500000, pos = { x = 1571.5, y = 222.1, z = 829.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 4002, isOneoff = true },
	{ config_id = 410014, gadget_id = 70500000, pos = { x = 1995.1, y = 242.3, z = 688.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 4002, isOneoff = true },
	{ config_id = 410015, gadget_id = 70500000, pos = { x = 1830.0, y = 247.5, z = 461.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 4002, isOneoff = true },
	{ config_id = 410016, gadget_id = 70500000, pos = { x = 1357.3, y = 220.7, z = 642.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 4002, isOneoff = true },
	{ config_id = 410017, gadget_id = 70500000, pos = { x = 1512.0, y = 213.7, z = 786.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 4002, isOneoff = true },
	{ config_id = 410018, gadget_id = 70500000, pos = { x = 1779.2, y = 231.0, z = 843.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 4002, isOneoff = true },
	{ config_id = 410019, gadget_id = 70500000, pos = { x = 1303.9, y = 210.3, z = 447.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 4002, isOneoff = true }
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
		gadgets = { 410001, 410002, 410003, 410004, 410005, 410006, 410007, 410009, 410010, 410011, 410012, 410013, 410014, 410015, 410016, 410017, 410018, 410019 },
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
