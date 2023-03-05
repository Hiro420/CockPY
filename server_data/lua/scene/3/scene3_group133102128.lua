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
	{ config_id = 465, gadget_id = 70220032, pos = { x = 946.0, y = 212.8, z = 162.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 662, gadget_id = 70690006, pos = { x = 946.4, y = 211.8, z = 162.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_239", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_239", action = "action_EVENT_GADGET_STATE_CHANGE_239", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_240", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_240", action = "action_EVENT_GADGET_STATE_CHANGE_240", trigger_count = 0 },
	{ name = "GATHER_241", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_241", action = "action_EVENT_GATHER_241" }
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
	end_suite = 3,
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
		gadgets = { 465 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_239", "GADGET_STATE_CHANGE_240" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 662 },
		regions = { },
		triggers = { "GATHER_241" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_239(context, evt)
	if 465 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_239(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102128, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_240(context, evt)
	if 465 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_240(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102128, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_241(context, evt)
	if 467 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_241(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102128, 3) then
		return -1
	end
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102128, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102128, 2)
	
	return 0
end
