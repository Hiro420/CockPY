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
	{ config_id = 1720, gadget_id = 70690001, pos = { x = 1994.7, y = 213.5, z = -1116.7 }, rot = { x = 0.0, y = 182.1, z = 0.0 }, level = 5 },
	{ config_id = 1722, gadget_id = 70690001, pos = { x = 1991.7, y = 205.3, z = -1162.4 }, rot = { x = 0.0, y = 203.5, z = 0.0 }, level = 5 },
	{ config_id = 1724, gadget_id = 70680001, pos = { x = 2002.9, y = 195.9, z = -1187.5 }, rot = { x = 0.0, y = 340.7, z = 0.0 }, level = 5, arguments = { 0, 0, 0 } },
	{ config_id = 1725, gadget_id = 70900039, pos = { x = 1995.4, y = 216.2, z = -1106.3 }, rot = { x = 0.0, y = 281.8, z = 0.0 }, level = 5, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_73", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_73", action = "action_EVENT_GADGET_STATE_CHANGE_73", trigger_count = 0 },
	{ name = "TIMER_EVENT_74", event = EventType.EVENT_TIMER_EVENT, source = "stop2029", condition = "", action = "action_EVENT_TIMER_EVENT_74", trigger_count = 0 }
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
		triggers = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_73(context, evt)
	if 1725 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_73(context, evt)
	-- 创建id为2026的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2026 }) then
	  return -1
	end
	
	-- 创建id为2027的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2027 }) then
	  return -1
	end
	
	-- 延迟20秒后,向groupId为：133001093的对象,请求一次调用,并将string参数："stop2029" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001093, "stop2029", 20) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_74(context, evt)
	-- 将configid为 2029 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2029, GadgetState.Default) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001093, suite = 2 }) then
			return -1
		end
	
	return 0
end
