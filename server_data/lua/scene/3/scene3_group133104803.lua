--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 803001, monster_id = 28030401, pos = { x = 894.9, y = 272.2, z = 352.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 803002, monster_id = 28030401, pos = { x = 894.3, y = 272.3, z = 351.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 803003, monster_id = 28030401, pos = { x = 895.0, y = 272.4, z = 351.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 803004, monster_id = 28030401, pos = { x = 893.9, y = 272.2, z = 352.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 803005, monster_id = 28030401, pos = { x = 893.9, y = 272.4, z = 350.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 803006, monster_id = 28030401, pos = { x = 893.3, y = 272.6, z = 349.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 803007, monster_id = 28030401, pos = { x = 893.3, y = 272.2, z = 351.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 803008, monster_id = 28030401, pos = { x = 892.5, y = 272.5, z = 322.2 }, rot = { x = 355.4, y = 360.0, z = 1.2 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 803009, monster_id = 28030401, pos = { x = 891.9, y = 272.2, z = 321.7 }, rot = { x = 357.5, y = 359.9, z = 6.4 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 803010, monster_id = 28030401, pos = { x = 892.6, y = 272.2, z = 321.2 }, rot = { x = 355.5, y = 0.0, z = 358.9 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 803011, monster_id = 28030401, pos = { x = 888.3, y = 274.0, z = 330.8 }, rot = { x = 14.5, y = 1.8, z = 14.4 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 803012, monster_id = 28030401, pos = { x = 888.2, y = 274.4, z = 329.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 803013, monster_id = 28030401, pos = { x = 887.6, y = 273.9, z = 327.1 }, rot = { x = 351.9, y = 1.6, z = 337.1 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 803014, monster_id = 28030401, pos = { x = 885.8, y = 273.5, z = 330.2 }, rot = { x = 13.4, y = 1.8, z = 15.5 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 803015, monster_id = 28030401, pos = { x = 911.1, y = 272.1, z = 334.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 803016, monster_id = 28030401, pos = { x = 910.4, y = 272.2, z = 334.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 803017, monster_id = 28030401, pos = { x = 910.4, y = 272.2, z = 335.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 803018, monster_id = 28020506, pos = { x = 909.6, y = 260.8, z = 345.3 }, rot = { x = 0.0, y = 313.7, z = 0.0 }, level = 16, drop_tag = "走兽", pose_id = 12 },
	{ config_id = 803019, monster_id = 28020402, pos = { x = 916.5, y = 259.5, z = 354.4 }, rot = { x = 0.0, y = 45.0, z = 0.0 }, level = 16, drop_tag = "走兽", pose_id = 2 }
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
		monsters = { 803001, 803002, 803003, 803004, 803005, 803006, 803007, 803018, 803019 },
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
