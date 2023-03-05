--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1015, monster_id = 20011501, pos = { x = 2946.8, y = 222.6, z = -1741.0 }, rot = { x = 0.0, y = 253.6, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 1017, monster_id = 20011401, pos = { x = 2953.3, y = 223.0, z = -1757.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 1018, monster_id = 20011401, pos = { x = 2950.0, y = 222.6, z = -1749.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" },
	{ config_id = 1019, monster_id = 20011401, pos = { x = 2949.6, y = 220.2, z = -1724.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3260, gadget_id = 70211101, pos = { x = 2957.6, y = 223.8, z = -1768.0 }, rot = { x = 0.0, y = 16.1, z = 0.0 }, level = 46, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 3261, gadget_id = 70220020, pos = { x = 2955.7, y = 223.6, z = -1766.5 }, rot = { x = 0.0, y = 154.0, z = 0.0 }, level = 31 },
	{ config_id = 3262, gadget_id = 70220020, pos = { x = 2954.6, y = 223.4, z = -1765.4 }, rot = { x = 0.0, y = 163.6, z = 0.0 }, level = 31 }
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
		monsters = { 1015, 1017, 1018, 1019 },
		gadgets = { 3260, 3261, 3262 },
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