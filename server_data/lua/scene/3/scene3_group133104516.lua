--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 516009, monster_id = 28010203, pos = { x = 835.0, y = 210.3, z = 648.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 516010, monster_id = 28010203, pos = { x = 831.1, y = 210.7, z = 655.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 516011, monster_id = 28010203, pos = { x = 845.6, y = 212.2, z = 649.6 }, rot = { x = 0.0, y = 252.6, z = 0.0 }, level = 19, drop_tag = "采集动物" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 516001, gadget_id = 70220013, pos = { x = 843.0, y = 211.7, z = 648.3 }, rot = { x = 8.4, y = 1.4, z = 18.2 }, level = 19 },
	{ config_id = 516002, gadget_id = 70220013, pos = { x = 842.6, y = 211.4, z = 650.6 }, rot = { x = 356.6, y = 359.4, z = 19.0 }, level = 19 },
	{ config_id = 516003, gadget_id = 70211111, pos = { x = 839.8, y = 212.2, z = 657.6 }, rot = { x = 0.0, y = 257.2, z = 0.0 }, level = 19, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 516004, gadget_id = 70210101, pos = { x = 832.9, y = 210.9, z = 646.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 516005, gadget_id = 70210101, pos = { x = 831.7, y = 211.1, z = 647.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "搜刮点解谜人文璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 516006, gadget_id = 70210101, pos = { x = 832.2, y = 210.9, z = 649.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "搜刮点解谜遗物璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 516007, gadget_id = 70210101, pos = { x = 836.6, y = 210.9, z = 645.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "搜刮点解谜遗物璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 516008, gadget_id = 70210101, pos = { x = 835.0, y = 210.8, z = 645.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "搜刮点解谜遗物璃月", type = GadgetType.GADGET_WORLD_CHECT }
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
		monsters = { 516009, 516010, 516011 },
		gadgets = { 516001, 516002, 516003, 516004, 516005, 516006, 516007, 516008 },
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
