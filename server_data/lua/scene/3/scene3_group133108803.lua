--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 803001, monster_id = 28030203, pos = { x = -211.2, y = 327.3, z = -1017.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 803002, monster_id = 28030203, pos = { x = -454.1, y = 234.6, z = -809.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 803003, monster_id = 28030203, pos = { x = -353.9, y = 248.0, z = -644.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 803004, monster_id = 28030203, pos = { x = -80.7, y = 240.9, z = -674.2 }, rot = { x = 0.0, y = 236.8, z = 0.0 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 803005, monster_id = 28030203, pos = { x = 397.1, y = 231.4, z = -758.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 803006, monster_id = 28030203, pos = { x = 181.3, y = 246.7, z = -845.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 803007, monster_id = 28010103, pos = { x = -379.3, y = 201.3, z = -951.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "采集动物" },
	{ config_id = 803008, monster_id = 28010103, pos = { x = -386.6, y = 201.4, z = -956.4 }, rot = { x = 0.0, y = 59.7, z = 0.0 }, level = 32, drop_tag = "采集动物" },
	{ config_id = 803009, monster_id = 28010103, pos = { x = -278.0, y = 201.4, z = -876.2 }, rot = { x = 0.0, y = 132.6, z = 0.0 }, level = 32, drop_tag = "采集动物" },
	{ config_id = 803010, monster_id = 28010103, pos = { x = -274.0, y = 200.6, z = -853.1 }, rot = { x = 0.0, y = 265.6, z = 0.0 }, level = 32, drop_tag = "采集动物" },
	{ config_id = 803011, monster_id = 28010102, pos = { x = -258.6, y = 200.9, z = -845.7 }, rot = { x = 0.0, y = 323.6, z = 0.0 }, level = 32, drop_tag = "采集动物" },
	{ config_id = 803012, monster_id = 28010102, pos = { x = -291.7, y = 200.1, z = -839.6 }, rot = { x = 0.0, y = 105.9, z = 0.0 }, level = 32, drop_tag = "采集动物" },
	{ config_id = 803013, monster_id = 28010102, pos = { x = -310.1, y = 200.0, z = -784.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "采集动物" },
	{ config_id = 803014, monster_id = 28020102, pos = { x = -123.9, y = 252.3, z = -73.6 }, rot = { x = 0.0, y = 198.7, z = 0.0 }, level = 19, drop_tag = "走兽" },
	{ config_id = 803015, monster_id = 28020102, pos = { x = -138.6, y = 259.6, z = -9.9 }, rot = { x = 0.0, y = 337.6, z = 0.0 }, level = 19, drop_tag = "走兽" },
	{ config_id = 803016, monster_id = 28030101, pos = { x = -107.8, y = 257.7, z = -221.5 }, rot = { x = 0.0, y = 164.1, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 803017, monster_id = 28030101, pos = { x = -110.0, y = 257.7, z = -220.5 }, rot = { x = 0.0, y = 207.4, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 803018, monster_id = 28030101, pos = { x = -102.3, y = 259.3, z = -192.0 }, rot = { x = 0.0, y = 107.8, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 803019, monster_id = 28020102, pos = { x = -84.8, y = 263.8, z = -2.1 }, rot = { x = 0.0, y = 98.9, z = 0.0 }, level = 19, drop_tag = "走兽" },
	{ config_id = 803020, monster_id = 28020102, pos = { x = -141.5, y = 259.3, z = -10.3 }, rot = { x = 0.0, y = 6.2, z = 0.0 }, level = 19, drop_tag = "走兽" },
	{ config_id = 803021, monster_id = 28020102, pos = { x = -191.3, y = 256.8, z = -6.3 }, rot = { x = 0.0, y = 198.7, z = 0.0 }, level = 19, drop_tag = "走兽" }
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
		monsters = { 803001, 803002, 803003, 803004, 803005, 803006, 803007, 803008, 803009, 803010, 803011, 803012, 803013, 803014, 803015, 803016, 803017, 803018, 803019, 803020, 803021 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
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
