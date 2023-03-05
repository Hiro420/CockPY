--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 130001, monster_id = 21010901, pos = { x = 1166.5, y = 238.9, z = 1043.7 }, rot = { x = 0.0, y = 195.6, z = 0.0 }, level = 26, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 130002, monster_id = 21011001, pos = { x = 1191.6, y = 242.0, z = 1032.4 }, rot = { x = 0.0, y = 262.2, z = 0.0 }, level = 26, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 130003, monster_id = 21010501, pos = { x = 1176.1, y = 249.7, z = 1065.5 }, rot = { x = 0.0, y = 178.8, z = 0.0 }, level = 26, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 130008, monster_id = 21010701, pos = { x = 1178.3, y = 236.3, z = 1027.8 }, rot = { x = 0.0, y = 322.3, z = 0.0 }, level = 24, drop_tag = "丘丘人", pose_id = 0 },
	{ config_id = 130009, monster_id = 21010701, pos = { x = 1180.0, y = 246.1, z = 1057.4 }, rot = { x = 359.9, y = 162.1, z = 360.0 }, level = 26, drop_tag = "丘丘人", pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 130004, gadget_id = 70211001, pos = { x = 1177.8, y = 246.0, z = 1057.5 }, rot = { x = 15.2, y = 173.4, z = 357.1 }, level = 24, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 130005, gadget_id = 70310001, pos = { x = 1149.4, y = 229.8, z = 1021.6 }, rot = { x = 346.9, y = 359.3, z = 6.4 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 130006, gadget_id = 70310001, pos = { x = 1174.4, y = 235.7, z = 1025.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 130007, gadget_id = 70310001, pos = { x = 1179.9, y = 246.3, z = 1058.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart }
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
		monsters = { 130001, 130002, 130003, 130008, 130009 },
		gadgets = { 130004, 130005, 130006, 130007 },
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
