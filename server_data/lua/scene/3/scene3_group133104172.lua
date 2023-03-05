--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 408, monster_id = 28020301, pos = { x = 222.9, y = 208.2, z = 883.1 }, rot = { x = 19.5, y = 259.3, z = 352.1 }, level = 19, drop_tag = "走兽" },
	{ config_id = 409, monster_id = 28020301, pos = { x = 202.5, y = 207.3, z = 869.6 }, rot = { x = 0.0, y = 198.4, z = 0.0 }, level = 19, drop_tag = "走兽" },
	{ config_id = 172001, monster_id = 28010101, pos = { x = 169.1, y = 200.5, z = 663.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 172002, monster_id = 28010101, pos = { x = 171.0, y = 200.5, z = 666.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 172003, monster_id = 28010101, pos = { x = 172.1, y = 200.5, z = 663.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 172004, monster_id = 28010101, pos = { x = 132.6, y = 201.6, z = 714.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 172005, monster_id = 28010101, pos = { x = 130.6, y = 201.6, z = 718.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 172006, monster_id = 28010101, pos = { x = 138.5, y = 201.6, z = 719.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 172007, monster_id = 28040101, pos = { x = 188.9, y = 200.0, z = 736.4 }, rot = { x = 0.0, y = 47.9, z = 0.0 }, level = 19, drop_tag = "水族" },
	{ config_id = 172008, monster_id = 28040101, pos = { x = 184.0, y = 200.0, z = 734.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "水族" },
	{ config_id = 172009, monster_id = 28040101, pos = { x = 189.1, y = 200.0, z = 732.4 }, rot = { x = 0.0, y = 265.2, z = 0.0 }, level = 19, drop_tag = "水族" },
	{ config_id = 172010, monster_id = 28040101, pos = { x = 185.9, y = 200.0, z = 728.3 }, rot = { x = 0.0, y = 50.8, z = 0.0 }, level = 19, drop_tag = "水族" },
	{ config_id = 172011, monster_id = 28010101, pos = { x = 110.7, y = 207.6, z = 747.4 }, rot = { x = 0.0, y = 105.2, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 172012, monster_id = 28010101, pos = { x = 108.1, y = 207.6, z = 754.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 172013, monster_id = 28010101, pos = { x = 114.7, y = 207.6, z = 755.5 }, rot = { x = 0.0, y = 46.9, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 172014, monster_id = 28010101, pos = { x = 117.0, y = 207.6, z = 748.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 172015, monster_id = 28010301, pos = { x = 76.9, y = 211.7, z = 666.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 172016, monster_id = 28010301, pos = { x = 72.2, y = 211.2, z = 666.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 172017, monster_id = 28010301, pos = { x = 96.4, y = 208.4, z = 737.6 }, rot = { x = 1.7, y = 0.1, z = 9.4 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 172018, monster_id = 28010301, pos = { x = 145.0, y = 204.0, z = 745.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 172019, monster_id = 28010301, pos = { x = 147.2, y = 203.8, z = 748.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 172020, monster_id = 28030101, pos = { x = 198.8, y = 202.5, z = 780.9 }, rot = { x = 18.0, y = 356.1, z = 335.8 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 172021, monster_id = 28030101, pos = { x = 194.8, y = 201.4, z = 783.1 }, rot = { x = 0.0, y = 94.3, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 172022, monster_id = 28030101, pos = { x = 89.0, y = 207.3, z = 661.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 172023, monster_id = 28030101, pos = { x = 85.7, y = 207.7, z = 662.3 }, rot = { x = 0.0, y = 135.0, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 172024, monster_id = 28040103, pos = { x = 82.9, y = 200.0, z = 587.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "水族" },
	{ config_id = 172025, monster_id = 28040103, pos = { x = 73.1, y = 200.0, z = 586.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "水族" },
	{ config_id = 172026, monster_id = 28040103, pos = { x = 113.8, y = 200.0, z = 586.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "水族" },
	{ config_id = 172027, monster_id = 28040103, pos = { x = 76.0, y = 200.0, z = 581.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "水族" },
	{ config_id = 172028, monster_id = 28040103, pos = { x = 87.8, y = 200.0, z = 590.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "水族" },
	{ config_id = 172029, monster_id = 28040103, pos = { x = 124.5, y = 200.0, z = 586.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "水族" },
	{ config_id = 172030, monster_id = 28030101, pos = { x = 142.8, y = 203.3, z = 436.8 }, rot = { x = 0.0, y = 94.3, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 172031, monster_id = 28030101, pos = { x = 134.6, y = 204.0, z = 436.8 }, rot = { x = 0.0, y = 22.1, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 172032, monster_id = 28030101, pos = { x = 138.5, y = 206.0, z = 428.4 }, rot = { x = 0.0, y = 200.4, z = 0.0 }, level = 19, drop_tag = "鸟类" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
		monsters = { 408, 409, 172001, 172002, 172003, 172004, 172005, 172006, 172007, 172008, 172009, 172010, 172011, 172012, 172013, 172014, 172015, 172016, 172017, 172018, 172019, 172020, 172021, 172022, 172023, 172024, 172025, 172026, 172027, 172028, 172029, 172030, 172031, 172032 },
		gadgets = { },
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
