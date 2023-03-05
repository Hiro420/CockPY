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
	{ config_id = 467, gadget_id = 70220032, pos = { x = 215.0, y = 239.2, z = 156.8 }, rot = { x = 0.0, y = 218.7, z = 0.0 }, level = 19 },
	{ config_id = 468, gadget_id = 70690001, pos = { x = 206.3, y = 239.8, z = 167.8 }, rot = { x = 0.0, y = 334.5, z = 0.0 }, level = 19 },
	{ config_id = 469, gadget_id = 70690001, pos = { x = 197.7, y = 239.4, z = 182.7 }, rot = { x = 0.0, y = 330.6, z = 0.0 }, level = 19 },
	{ config_id = 473, gadget_id = 70211111, pos = { x = 188.3, y = 238.1, z = 198.8 }, rot = { x = 348.5, y = 170.8, z = 0.0 }, level = 19, drop_tag = "解谜中级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_242", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_242", action = "action_EVENT_GADGET_STATE_CHANGE_242", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_144001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_144001", action = "action_EVENT_GADGET_STATE_CHANGE_144001", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_144002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_144002", action = "action_EVENT_GADGET_STATE_CHANGE_144002" },
	{ name = "GADGET_CREATE_144003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_144003", action = "action_EVENT_GADGET_CREATE_144003", trigger_count = 0 }
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
		gadgets = { 467 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_242", "GADGET_STATE_CHANGE_144001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 468, 469, 473 },
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
		triggers = { "GADGET_STATE_CHANGE_144002", "GADGET_CREATE_144003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_242(context, evt)
	if 467 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_242(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104144, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_144001(context, evt)
	if 467 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_144001(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104144, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_144002(context, evt)
	if 473 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_144002(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104144, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_144003(context, evt)
	if 467 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_144003(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104144, 2)
	
	return 0
end
