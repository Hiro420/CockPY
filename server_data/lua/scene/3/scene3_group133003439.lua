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
	{ config_id = 3834, gadget_id = 70380002, pos = { x = 2290.8, y = 211.3, z = -1124.3 }, rot = { x = 0.0, y = 147.4, z = 0.0 }, level = 2, route_id = 3003233, persistent = true },
	{ config_id = 4115, gadget_id = 70211101, pos = { x = 2292.7, y = 209.8, z = -1122.8 }, rot = { x = 359.4, y = 142.3, z = 354.7 }, level = 2, chest_drop_id = 1010000, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 4247, gadget_id = 70900201, pos = { x = 2290.8, y = 211.8, z = -1124.3 }, rot = { x = 0.0, y = 147.4, z = 0.0 }, level = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_510", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_510", action = "action_EVENT_ANY_GADGET_DIE_510" },
	{ name = "QUEST_START_539", event = EventType.EVENT_QUEST_START, source = "35404", condition = "condition_EVENT_QUEST_START_539", action = "action_EVENT_QUEST_START_539", trigger_count = 0 },
	{ name = "TIMER_EVENT_542", event = EventType.EVENT_TIMER_EVENT, source = "born", condition = "", action = "action_EVENT_TIMER_EVENT_542" },
	{ name = "TIMER_EVENT_563", event = EventType.EVENT_TIMER_EVENT, source = "born1", condition = "", action = "action_EVENT_TIMER_EVENT_563" }
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
		triggers = { "ANY_GADGET_DIE_510", "QUEST_START_539", "TIMER_EVENT_542", "TIMER_EVENT_563" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_510(context, evt)
	if 3834 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_510(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003079") then
	  return -1
	end
	
	-- 创生gadget 4115
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4115 }) then
		return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133003439, monsters = {}, gadgets = {4247} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_539(context, evt)
	if 35404 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_539(context, evt)
	-- 延迟4秒后,向groupId为：133003439的对象,请求一次调用,并将string参数："born" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133003439, "born", 4) then
	  return -1
	end
	
	-- 延迟5.5秒后,向groupId为：133003439的对象,请求一次调用,并将string参数："born1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133003439, "born1", 5.5) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_542(context, evt)
	-- 创生gadget 3834
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3834 }) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_563(context, evt)
	-- 创生gadget 4247
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4247 }) then
		return -1
	end
	
	return 0
end
