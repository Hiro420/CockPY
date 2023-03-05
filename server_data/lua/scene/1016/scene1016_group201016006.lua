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
	{ config_id = 51, gadget_id = 70211101, pos = { x = 221.0, y = 6.4, z = -61.0 }, rot = { x = 0.0, y = 1.1, z = 0.0 }, level = 1, drop_tag = "解谜低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 53, gadget_id = 70211101, pos = { x = 165.4, y = 5.7, z = -69.2 }, rot = { x = 0.0, y = 358.6, z = 0.0 }, level = 1, drop_tag = "解谜低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 63, gadget_id = 70211101, pos = { x = 172.3, y = 34.1, z = -24.8 }, rot = { x = 0.0, y = 275.6, z = 0.0 }, level = 1, drop_tag = "解谜低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 64, gadget_id = 70211001, pos = { x = 123.7, y = 33.9, z = -28.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 153, gadget_id = 70211101, pos = { x = 221.6, y = 4.9, z = -13.9 }, rot = { x = 0.0, y = 177.6, z = 0.0 }, level = 1, drop_tag = "解谜低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
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
		monsters = { },
		gadgets = { 51, 53, 63, 64, 153 },
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
