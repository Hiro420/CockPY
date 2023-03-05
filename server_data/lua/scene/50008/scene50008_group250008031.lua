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
	{ config_id = 127, gadget_id = 70900039, pos = { x = 146.5, y = 7.4, z = -561.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 142, gadget_id = 70220013, pos = { x = 136.2, y = 4.0, z = -562.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_77", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_77", action = "action_EVENT_GADGET_STATE_CHANGE_77", trigger_count = 0 },
	{ name = "TIMER_EVENT_78", event = EventType.EVENT_TIMER_EVENT, source = "START", condition = "", action = "action_EVENT_TIMER_EVENT_78", trigger_count = 0 }
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
		gadgets = { 127, 142 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_77", "TIMER_EVENT_78" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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
function condition_EVENT_GADGET_STATE_CHANGE_77(context, evt)
	if 127 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_77(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250008033, suite = 2 }) then
			return -1
		end
	
	-- 延迟15秒后,向groupId为：250008031的对象,请求一次调用,并将string参数："START" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250008031, "START", 15) then
	  return -1
	end
	
	-- 创建id为142的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 142 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_78(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250008033, suite = 1 }) then
			return -1
		end
	
	-- 将configid为 127 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
