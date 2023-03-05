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
	{ config_id = 909001, gadget_id = 70710048, pos = { x = -634.7, y = 220.5, z = 265.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 909002, gadget_id = 70710048, pos = { x = -634.1, y = 220.5, z = 264.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 909003, gadget_id = 70710048, pos = { x = -633.5, y = 220.5, z = 264.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 909004, gadget_id = 70710049, pos = { x = -633.5, y = 220.5, z = 264.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 909005, gadget_id = 70710049, pos = { x = -634.1, y = 220.5, z = 264.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 909006, gadget_id = 70710049, pos = { x = -634.7, y = 220.5, z = 265.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 909007, gadget_id = 70710050, pos = { x = -634.7, y = 220.5, z = 265.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 909008, gadget_id = 70710050, pos = { x = -634.1, y = 220.5, z = 264.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 909009, gadget_id = 70710050, pos = { x = -633.5, y = 220.5, z = 264.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 909022, gadget_id = 70710048, pos = { x = -634.7, y = 220.5, z = 265.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 909023, gadget_id = 70710048, pos = { x = -634.1, y = 220.5, z = 264.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 909024, gadget_id = 70710048, pos = { x = -633.5, y = 220.5, z = 264.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "QUEST_FINISH_909010", event = EventType.EVENT_QUEST_FINISH, source = "2230507", condition = "", action = "action_EVENT_QUEST_FINISH_909010" },
	{ name = "QUEST_FINISH_909011", event = EventType.EVENT_QUEST_FINISH, source = "2230508", condition = "", action = "action_EVENT_QUEST_FINISH_909011" },
	{ name = "QUEST_FINISH_909012", event = EventType.EVENT_QUEST_FINISH, source = "2230509", condition = "", action = "action_EVENT_QUEST_FINISH_909012" },
	{ name = "GADGET_STATE_CHANGE_909013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_909013", action = "action_EVENT_GADGET_STATE_CHANGE_909013", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_909014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_909014", action = "action_EVENT_GADGET_STATE_CHANGE_909014", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_909015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_909015", action = "action_EVENT_GADGET_STATE_CHANGE_909015", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_909016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_909016", action = "action_EVENT_GADGET_STATE_CHANGE_909016", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_909017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_909017", action = "action_EVENT_GADGET_STATE_CHANGE_909017", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_909018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_909018", action = "action_EVENT_GADGET_STATE_CHANGE_909018", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_909019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_909019", action = "action_EVENT_GADGET_STATE_CHANGE_909019", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_909020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_909020", action = "action_EVENT_GADGET_STATE_CHANGE_909020", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_909021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_909021", action = "action_EVENT_GADGET_STATE_CHANGE_909021", trigger_count = 0 }
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
		gadgets = { 909022, 909023, 909024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 909003, 909005, 909007 },
		regions = { },
		triggers = { "QUEST_FINISH_909010", "QUEST_FINISH_909011", "QUEST_FINISH_909012", "GADGET_STATE_CHANGE_909015", "GADGET_STATE_CHANGE_909017", "GADGET_STATE_CHANGE_909019" },
		rand_weight = 10
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 909001, 909004, 909008 },
		regions = { },
		triggers = { "QUEST_FINISH_909010", "QUEST_FINISH_909011", "QUEST_FINISH_909012", "GADGET_STATE_CHANGE_909013", "GADGET_STATE_CHANGE_909016", "GADGET_STATE_CHANGE_909020" },
		rand_weight = 10
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 909002, 909006, 909009 },
		regions = { },
		triggers = { "QUEST_FINISH_909010", "QUEST_FINISH_909011", "QUEST_FINISH_909012", "GADGET_STATE_CHANGE_909014", "GADGET_STATE_CHANGE_909018", "GADGET_STATE_CHANGE_909021" },
		rand_weight = 10
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 909002, 909003, 909006 },
		regions = { },
		triggers = { "QUEST_FINISH_909010", "QUEST_FINISH_909011", "QUEST_FINISH_909012", "GADGET_STATE_CHANGE_909014", "GADGET_STATE_CHANGE_909015", "GADGET_STATE_CHANGE_909018" },
		rand_weight = 90
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { },
		gadgets = { 909001, 909003, 909005 },
		regions = { },
		triggers = { "QUEST_FINISH_909010", "QUEST_FINISH_909011", "QUEST_FINISH_909012", "GADGET_STATE_CHANGE_909013", "GADGET_STATE_CHANGE_909015", "GADGET_STATE_CHANGE_909017" },
		rand_weight = 90
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { },
		gadgets = { 909001, 909002, 909004 },
		regions = { },
		triggers = { "QUEST_FINISH_909010", "QUEST_FINISH_909011", "QUEST_FINISH_909012", "GADGET_STATE_CHANGE_909013", "GADGET_STATE_CHANGE_909014", "GADGET_STATE_CHANGE_909016" },
		rand_weight = 90
	},
	{
		-- suite_id = 8,
		-- description = suite_8,
		monsters = { },
		gadgets = { 909003, 909005, 909006 },
		regions = { },
		triggers = { "QUEST_FINISH_909010", "QUEST_FINISH_909011", "QUEST_FINISH_909012", "GADGET_STATE_CHANGE_909015", "GADGET_STATE_CHANGE_909017", "GADGET_STATE_CHANGE_909018" },
		rand_weight = 180
	},
	{
		-- suite_id = 9,
		-- description = suite_9,
		monsters = { },
		gadgets = { 909001, 909004, 909005 },
		regions = { },
		triggers = { "QUEST_FINISH_909010", "QUEST_FINISH_909011", "QUEST_FINISH_909012", "GADGET_STATE_CHANGE_909013", "GADGET_STATE_CHANGE_909016", "GADGET_STATE_CHANGE_909017" },
		rand_weight = 180
	},
	{
		-- suite_id = 10,
		-- description = suite_10,
		monsters = { },
		gadgets = { 909002, 909004, 909006 },
		regions = { },
		triggers = { "QUEST_FINISH_909010", "QUEST_FINISH_909011", "QUEST_FINISH_909012", "GADGET_STATE_CHANGE_909014", "GADGET_STATE_CHANGE_909016", "GADGET_STATE_CHANGE_909018" },
		rand_weight = 180
	},
	{
		-- suite_id = 11,
		-- description = suite_11,
		monsters = { },
		gadgets = { 909007, 909008, 909009 },
		regions = { },
		triggers = { "QUEST_FINISH_909010", "QUEST_FINISH_909011", "QUEST_FINISH_909012", "GADGET_STATE_CHANGE_909019", "GADGET_STATE_CHANGE_909020", "GADGET_STATE_CHANGE_909021" },
		rand_weight = 10
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_FINISH_909010(context, evt)
	-- 将configid为 909001 的物件更改为状态 GadgetState.GearAction1
	ScriptLib.SetGadgetStateByConfigId(context, 909001, GadgetState.GearAction1) 
	
	-- 将configid为 909006 的物件更改为状态 GadgetState.GearAction1
	ScriptLib.SetGadgetStateByConfigId(context, 909006, GadgetState.GearAction1) 
	
	-- 将configid为 909007 的物件更改为状态 GadgetState.GearAction1
	ScriptLib.SetGadgetStateByConfigId(context, 909007, GadgetState.GearAction1)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_FINISH_909011(context, evt)
	-- 将configid为 909005 的物件更改为状态 GadgetState.GearAction1
	ScriptLib.SetGadgetStateByConfigId(context, 909005, GadgetState.GearAction1) 
	
	-- 将configid为 909008 的物件更改为状态 GadgetState.GearAction1
	ScriptLib.SetGadgetStateByConfigId(context, 909008, GadgetState.GearAction1) 
	
	-- 将configid为 909002 的物件更改为状态 GadgetState.GearAction1
	ScriptLib.SetGadgetStateByConfigId(context, 909002, GadgetState.GearAction1) 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_QUEST_FINISH_909012(context, evt)
	-- 将configid为 909004 的物件更改为状态 GadgetState.GearAction1
	ScriptLib.SetGadgetStateByConfigId(context, 909004, GadgetState.GearAction1)
	
	-- 将configid为 909009 的物件更改为状态 GadgetState.GearAction1
	ScriptLib.SetGadgetStateByConfigId(context, 909009, GadgetState.GearAction1)
	
	-- 将configid为 909003 的物件更改为状态 GadgetState.GearAction1
	ScriptLib.SetGadgetStateByConfigId(context, 909003, GadgetState.GearAction1) 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_909013(context, evt)
	if 909001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_909013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310790901") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_909014(context, evt)
	if 909002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_909014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310790901") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_909015(context, evt)
	if 909003 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_909015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310790901") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_909016(context, evt)
	if 909004 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_909016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310790902") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_909017(context, evt)
	if 909005 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_909017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310790902") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_909018(context, evt)
	if 909006 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_909018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310790902") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_909019(context, evt)
	if 909007 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_909019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310790903") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_909020(context, evt)
	if 909008 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_909020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310790903") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_909021(context, evt)
	if 909009 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_909021(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310790903") then
	  return -1
	end
	
	return 0
end
