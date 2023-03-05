--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 487, monster_id = 21010401, pos = { x = 1249.3, y = 200.0, z = -32.1 }, rot = { x = 0.0, y = 20.7, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 488, monster_id = 21010601, pos = { x = 1235.1, y = 199.5, z = -29.1 }, rot = { x = 0.0, y = 319.1, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 489, monster_id = 21010101, pos = { x = 1249.9, y = 199.4, z = -18.3 }, rot = { x = 0.0, y = 77.3, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 490, monster_id = 21010101, pos = { x = 1239.4, y = 199.7, z = -32.2 }, rot = { x = 0.0, y = 204.1, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1054, gadget_id = 70220013, pos = { x = 1254.8, y = 200.3, z = -47.7 }, rot = { x = 1.0, y = 163.0, z = 15.2 }, level = 16 },
	{ config_id = 1055, gadget_id = 70220013, pos = { x = 1254.2, y = 200.2, z = -45.3 }, rot = { x = 354.0, y = 159.8, z = 6.9 }, level = 16 },
	{ config_id = 1056, gadget_id = 70220005, pos = { x = 1241.5, y = 199.8, z = -32.5 }, rot = { x = 0.0, y = 212.7, z = 0.0 }, level = 16 },
	{ config_id = 1057, gadget_id = 70220005, pos = { x = 1242.1, y = 199.8, z = -33.2 }, rot = { x = 0.0, y = 212.7, z = 0.0 }, level = 16 },
	{ config_id = 1058, gadget_id = 70211001, pos = { x = 1250.4, y = 198.9, z = -17.9 }, rot = { x = 325.7, y = 212.7, z = 12.2 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 1059, gadget_id = 70211001, pos = { x = 1239.0, y = 199.4, z = -33.2 }, rot = { x = 325.7, y = 34.7, z = 12.2 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		monsters = { 487, 488, 489, 490 },
		gadgets = { 1054, 1055, 1056, 1057, 1058, 1059 },
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
