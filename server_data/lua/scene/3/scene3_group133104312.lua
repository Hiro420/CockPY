--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 312001, monster_id = 21010401, pos = { x = 95.5, y = 248.8, z = 150.6 }, rot = { x = 0.0, y = 24.2, z = 0.0 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, isOneoff = true, pose_id = 9003 },
	{ config_id = 312002, monster_id = 21010401, pos = { x = 96.8, y = 254.7, z = 153.9 }, rot = { x = 0.0, y = 139.3, z = 0.0 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, isOneoff = true, pose_id = 9003 },
	{ config_id = 312003, monster_id = 21010401, pos = { x = 97.4, y = 248.9, z = 153.3 }, rot = { x = 0.0, y = 217.9, z = 0.0 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, isOneoff = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 312004, gadget_id = 70310006, pos = { x = 95.7, y = 248.8, z = 152.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 312005, gadget_id = 70220014, pos = { x = 96.6, y = 248.8, z = 155.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 312006, gadget_id = 70220014, pos = { x = 92.1, y = 254.0, z = 155.7 }, rot = { x = 9.5, y = 0.4, z = 4.9 }, level = 19 },
	{ config_id = 312007, gadget_id = 70220005, pos = { x = 94.0, y = 254.6, z = 153.0 }, rot = { x = 9.5, y = 0.4, z = 4.9 }, level = 19 },
	{ config_id = 312008, gadget_id = 70211001, pos = { x = 92.1, y = 254.7, z = 151.2 }, rot = { x = 0.7, y = 59.1, z = 10.7 }, level = 19, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 312009, gadget_id = 70220013, pos = { x = 91.7, y = 245.1, z = 151.3 }, rot = { x = 9.5, y = 0.4, z = 4.9 }, level = 19 },
	{ config_id = 312010, gadget_id = 70220013, pos = { x = 93.4, y = 244.7, z = 154.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 312011, gadget_id = 70220013, pos = { x = 91.6, y = 244.7, z = 153.4 }, rot = { x = 4.4, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 312012, gadget_id = 70220013, pos = { x = 94.3, y = 245.0, z = 152.5 }, rot = { x = 9.5, y = 0.4, z = 4.9 }, level = 19 },
	{ config_id = 312013, gadget_id = 70220005, pos = { x = 92.7, y = 248.8, z = 150.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 312014, gadget_id = 70211001, pos = { x = 95.5, y = 244.9, z = 154.3 }, rot = { x = 358.8, y = 236.6, z = 349.4 }, level = 19, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		monsters = { 312001, 312002, 312003 },
		gadgets = { 312004, 312005, 312006, 312007, 312008, 312009, 312010, 312011, 312012, 312013, 312014 },
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
