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
	{ config_id = 285, gadget_id = 70360002, pos = { x = -32.6, y = 0.8, z = -141.6 }, rot = { x = 0.0, y = 86.5, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_157", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_157", action = "action_EVENT_GADGET_CREATE_157" },
	{ name = "SELECT_OPTION_158", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_158", action = "action_EVENT_SELECT_OPTION_158", forbid_guest = false }
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
		gadgets = { 285 },
		regions = { },
		triggers = { "GADGET_CREATE_157", "SELECT_OPTION_158" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_157(context, evt)
	if 285 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_157(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {105}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_158(context, evt)
	if 285 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_158(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011048, suite = 2 }) then
			return -1
		end
	
	-- 改变指定group组201011051中， configid为283的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201011051, 283, GadgetState.Default) then
			return -1
		end 
	
	-- 改变指定group组201011051中， configid为284的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201011051, 284, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
