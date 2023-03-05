--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 351001, monster_id = 28030101, pos = { x = 1500.6, y = 361.6, z = -2070.4 }, rot = { x = 0.0, y = 74.1, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 351002, monster_id = 28020102, pos = { x = 1470.1, y = 328.2, z = -2017.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 351003, monster_id = 28030401, pos = { x = 1446.1, y = 327.8, z = -2036.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 351004, monster_id = 28030401, pos = { x = 1448.0, y = 327.7, z = -2034.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 351005, monster_id = 28030101, pos = { x = 1586.1, y = 357.4, z = -2066.4 }, rot = { x = 0.0, y = 232.7, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 351007, monster_id = 28030401, pos = { x = 1452.7, y = 328.0, z = -2034.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 351006, gadget_id = 70211111, pos = { x = 1573.8, y = 337.0, z = -2119.0 }, rot = { x = 353.1, y = 95.4, z = 0.0 }, level = 15, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true }
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
		monsters = { 351001, 351002, 351003, 351004, 351005, 351007 },
		gadgets = { 351006 },
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