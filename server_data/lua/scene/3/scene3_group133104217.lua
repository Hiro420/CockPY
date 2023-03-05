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
	{ config_id = 217001, gadget_id = 70310001, pos = { x = 567.6, y = 218.6, z = 353.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 217002, gadget_id = 70310001, pos = { x = 393.7, y = 225.1, z = 351.0 }, rot = { x = 359.4, y = 0.0, z = 0.3 }, level = 19, persistent = true },
	{ config_id = 217003, gadget_id = 70310001, pos = { x = 135.4, y = 253.1, z = 243.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, persistent = true },
	{ config_id = 217007, gadget_id = 70211111, pos = { x = 566.3, y = 209.2, z = 349.6 }, rot = { x = 0.0, y = 137.8, z = 0.0 }, level = 19, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_217004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_217004", action = "action_EVENT_GADGET_STATE_CHANGE_217004" },
	{ name = "GADGET_STATE_CHANGE_217005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_217005", action = "action_EVENT_GADGET_STATE_CHANGE_217005" },
	{ name = "GADGET_STATE_CHANGE_217006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_217006", action = "action_EVENT_GADGET_STATE_CHANGE_217006" },
	{ name = "QUEST_FINISH_217008", event = EventType.EVENT_QUEST_FINISH, source = "2100810", condition = "", action = "" }
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
		gadgets = { 217001, 217002, 217003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_217004", "GADGET_STATE_CHANGE_217005", "GADGET_STATE_CHANGE_217006", "QUEST_FINISH_217008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 217007 },
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

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_217004(context, evt)
	if 217001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_217004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104217_progress1") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_217005(context, evt)
	if 217002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_217005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104217_progress2") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_217006(context, evt)
	if 217003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_217006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104217_progress3") then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
