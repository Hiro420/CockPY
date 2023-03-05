--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 48, monster_id = 21030101, pos = { x = 2587.9, y = 212.5, z = 449.0 }, rot = { x = 0.0, y = 338.3, z = 0.0 }, level = 30, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 252, monster_id = 21010901, pos = { x = 2585.3, y = 211.7, z = 451.1 }, rot = { x = 0.0, y = 77.2, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 253, monster_id = 21010901, pos = { x = 2593.1, y = 212.6, z = 450.4 }, rot = { x = 0.0, y = 76.2, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 370, monster_id = 21010201, pos = { x = 2554.7, y = 215.2, z = 451.3 }, rot = { x = 0.0, y = 166.9, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 530, gadget_id = 70220013, pos = { x = 2583.3, y = 212.2, z = 448.6 }, rot = { x = 0.0, y = 309.4, z = 0.0 }, level = 23 },
	{ config_id = 531, gadget_id = 70220014, pos = { x = 2582.7, y = 211.8, z = 450.3 }, rot = { x = 0.0, y = 343.3, z = 0.0 }, level = 23 },
	{ config_id = 532, gadget_id = 70220014, pos = { x = 2587.6, y = 210.8, z = 455.4 }, rot = { x = 0.0, y = 82.4, z = 0.0 }, level = 23 },
	{ config_id = 533, gadget_id = 70310001, pos = { x = 2587.4, y = 211.9, z = 451.0 }, rot = { x = 0.0, y = 168.4, z = 0.0 }, level = 23, state = GadgetState.GearStart },
	{ config_id = 534, gadget_id = 70211011, pos = { x = 2586.2, y = 210.8, z = 455.0 }, rot = { x = 0.0, y = 184.5, z = 0.0 }, level = 23, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true }
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
		monsters = { 48, 252, 253, 370 },
		gadgets = { 530, 531, 532, 533, 534 },
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
