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
	{ config_id = 375, gadget_id = 70220032, pos = { x = 571.6, y = 223.2, z = 719.5 }, rot = { x = 0.0, y = 86.3, z = 0.0 }, level = 19 },
	{ config_id = 376, gadget_id = 70211001, pos = { x = 478.0, y = 216.6, z = 683.0 }, rot = { x = 351.3, y = 85.4, z = 359.8 }, level = 19, drop_tag = "战斗低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 377, gadget_id = 70690001, pos = { x = 557.2, y = 221.9, z = 713.5 }, rot = { x = 0.0, y = 249.6, z = 0.0 }, level = 19 },
	{ config_id = 378, gadget_id = 70690001, pos = { x = 536.6, y = 220.9, z = 705.7 }, rot = { x = 0.0, y = 249.6, z = 0.0 }, level = 19 },
	{ config_id = 379, gadget_id = 70690001, pos = { x = 515.9, y = 220.1, z = 697.6 }, rot = { x = 0.0, y = 249.6, z = 0.0 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_206", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_206", action = "action_EVENT_GADGET_STATE_CHANGE_206", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_207", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_207", action = "action_EVENT_GADGET_STATE_CHANGE_207", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_208", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_208", action = "action_EVENT_GADGET_STATE_CHANGE_208", trigger_count = 0 }
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
		gadgets = { 375 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_206", "GADGET_STATE_CHANGE_207", "GADGET_STATE_CHANGE_208" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 376, 377, 378, 379 },
		regions = { },
		triggers = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_206(context, evt)
	if 375 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_206(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104124, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_207(context, evt)
	if 375 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_207(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104124, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_208(context, evt)
	if 376 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_208(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104124, 3) then
		return -1
	end
	
	return 0
end
