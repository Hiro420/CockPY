--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 553, monster_id = 28030401, pos = { x = 1261.9, y = 262.2, z = -1718.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 559, monster_id = 28030301, pos = { x = 1260.2, y = 263.8, z = -1683.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 695, monster_id = 28030401, pos = { x = 1976.4, y = 222.2, z = -1504.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 696, monster_id = 28030401, pos = { x = 1974.5, y = 222.0, z = -1507.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 697, monster_id = 28030401, pos = { x = 1977.9, y = 222.1, z = -1507.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 698, monster_id = 28030401, pos = { x = 1975.0, y = 222.2, z = -1504.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 699, monster_id = 28030401, pos = { x = 1979.0, y = 222.1, z = -1506.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 700, monster_id = 28030401, pos = { x = 2011.9, y = 222.1, z = -1463.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 702, monster_id = 28030401, pos = { x = 2013.5, y = 222.5, z = -1465.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 707, monster_id = 28030401, pos = { x = 2017.4, y = 222.3, z = -1463.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 708, monster_id = 28030401, pos = { x = 2013.3, y = 222.5, z = -1467.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 709, monster_id = 28030401, pos = { x = 2012.4, y = 222.5, z = -1468.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 1158, monster_id = 28030402, pos = { x = 1268.3, y = 259.1, z = -1685.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 1160, monster_id = 28030402, pos = { x = 1267.2, y = 258.9, z = -1680.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1965, gadget_id = 70211101, pos = { x = 1997.1, y = 219.9, z = -1486.0 }, rot = { x = 9.2, y = 335.3, z = 358.7 }, level = 5, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 1974, gadget_id = 70211101, pos = { x = 1969.8, y = 220.8, z = -1577.8 }, rot = { x = 0.0, y = 190.4, z = 0.0 }, level = 5, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true }
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
		monsters = { 559, 696, 698, 700, 707, 709, 1158, 1160 },
		gadgets = { 1965, 1974 },
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
