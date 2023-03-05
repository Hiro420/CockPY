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
	{ config_id = 322002, npc_id = 2310, pos = { x = 1682.2, y = 237.7, z = 647.5 }, rot = { x = 0.0, y = 359.9, z = 0.0 } }
}

-- 装置
gadgets = {
	{ config_id = 322001, gadget_id = 70211121, pos = { x = 1683.6, y = 237.7, z = 646.0 }, rot = { x = 0.0, y = 5.4, z = 0.0 }, level = 18, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "QUEST_FINISH_322004", event = EventType.EVENT_QUEST_FINISH, source = "2101399", condition = "", action = "action_EVENT_QUEST_FINISH_322004" }
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
		triggers = { "QUEST_FINISH_322004" },
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
function action_EVENT_QUEST_FINISH_322004(context, evt)
	-- 创建id为322001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 322001 }) then
	  return -1
	end
	
	return 0
end
