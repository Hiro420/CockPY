--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 866, monster_id = 21010501, pos = { x = 2731.2, y = 274.8, z = -1171.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "远程丘丘人" },
	{ config_id = 867, monster_id = 21010501, pos = { x = 2734.7, y = 280.8, z = -1174.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "远程丘丘人" },
	{ config_id = 868, monster_id = 21010201, pos = { x = 2748.1, y = 265.4, z = -1188.8 }, rot = { x = 0.0, y = 20.2, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 869, monster_id = 21010601, pos = { x = 2742.0, y = 271.9, z = -1176.2 }, rot = { x = 0.0, y = 124.1, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 898, monster_id = 21010701, pos = { x = 2757.2, y = 264.9, z = -1189.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "丘丘人" },
	{ config_id = 899, monster_id = 20011201, pos = { x = 2749.3, y = 266.2, z = -1184.9 }, rot = { x = 0.0, y = 178.4, z = 0.0 }, level = 15, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 900, monster_id = 20011201, pos = { x = 2751.6, y = 265.7, z = -1186.5 }, rot = { x = 0.0, y = 249.9, z = 0.0 }, level = 15, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2971, gadget_id = 70500000, pos = { x = 2769.7, y = 277.0, z = -1195.9 }, rot = { x = 0.0, y = 217.5, z = 0.0 }, level = 30, point_type = 4001001, isOneoff = true },
	{ config_id = 2983, gadget_id = 70211101, pos = { x = 2735.4, y = 285.5, z = -1167.8 }, rot = { x = 0.0, y = 179.2, z = 0.0 }, level = 30, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 2988, gadget_id = 70220013, pos = { x = 2749.8, y = 267.8, z = -1177.7 }, rot = { x = 15.1, y = 182.7, z = 355.0 }, level = 30 },
	{ config_id = 2989, gadget_id = 70220013, pos = { x = 2750.3, y = 268.1, z = -1175.1 }, rot = { x = 0.0, y = 128.7, z = 350.5 }, level = 30 },
	{ config_id = 2990, gadget_id = 70220014, pos = { x = 2751.3, y = 268.1, z = -1177.0 }, rot = { x = 0.0, y = 125.7, z = 0.0 }, level = 30 },
	{ config_id = 2991, gadget_id = 70310004, pos = { x = 2749.5, y = 265.7, z = -1187.0 }, rot = { x = 0.0, y = 145.9, z = 0.0 }, level = 30, state = GadgetState.GearStart },
	{ config_id = 2992, gadget_id = 70211101, pos = { x = 2748.7, y = 268.0, z = -1175.8 }, rot = { x = 0.0, y = 25.5, z = 0.0 }, level = 30, drop_tag = "解谜低级蒙德", isOneoff = true }
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
		monsters = { 866, 867, 868, 869, 898, 899, 900 },
		gadgets = { 2971, 2983, 2988, 2989, 2990, 2991, 2992 },
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
