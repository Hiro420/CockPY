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
	{ config_id = 806001, gadget_id = 70500000, pos = { x = 588.8, y = 230.3, z = 791.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 2004 },
	{ config_id = 806002, gadget_id = 70500000, pos = { x = 594.6, y = 231.7, z = 791.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 2004 },
	{ config_id = 806003, gadget_id = 70500000, pos = { x = 426.8, y = 209.6, z = 793.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 2004 },
	{ config_id = 806004, gadget_id = 70290010, pos = { x = 414.2, y = 224.0, z = 753.6 }, rot = { x = 5.8, y = 358.9, z = 338.7 }, level = 19 },
	{ config_id = 806005, gadget_id = 70500000, pos = { x = 414.2, y = 224.0, z = 753.6 }, rot = { x = 5.8, y = 358.9, z = 338.7 }, level = 19, point_type = 3006, owner = 806004 },
	{ config_id = 806006, gadget_id = 70290010, pos = { x = 413.3, y = 222.5, z = 766.8 }, rot = { x = 4.1, y = 359.1, z = 335.6 }, level = 19 },
	{ config_id = 806007, gadget_id = 70500000, pos = { x = 413.3, y = 222.5, z = 766.8 }, rot = { x = 4.1, y = 359.1, z = 335.6 }, level = 19, point_type = 3006, owner = 806006 },
	{ config_id = 806008, gadget_id = 70290010, pos = { x = 369.0, y = 218.2, z = 840.2 }, rot = { x = 343.5, y = 3.8, z = 334.2 }, level = 19 },
	{ config_id = 806009, gadget_id = 70500000, pos = { x = 369.0, y = 218.2, z = 840.2 }, rot = { x = 343.5, y = 3.8, z = 334.2 }, level = 19, point_type = 3006, owner = 806008 },
	{ config_id = 806010, gadget_id = 70290009, pos = { x = 461.9, y = 222.7, z = 835.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 806011, gadget_id = 70500000, pos = { x = 461.9, y = 222.7, z = 835.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 3005, owner = 806010 },
	{ config_id = 806012, gadget_id = 70290009, pos = { x = 430.8, y = 218.5, z = 770.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 806013, gadget_id = 70500000, pos = { x = 430.8, y = 218.5, z = 770.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 3005, owner = 806012 },
	{ config_id = 806014, gadget_id = 70290009, pos = { x = 374.3, y = 233.0, z = 840.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 806015, gadget_id = 70500000, pos = { x = 374.3, y = 233.0, z = 840.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 3005, owner = 806014 },
	{ config_id = 806016, gadget_id = 70290009, pos = { x = 434.5, y = 223.4, z = 958.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 806017, gadget_id = 70500000, pos = { x = 434.5, y = 223.4, z = 958.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 3005, owner = 806016 },
	{ config_id = 806018, gadget_id = 70290009, pos = { x = 322.7, y = 239.2, z = 942.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 806019, gadget_id = 70500000, pos = { x = 322.7, y = 239.2, z = 942.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 3005, owner = 806018 },
	{ config_id = 806020, gadget_id = 70290008, pos = { x = 392.0, y = 250.0, z = 756.3 }, rot = { x = 357.9, y = 0.0, z = 358.5 }, level = 19 },
	{ config_id = 806021, gadget_id = 70500000, pos = { x = 392.0, y = 250.0, z = 756.3 }, rot = { x = 357.9, y = 0.0, z = 358.5 }, level = 19, point_type = 3008, owner = 806020 },
	{ config_id = 806022, gadget_id = 70290008, pos = { x = 413.6, y = 210.9, z = 805.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 806023, gadget_id = 70500000, pos = { x = 413.6, y = 210.9, z = 805.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 3008, owner = 806022 },
	{ config_id = 806024, gadget_id = 70290008, pos = { x = 442.5, y = 215.5, z = 855.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 806025, gadget_id = 70500000, pos = { x = 442.5, y = 215.5, z = 855.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 3008, owner = 806024 },
	{ config_id = 806026, gadget_id = 70290008, pos = { x = 508.1, y = 235.6, z = 900.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 806027, gadget_id = 70500000, pos = { x = 508.1, y = 235.6, z = 900.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 3008, owner = 806026 },
	{ config_id = 806028, gadget_id = 70290008, pos = { x = 467.3, y = 227.2, z = 909.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 806029, gadget_id = 70500000, pos = { x = 467.3, y = 227.2, z = 909.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 3008, owner = 806028 },
	{ config_id = 806030, gadget_id = 70290008, pos = { x = 428.3, y = 231.6, z = 985.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 806031, gadget_id = 70500000, pos = { x = 428.3, y = 231.6, z = 985.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 3008, owner = 806030 },
	{ config_id = 806032, gadget_id = 70290016, pos = { x = 403.6, y = 227.6, z = 976.5 }, rot = { x = 347.0, y = 2.6, z = 355.9 }, level = 19 },
	{ config_id = 806033, gadget_id = 70500000, pos = { x = 403.6, y = 227.6, z = 976.5 }, rot = { x = 347.0, y = 2.6, z = 355.9 }, level = 19, point_type = 3010, owner = 806032 },
	{ config_id = 806034, gadget_id = 70290016, pos = { x = 392.9, y = 228.7, z = 978.7 }, rot = { x = 0.0, y = 163.3, z = 0.0 }, level = 19 },
	{ config_id = 806035, gadget_id = 70500000, pos = { x = 392.9, y = 228.7, z = 978.7 }, rot = { x = 0.0, y = 163.3, z = 0.0 }, level = 19, point_type = 3010, owner = 806034 },
	{ config_id = 806036, gadget_id = 70290016, pos = { x = 385.3, y = 215.0, z = 937.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 806037, gadget_id = 70500000, pos = { x = 385.3, y = 215.0, z = 937.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 3010, owner = 806036 },
	{ config_id = 806038, gadget_id = 70290016, pos = { x = 295.4, y = 230.1, z = 931.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 806039, gadget_id = 70500000, pos = { x = 295.4, y = 230.1, z = 931.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 3010, owner = 806038 },
	{ config_id = 806040, gadget_id = 70500000, pos = { x = 263.5, y = 238.5, z = 965.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 2004 },
	{ config_id = 806041, gadget_id = 70500000, pos = { x = 285.3, y = 239.3, z = 989.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 2004 }
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
		gadgets = { 806001, 806002, 806003, 806004, 806005, 806006, 806007, 806008, 806009, 806010, 806011, 806012, 806013, 806014, 806015, 806016, 806017, 806018, 806019, 806020, 806021, 806022, 806023, 806024, 806025, 806026, 806027, 806028, 806029, 806030, 806031, 806032, 806033, 806034, 806035, 806036, 806037, 806038, 806039, 806040, 806041 },
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
