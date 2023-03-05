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
	{ config_id = 172001, gadget_id = 70210107, pos = { x = 1148.6, y = 268.1, z = 1210.2 }, rot = { x = 348.5, y = 227.6, z = 178.9 }, level = 24, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true },
	{ config_id = 172002, gadget_id = 70210107, pos = { x = 1205.1, y = 258.3, z = 1225.7 }, rot = { x = 3.0, y = 327.0, z = 168.8 }, level = 24, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true },
	{ config_id = 172003, gadget_id = 70210107, pos = { x = 1228.6, y = 276.0, z = 1415.2 }, rot = { x = 33.4, y = 28.6, z = 182.2 }, level = 24, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, autopick = true }
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
		gadgets = { 172001, 172002, 172003 },
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
