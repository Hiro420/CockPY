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
	{ config_id = 394, gadget_id = 70210063, pos = { x = 1179.7, y = 200.9, z = -198.8 }, rot = { x = 349.1, y = 304.5, z = 6.4 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 405, gadget_id = 70211103, pos = { x = 1234.0, y = 204.5, z = -72.9 }, rot = { x = 14.7, y = 111.3, z = 5.6 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 97001, gadget_id = 70210105, pos = { x = 1197.1, y = 199.8, z = 66.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 97002, gadget_id = 70211103, pos = { x = 1218.7, y = 200.2, z = -215.7 }, rot = { x = 5.0, y = 223.8, z = 358.6 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		gadgets = { 394, 405, 97001, 97002 },
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
