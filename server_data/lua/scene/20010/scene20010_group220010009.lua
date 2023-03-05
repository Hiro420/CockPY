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
	{ config_id = 69, gadget_id = 70211101, pos = { x = 205.5, y = -34.0, z = 32.3 }, rot = { x = 0.0, y = 271.9, z = 0.0 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 70, gadget_id = 70211001, pos = { x = 373.3, y = -34.5, z = 19.6 }, rot = { x = 0.0, y = 270.5, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 71, gadget_id = 70211021, pos = { x = 476.1, y = -43.3, z = 14.7 }, rot = { x = 0.0, y = 272.1, z = 0.0 }, level = 1, chest_drop_id = 18000700, drop_count = 1, isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
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
		gadgets = { 69, 70, 71 },
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
