--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 527001, gadget_id = 70211001, pos = { x = 1139.6, y = 214.1, z = 966.0 }, rot = { x = 0.0, y = 151.3, z = 0.0 }, level = 19, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 527002, gadget_id = 70211001, pos = { x = 1147.5, y = 210.0, z = 946.3 }, rot = { x = 0.0, y = 243.7, z = 0.0 }, level = 19, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 527003, gadget_id = 70211101, pos = { x = 1119.2, y = 210.8, z = 975.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 527004, gadget_id = 70220013, pos = { x = 1144.3, y = 210.1, z = 944.5 }, rot = { x = 0.0, y = 27.0, z = 0.0 }, level = 19, isOneoff = true, persistent = true },
	{ config_id = 527005, gadget_id = 70220013, pos = { x = 1146.3, y = 210.1, z = 943.8 }, rot = { x = 0.0, y = 65.0, z = 0.0 }, level = 19, isOneoff = true, persistent = true }
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
		monsters = { },
		gadgets = { 527001, 527002, 527003, 527004, 527005 },
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
