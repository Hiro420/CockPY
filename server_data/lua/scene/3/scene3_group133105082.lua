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
	{ config_id = 191, gadget_id = 70500000, pos = { x = 370.8, y = 219.1, z = -192.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true },
	{ config_id = 192, gadget_id = 70500000, pos = { x = 546.7, y = 242.2, z = -100.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true },
	{ config_id = 193, gadget_id = 70500000, pos = { x = 595.1, y = 303.0, z = -272.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, point_type = 4002, isOneoff = true },
	{ config_id = 194, gadget_id = 70500000, pos = { x = 570.6, y = 234.8, z = -222.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true },
	{ config_id = 195, gadget_id = 70500000, pos = { x = 622.8, y = 225.8, z = -503.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true },
	{ config_id = 196, gadget_id = 70500000, pos = { x = 675.4, y = 245.7, z = -452.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, point_type = 4002, isOneoff = true },
	{ config_id = 197, gadget_id = 70500000, pos = { x = 739.2, y = 253.4, z = -285.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, point_type = 4002, isOneoff = true },
	{ config_id = 198, gadget_id = 70500000, pos = { x = 883.5, y = 246.6, z = -142.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, point_type = 4002, isOneoff = true },
	{ config_id = 199, gadget_id = 70500000, pos = { x = 949.6, y = 279.0, z = -235.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, point_type = 4002, isOneoff = true },
	{ config_id = 200, gadget_id = 70500000, pos = { x = 846.2, y = 289.0, z = -240.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, point_type = 4002, isOneoff = true },
	{ config_id = 201, gadget_id = 70500000, pos = { x = 273.9, y = 206.2, z = -107.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true },
	{ config_id = 388, gadget_id = 70500000, pos = { x = 749.6, y = 285.7, z = -77.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, point_type = 4002, isOneoff = true },
	{ config_id = 437, gadget_id = 70500000, pos = { x = 656.8, y = 203.5, z = 21.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true },
	{ config_id = 82001, gadget_id = 70500000, pos = { x = 818.1, y = 272.3, z = -150.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, point_type = 4002, isOneoff = true },
	{ config_id = 82002, gadget_id = 70500000, pos = { x = 482.2, y = 203.6, z = -454.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true },
	{ config_id = 82003, gadget_id = 70500000, pos = { x = 52.6, y = 203.4, z = -154.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 4002, isOneoff = true },
	{ config_id = 82004, gadget_id = 70500000, pos = { x = 398.5, y = 216.3, z = -760.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, point_type = 4002, isOneoff = true },
	{ config_id = 82009, gadget_id = 70500000, pos = { x = 823.4, y = 219.9, z = -84.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, point_type = 4002, isOneoff = true }
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
		gadgets = { 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 388, 437, 82001, 82002, 82003, 82004, 82009 },
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
