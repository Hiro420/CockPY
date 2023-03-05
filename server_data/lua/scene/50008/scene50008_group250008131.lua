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
	{ config_id = 131001, gadget_id = 70211021, pos = { x = 17.1, y = 3.5, z = -590.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "战斗高级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 131002, gadget_id = 70211131, pos = { x = 10.6, y = 3.5, z = -580.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "解谜超级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 131003, gadget_id = 70211011, pos = { x = 3.0, y = 3.5, z = -590.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "战斗中级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 131004, gadget_id = 70211031, pos = { x = 9.8, y = 3.5, z = -589.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, drop_tag = "战斗超级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
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
		gadgets = { 131001, 131002, 131003, 131004 },
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
