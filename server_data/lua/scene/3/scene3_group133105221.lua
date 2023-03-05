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
	{ config_id = 221001, gadget_id = 70500000, pos = { x = 887.8, y = 214.2, z = -46.6 }, rot = { x = 0.0, y = 0.0, z = 344.9 }, level = 1, point_type = 1001 },
	{ config_id = 221002, gadget_id = 70500000, pos = { x = 882.1, y = 213.2, z = -43.2 }, rot = { x = 0.0, y = 236.0, z = 0.0 }, level = 1, point_type = 1002 },
	{ config_id = 221003, gadget_id = 70500000, pos = { x = 417.6, y = 201.3, z = -14.4 }, rot = { x = 0.0, y = 147.9, z = 0.0 }, level = 1, point_type = 1002 },
	{ config_id = 221004, gadget_id = 70500000, pos = { x = 424.9, y = 200.7, z = -6.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 1002 },
	{ config_id = 221005, gadget_id = 70290016, pos = { x = 516.0, y = 200.1, z = -498.5 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 221006, gadget_id = 70500000, pos = { x = 516.0, y = 200.1, z = -498.5 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, point_type = 3010, owner = 221005 },
	{ config_id = 221007, gadget_id = 70500000, pos = { x = 678.8, y = 248.8, z = -411.2 }, rot = { x = 0.0, y = 0.0, z = 20.4 }, level = 1, point_type = 1004 },
	{ config_id = 221008, gadget_id = 70500000, pos = { x = 668.6, y = 248.5, z = -411.7 }, rot = { x = 349.7, y = 220.6, z = 0.4 }, level = 1, point_type = 1004 },
	{ config_id = 221009, gadget_id = 70500000, pos = { x = 673.6, y = 248.6, z = -408.7 }, rot = { x = 20.7, y = 96.2, z = 349.1 }, level = 1, point_type = 1004 },
	{ config_id = 221010, gadget_id = 70500000, pos = { x = 691.9, y = 279.8, z = -325.7 }, rot = { x = 0.0, y = 0.0, z = 347.6 }, level = 1, point_type = 1001 },
	{ config_id = 221011, gadget_id = 70500000, pos = { x = 693.0, y = 279.8, z = -327.7 }, rot = { x = 342.7, y = 312.6, z = 324.6 }, level = 1, point_type = 1001 },
	{ config_id = 221012, gadget_id = 70500000, pos = { x = 1015.4, y = 250.1, z = -234.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 1001 },
	{ config_id = 221013, gadget_id = 70500000, pos = { x = 1020.1, y = 249.3, z = -233.2 }, rot = { x = 0.0, y = 293.2, z = 9.9 }, level = 1, point_type = 1001 },
	{ config_id = 221014, gadget_id = 70500000, pos = { x = 717.9, y = 250.6, z = -326.9 }, rot = { x = 342.7, y = 312.6, z = 324.6 }, level = 1, point_type = 1001 },
	{ config_id = 221015, gadget_id = 70500000, pos = { x = 718.9, y = 250.5, z = -330.8 }, rot = { x = 324.7, y = 188.7, z = 0.9 }, level = 1, point_type = 1001 }
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
		gadgets = { 221001, 221002, 221003, 221004, 221005, 221006, 221007, 221008, 221009, 221010, 221011, 221012, 221013, 221014, 221015 },
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