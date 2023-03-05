--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 85, monster_id = 24010101, pos = { x = 543.2, y = -0.9, z = 363.2 }, rot = { x = 0.0, y = 225.0, z = 0.0 }, level = 20, disableWander = true },
	{ config_id = 86, monster_id = 24010101, pos = { x = 543.4, y = -0.9, z = 358.2 }, rot = { x = 0.0, y = 321.5, z = 0.0 }, level = 20, disableWander = true },
	{ config_id = 88, monster_id = 21010101, pos = { x = 716.7, y = 5.8, z = 379.4 }, rot = { x = 0.0, y = 149.6, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 89, monster_id = 21010101, pos = { x = 719.6, y = 5.8, z = 379.9 }, rot = { x = 0.0, y = 238.8, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 90, monster_id = 21010101, pos = { x = 731.7, y = 5.5, z = 360.8 }, rot = { x = 0.0, y = 24.9, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 91, monster_id = 21010101, pos = { x = 733.8, y = 5.5, z = 359.7 }, rot = { x = 0.0, y = 355.7, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 92, monster_id = 24010101, pos = { x = 780.9, y = 5.5, z = 360.7 }, rot = { x = 0.0, y = 225.0, z = 0.0 }, level = 12, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 150, gadget_id = 70900213, pos = { x = 264.1, y = 5.6, z = 282.3 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, state = GadgetState.GearAction1 },
	{ config_id = 152, gadget_id = 70900213, pos = { x = 299.6, y = 5.6, z = 279.2 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 153, gadget_id = 70900213, pos = { x = 299.6, y = 5.6, z = 278.2 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 162, gadget_id = 70900221, pos = { x = 361.1, y = 6.0, z = 285.5 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 173, gadget_id = 70320002, pos = { x = 483.3, y = 5.5, z = 368.8 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 174, gadget_id = 70320002, pos = { x = 485.2, y = 5.5, z = 368.8 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 175, gadget_id = 70320002, pos = { x = 487.1, y = 5.5, z = 368.9 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 176, gadget_id = 70320002, pos = { x = 483.9, y = 5.5, z = 354.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 177, gadget_id = 70320002, pos = { x = 485.7, y = 5.5, z = 354.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 178, gadget_id = 70320002, pos = { x = 487.6, y = 5.5, z = 354.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 179, gadget_id = 70220003, pos = { x = 508.2, y = 5.5, z = 364.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 180, gadget_id = 70220003, pos = { x = 508.1, y = 5.5, z = 360.1 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 181, gadget_id = 70220003, pos = { x = 508.1, y = 5.5, z = 355.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 187, gadget_id = 70900216, pos = { x = 700.9, y = 5.7, z = 360.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 188, gadget_id = 70900216, pos = { x = 718.0, y = 5.7, z = 377.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 189, gadget_id = 70900216, pos = { x = 734.6, y = 5.4, z = 361.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 190, gadget_id = 70900207, pos = { x = 786.6, y = 5.8, z = 375.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 192, gadget_id = 70211001, pos = { x = 416.4, y = 5.6, z = 263.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 193, gadget_id = 70211001, pos = { x = 476.1, y = 5.6, z = 309.4 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 198, gadget_id = 70900207, pos = { x = 786.9, y = 5.8, z = 380.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 199, gadget_id = 70900207, pos = { x = 792.8, y = 5.8, z = 380.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 200, gadget_id = 70900207, pos = { x = 799.4, y = 5.8, z = 379.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 201, gadget_id = 70900207, pos = { x = 805.1, y = 5.8, z = 380.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 202, gadget_id = 70900207, pos = { x = 811.0, y = 5.8, z = 380.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 203, gadget_id = 70900207, pos = { x = 815.7, y = 5.8, z = 379.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 204, gadget_id = 70900207, pos = { x = 821.6, y = 5.8, z = 379.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 205, gadget_id = 70900207, pos = { x = 826.7, y = 5.8, z = 369.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 206, gadget_id = 70900207, pos = { x = 826.7, y = 5.8, z = 374.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 207, gadget_id = 70900207, pos = { x = 826.7, y = 5.8, z = 379.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 213, gadget_id = 70900221, pos = { x = 369.5, y = 6.1, z = 272.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 215, gadget_id = 70900213, pos = { x = 299.7, y = 6.6, z = 279.2 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 216, gadget_id = 70900213, pos = { x = 299.7, y = 6.6, z = 278.2 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 222, gadget_id = 70900213, pos = { x = 264.5, y = 5.6, z = 273.4 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, state = GadgetState.GearAction1 },
	{ config_id = 235, gadget_id = 70900216, pos = { x = 771.1, y = 5.3, z = 363.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 238, gadget_id = 70220003, pos = { x = 506.1, y = 5.5, z = 353.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 239, gadget_id = 70220003, pos = { x = 505.7, y = 5.5, z = 366.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 240, gadget_id = 70220003, pos = { x = 502.9, y = 5.5, z = 366.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 244, gadget_id = 70220005, pos = { x = 736.4, y = 5.5, z = 364.6 }, rot = { x = 0.0, y = 197.1, z = 0.0 }, level = 1 },
	{ config_id = 247, gadget_id = 70220011, pos = { x = 255.2, y = 5.6, z = 278.2 }, rot = { x = 0.0, y = 89.6, z = 0.0 }, level = 1 }
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
	rand_suite = true,
	npcs = { }
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
		monsters = { 85, 86, 88, 89, 90, 91, 92 },
		gadgets = { 150, 152, 153, 162, 173, 174, 175, 176, 177, 178, 179, 180, 181, 187, 188, 189, 190, 192, 193, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 213, 215, 216, 222, 235, 238, 239, 240, 244 },
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
