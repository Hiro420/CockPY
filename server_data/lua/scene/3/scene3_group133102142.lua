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
	{ config_id = 3, npc_id = 2429, pos = { x = 1321.4, y = 200.8, z = 274.7 }, rot = { x = 0.0, y = 137.8, z = 0.0 } }
}

-- 装置
gadgets = {
	{ config_id = 542, gadget_id = 70211121, pos = { x = 1256.0, y = 201.0, z = 263.6 }, rot = { x = 0.0, y = 133.1, z = 0.0 }, level = 16, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "QUEST_START_303", event = EventType.EVENT_QUEST_START, source = "2100399", condition = "", action = "" },
	{ name = "QUEST_FINISH_492", event = EventType.EVENT_QUEST_FINISH, source = "2100399", condition = "", action = "" }
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_303", "QUEST_FINISH_492" },
		npcs = { 3 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作

-- 触发条件

-- 触发操作
