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
	{ config_id = 688001, gadget_id = 70220032, pos = { x = 1168.3, y = 209.4, z = 127.6 }, rot = { x = 335.9, y = 136.6, z = 343.2 }, level = 16 },
	{ config_id = 688002, gadget_id = 70690001, pos = { x = 1165.7, y = 207.8, z = 147.7 }, rot = { x = 0.0, y = 344.9, z = 0.0 }, level = 16 },
	{ config_id = 688007, gadget_id = 70690001, pos = { x = 1162.2, y = 206.3, z = 166.3 }, rot = { x = 0.0, y = 349.8, z = 0.0 }, level = 16 },
	{ config_id = 688008, gadget_id = 70690001, pos = { x = 1159.0, y = 205.0, z = 184.5 }, rot = { x = 0.0, y = 349.8, z = 0.0 }, level = 16 },
	{ config_id = 688009, gadget_id = 70690001, pos = { x = 1155.6, y = 203.6, z = 203.7 }, rot = { x = 0.0, y = 349.8, z = 0.0 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_688004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_688004", action = "action_EVENT_GADGET_STATE_CHANGE_688004", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_688005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_688005", action = "action_EVENT_GADGET_STATE_CHANGE_688005", trigger_count = 0 },
	{ name = "GADGET_CREATE_688006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_688006", action = "action_EVENT_GADGET_CREATE_688006", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 688001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_688004", "GADGET_STATE_CHANGE_688005", "GADGET_CREATE_688006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 688002, 688007, 688008, 688009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_688004(context, evt)
	if 688001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_688004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102688, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_688005(context, evt)
	if 688001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_688005(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102688, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_688006(context, evt)
	if 688001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_688006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102688, 2)
	
	return 0
end
