--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 320, monster_id = 28020102, pos = { x = 2319.5, y = 255.3, z = -443.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 321, monster_id = 28020102, pos = { x = 2318.7, y = 281.0, z = -286.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 322, monster_id = 21010101, pos = { x = 2286.4, y = 257.2, z = -367.9 }, rot = { x = 0.0, y = 244.8, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 323, monster_id = 21010101, pos = { x = 2288.8, y = 257.0, z = -369.6 }, rot = { x = 0.0, y = 201.6, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 341, monster_id = 20011201, pos = { x = 2412.9, y = 299.2, z = -249.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 342, monster_id = 20011201, pos = { x = 2414.7, y = 299.2, z = -246.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 343, monster_id = 20011201, pos = { x = 2412.1, y = 298.8, z = -246.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 362, monster_id = 28020201, pos = { x = 2387.5, y = 295.5, z = -312.5 }, rot = { x = 0.0, y = 87.7, z = 0.0 }, level = 1, drop_tag = "走兽" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 598, gadget_id = 70211101, pos = { x = 2392.7, y = 307.1, z = -191.3 }, rot = { x = 0.0, y = 177.0, z = 0.0 }, level = 13, drop_tag = "解谜低级蒙德", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 599, gadget_id = 70500000, pos = { x = 2431.5, y = 297.5, z = -202.7 }, rot = { x = 0.0, y = 85.3, z = 0.0 }, level = 13, point_type = 4001001, isOneoff = true },
	{ config_id = 827, gadget_id = 70211101, pos = { x = 2350.2, y = 280.6, z = -386.1 }, rot = { x = 359.8, y = 119.0, z = 0.2 }, level = 13, drop_tag = "解谜低级蒙德", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
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
	rand_suite = true
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
		monsters = { 320, 321, 322, 323, 341, 342, 343, 362 },
		gadgets = { 598, 599, 827 },
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
