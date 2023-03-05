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
	{ config_id = 154002, gadget_id = 70500000, pos = { x = 418.1, y = 199.9, z = -7.7 }, rot = { x = 358.8, y = 45.7, z = 359.7 }, level = 19, point_type = 2029 },
	{ config_id = 154003, gadget_id = 70500000, pos = { x = 406.1, y = 203.2, z = -41.7 }, rot = { x = 358.8, y = 45.7, z = 359.7 }, level = 19, point_type = 2029 },
	{ config_id = 154004, gadget_id = 70500000, pos = { x = 370.6, y = 199.9, z = -138.9 }, rot = { x = 358.8, y = 45.7, z = 359.7 }, level = 19, point_type = 2029 },
	{ config_id = 804001, gadget_id = 70290001, pos = { x = 703.3, y = 266.6, z = -460.2 }, rot = { x = 0.0, y = 351.2, z = 0.0 }, level = 25 },
	{ config_id = 804002, gadget_id = 70500000, pos = { x = 703.2, y = 267.2, z = -459.8 }, rot = { x = 0.0, y = 351.2, z = 0.0 }, level = 25, point_type = 3002, owner = 804001 },
	{ config_id = 804003, gadget_id = 70500000, pos = { x = 703.2, y = 267.5, z = -460.6 }, rot = { x = 0.0, y = 351.2, z = 0.0 }, level = 25, point_type = 3002, owner = 804001 },
	{ config_id = 804004, gadget_id = 70500000, pos = { x = 703.5, y = 267.9, z = -460.2 }, rot = { x = 0.0, y = 351.2, z = 0.0 }, level = 25, point_type = 3002, owner = 804001 },
	{ config_id = 804005, gadget_id = 70290001, pos = { x = 645.0, y = 314.8, z = -279.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25 },
	{ config_id = 804006, gadget_id = 70500000, pos = { x = 645.0, y = 315.4, z = -279.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, point_type = 3002, owner = 804005 },
	{ config_id = 804007, gadget_id = 70500000, pos = { x = 644.9, y = 315.7, z = -280.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, point_type = 3002, owner = 804005 },
	{ config_id = 804008, gadget_id = 70500000, pos = { x = 645.3, y = 316.1, z = -279.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, point_type = 3002, owner = 804005 },
	{ config_id = 804009, gadget_id = 70290001, pos = { x = 632.0, y = 308.6, z = -237.6 }, rot = { x = 0.0, y = 266.1, z = 0.0 }, level = 25 },
	{ config_id = 804010, gadget_id = 70500000, pos = { x = 631.6, y = 309.2, z = -237.6 }, rot = { x = 0.0, y = 266.1, z = 0.0 }, level = 25, point_type = 3002, owner = 804009 },
	{ config_id = 804011, gadget_id = 70500000, pos = { x = 632.4, y = 309.5, z = -237.6 }, rot = { x = 0.0, y = 266.1, z = 0.0 }, level = 25, point_type = 3002, owner = 804009 },
	{ config_id = 804012, gadget_id = 70500000, pos = { x = 632.1, y = 309.9, z = -237.3 }, rot = { x = 0.0, y = 266.1, z = 0.0 }, level = 25, point_type = 3002, owner = 804009 },
	{ config_id = 804013, gadget_id = 70290001, pos = { x = 579.3, y = 257.1, z = -108.5 }, rot = { x = 0.0, y = 112.1, z = 0.0 }, level = 19 },
	{ config_id = 804014, gadget_id = 70500000, pos = { x = 579.6, y = 257.7, z = -108.6 }, rot = { x = 0.0, y = 112.1, z = 0.0 }, level = 19, point_type = 3002, owner = 804013 },
	{ config_id = 804015, gadget_id = 70500000, pos = { x = 578.9, y = 258.0, z = -108.3 }, rot = { x = 0.0, y = 112.1, z = 0.0 }, level = 19, point_type = 3002, owner = 804013 },
	{ config_id = 804016, gadget_id = 70500000, pos = { x = 579.1, y = 258.4, z = -108.7 }, rot = { x = 0.0, y = 112.1, z = 0.0 }, level = 19, point_type = 3002, owner = 804013 },
	{ config_id = 804021, gadget_id = 70290001, pos = { x = 553.5, y = 201.4, z = -202.6 }, rot = { x = 0.0, y = 285.4, z = 0.0 }, level = 19 },
	{ config_id = 804022, gadget_id = 70500000, pos = { x = 553.1, y = 201.9, z = -202.5 }, rot = { x = 0.0, y = 285.4, z = 0.0 }, level = 19, point_type = 3002, owner = 804021 },
	{ config_id = 804023, gadget_id = 70500000, pos = { x = 553.9, y = 202.2, z = -202.8 }, rot = { x = 0.0, y = 285.4, z = 0.0 }, level = 19, point_type = 3002, owner = 804021 },
	{ config_id = 804024, gadget_id = 70500000, pos = { x = 553.7, y = 202.6, z = -202.4 }, rot = { x = 0.0, y = 285.4, z = 0.0 }, level = 19, point_type = 3002, owner = 804021 },
	{ config_id = 804025, gadget_id = 70290001, pos = { x = 393.9, y = 202.9, z = -81.3 }, rot = { x = 0.0, y = 128.5, z = 0.0 }, level = 19 },
	{ config_id = 804026, gadget_id = 70500000, pos = { x = 394.2, y = 203.5, z = -81.6 }, rot = { x = 0.0, y = 128.5, z = 0.0 }, level = 19, point_type = 3002, owner = 804025 },
	{ config_id = 804027, gadget_id = 70500000, pos = { x = 393.6, y = 203.8, z = -81.0 }, rot = { x = 0.0, y = 128.5, z = 0.0 }, level = 19, point_type = 3002, owner = 804025 },
	{ config_id = 804028, gadget_id = 70500000, pos = { x = 393.6, y = 204.2, z = -81.5 }, rot = { x = 0.0, y = 128.5, z = 0.0 }, level = 19, point_type = 3002, owner = 804025 },
	{ config_id = 804029, gadget_id = 70290001, pos = { x = 880.0, y = 272.3, z = -201.9 }, rot = { x = 0.0, y = 43.2, z = 0.0 }, level = 25 },
	{ config_id = 804030, gadget_id = 70500000, pos = { x = 880.3, y = 272.9, z = -201.6 }, rot = { x = 0.0, y = 43.2, z = 0.0 }, level = 25, point_type = 3002, owner = 804029 },
	{ config_id = 804031, gadget_id = 70500000, pos = { x = 879.7, y = 273.2, z = -202.2 }, rot = { x = 0.0, y = 43.2, z = 0.0 }, level = 25, point_type = 3002, owner = 804029 },
	{ config_id = 804032, gadget_id = 70500000, pos = { x = 880.1, y = 273.6, z = -202.2 }, rot = { x = 0.0, y = 43.2, z = 0.0 }, level = 25, point_type = 3002, owner = 804029 },
	{ config_id = 804033, gadget_id = 70290001, pos = { x = 660.0, y = 263.4, z = -188.4 }, rot = { x = 0.0, y = 352.5, z = 0.0 }, level = 25 },
	{ config_id = 804034, gadget_id = 70500000, pos = { x = 660.0, y = 264.0, z = -188.0 }, rot = { x = 0.0, y = 352.5, z = 0.0 }, level = 25, point_type = 3002, owner = 804033 },
	{ config_id = 804035, gadget_id = 70500000, pos = { x = 660.0, y = 264.3, z = -188.8 }, rot = { x = 0.0, y = 352.5, z = 0.0 }, level = 25, point_type = 3002, owner = 804033 },
	{ config_id = 804036, gadget_id = 70500000, pos = { x = 660.3, y = 264.7, z = -188.4 }, rot = { x = 0.0, y = 352.5, z = 0.0 }, level = 25, point_type = 3002, owner = 804033 },
	{ config_id = 804037, gadget_id = 70290001, pos = { x = 662.8, y = 201.9, z = -5.6 }, rot = { x = 0.0, y = 82.5, z = 0.0 }, level = 19 },
	{ config_id = 804038, gadget_id = 70500000, pos = { x = 663.2, y = 202.4, z = -5.5 }, rot = { x = 0.0, y = 82.5, z = 0.0 }, level = 19, point_type = 3002, owner = 804037 },
	{ config_id = 804039, gadget_id = 70500000, pos = { x = 662.4, y = 202.7, z = -5.6 }, rot = { x = 0.0, y = 82.5, z = 0.0 }, level = 19, point_type = 3002, owner = 804037 },
	{ config_id = 804040, gadget_id = 70500000, pos = { x = 662.8, y = 203.1, z = -5.9 }, rot = { x = 0.0, y = 82.5, z = 0.0 }, level = 19, point_type = 3002, owner = 804037 },
	{ config_id = 804041, gadget_id = 70290001, pos = { x = 580.4, y = 213.8, z = -424.6 }, rot = { x = 0.0, y = 170.3, z = 0.0 }, level = 19 },
	{ config_id = 804042, gadget_id = 70500000, pos = { x = 580.5, y = 214.4, z = -425.0 }, rot = { x = 0.0, y = 170.3, z = 0.0 }, level = 19, point_type = 3002, owner = 804041 },
	{ config_id = 804043, gadget_id = 70500000, pos = { x = 580.4, y = 214.7, z = -424.2 }, rot = { x = 0.0, y = 170.3, z = 0.0 }, level = 19, point_type = 3002, owner = 804041 },
	{ config_id = 804044, gadget_id = 70500000, pos = { x = 580.1, y = 215.1, z = -424.5 }, rot = { x = 0.0, y = 170.3, z = 0.0 }, level = 19, point_type = 3002, owner = 804041 },
	{ config_id = 804045, gadget_id = 70290001, pos = { x = 871.9, y = 205.8, z = -15.2 }, rot = { x = 0.0, y = 227.2, z = 0.0 }, level = 25 },
	{ config_id = 804046, gadget_id = 70500000, pos = { x = 871.6, y = 206.4, z = -15.5 }, rot = { x = 0.0, y = 227.2, z = 0.0 }, level = 25, point_type = 3002, owner = 804045 },
	{ config_id = 804047, gadget_id = 70500000, pos = { x = 872.2, y = 206.7, z = -15.0 }, rot = { x = 0.0, y = 227.2, z = 0.0 }, level = 25, point_type = 3002, owner = 804045 },
	{ config_id = 804048, gadget_id = 70500000, pos = { x = 871.8, y = 207.1, z = -14.9 }, rot = { x = 0.0, y = 227.2, z = 0.0 }, level = 25, point_type = 3002, owner = 804045 },
	{ config_id = 804049, gadget_id = 70290001, pos = { x = 565.0, y = 212.1, z = -381.6 }, rot = { x = 0.0, y = 104.8, z = 0.0 }, level = 19 },
	{ config_id = 804050, gadget_id = 70500000, pos = { x = 565.3, y = 212.6, z = -381.7 }, rot = { x = 0.0, y = 104.8, z = 0.0 }, level = 19, point_type = 3002, owner = 804049 },
	{ config_id = 804051, gadget_id = 70500000, pos = { x = 564.6, y = 212.9, z = -381.4 }, rot = { x = 0.0, y = 104.8, z = 0.0 }, level = 19, point_type = 3002, owner = 804049 },
	{ config_id = 804052, gadget_id = 70500000, pos = { x = 564.8, y = 213.3, z = -381.8 }, rot = { x = 0.0, y = 104.8, z = 0.0 }, level = 19, point_type = 3002, owner = 804049 },
	{ config_id = 804053, gadget_id = 70290001, pos = { x = 884.7, y = 279.2, z = -271.1 }, rot = { x = 0.0, y = 296.2, z = 0.0 }, level = 25 },
	{ config_id = 804054, gadget_id = 70500000, pos = { x = 884.4, y = 279.8, z = -270.9 }, rot = { x = 0.0, y = 296.2, z = 0.0 }, level = 25, point_type = 3002, owner = 804053 },
	{ config_id = 804055, gadget_id = 70500000, pos = { x = 885.0, y = 280.1, z = -271.3 }, rot = { x = 0.0, y = 296.2, z = 0.0 }, level = 25, point_type = 3002, owner = 804053 },
	{ config_id = 804056, gadget_id = 70500000, pos = { x = 884.9, y = 280.5, z = -270.9 }, rot = { x = 0.0, y = 296.2, z = 0.0 }, level = 25, point_type = 3002, owner = 804053 },
	{ config_id = 804057, gadget_id = 70290001, pos = { x = 983.9, y = 224.2, z = -54.8 }, rot = { x = 0.0, y = 337.3, z = 0.0 }, level = 25 },
	{ config_id = 804058, gadget_id = 70500000, pos = { x = 983.8, y = 224.8, z = -54.5 }, rot = { x = 0.0, y = 337.3, z = 0.0 }, level = 25, point_type = 3002, owner = 804057 },
	{ config_id = 804059, gadget_id = 70500000, pos = { x = 984.0, y = 225.1, z = -55.2 }, rot = { x = 0.0, y = 337.3, z = 0.0 }, level = 25, point_type = 3002, owner = 804057 },
	{ config_id = 804060, gadget_id = 70500000, pos = { x = 984.2, y = 225.5, z = -54.8 }, rot = { x = 0.0, y = 337.3, z = 0.0 }, level = 25, point_type = 3002, owner = 804057 }
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
		gadgets = { 154002, 154003, 154004, 804001, 804002, 804003, 804004, 804005, 804006, 804007, 804008, 804009, 804010, 804011, 804012, 804013, 804014, 804015, 804016, 804021, 804022, 804023, 804024, 804025, 804026, 804027, 804028, 804029, 804030, 804031, 804032, 804033, 804034, 804035, 804036, 804037, 804038, 804039, 804040, 804041, 804042, 804043, 804044, 804045, 804046, 804047, 804048, 804049, 804050, 804051, 804052, 804053, 804054, 804055, 804056, 804057, 804058, 804059, 804060 },
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
