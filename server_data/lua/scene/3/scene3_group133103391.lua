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
	{ config_id = 391001, gadget_id = 70220032, pos = { x = 359.6, y = 251.6, z = 1655.3 }, rot = { x = 0.0, y = 196.1, z = 0.0 }, level = 24 },
	{ config_id = 391002, gadget_id = 70211101, pos = { x = 371.3, y = 272.0, z = 1768.9 }, rot = { x = 0.0, y = 164.6, z = 0.0 }, level = 24, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 391007, gadget_id = 70690006, pos = { x = 359.7, y = 251.6, z = 1655.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 391008, gadget_id = 70690001, pos = { x = 360.5, y = 259.8, z = 1667.1 }, rot = { x = 347.1, y = 13.4, z = 358.7 }, level = 24 },
	{ config_id = 391009, gadget_id = 70690001, pos = { x = 363.8, y = 265.1, z = 1686.2 }, rot = { x = 347.0, y = 11.3, z = 0.0 }, level = 24 },
	{ config_id = 391010, gadget_id = 70690001, pos = { x = 368.4, y = 270.1, z = 1710.7 }, rot = { x = 347.0, y = 9.4, z = 0.0 }, level = 24 },
	{ config_id = 391011, gadget_id = 70690001, pos = { x = 371.7, y = 273.6, z = 1736.5 }, rot = { x = 350.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 391012, gadget_id = 70690001, pos = { x = 362.2, y = 262.2, z = 1676.5 }, rot = { x = 342.8, y = 13.9, z = 0.0 }, level = 24 },
	{ config_id = 391013, gadget_id = 70690001, pos = { x = 366.0, y = 267.5, z = 1697.4 }, rot = { x = 349.2, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 391014, gadget_id = 70690001, pos = { x = 370.3, y = 271.8, z = 1724.3 }, rot = { x = 347.8, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 391015, gadget_id = 70690001, pos = { x = 372.3, y = 274.5, z = 1753.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_391003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_391003", action = "action_EVENT_GADGET_STATE_CHANGE_391003" },
	{ name = "GADGET_STATE_CHANGE_391004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_391004", action = "action_EVENT_GADGET_STATE_CHANGE_391004", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_391005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_391005", action = "action_EVENT_GADGET_STATE_CHANGE_391005", trigger_count = 0 },
	{ name = "GADGET_CREATE_391006", event = EventType.EVENT_GADGET_CREATE, source = "111", condition = "condition_EVENT_GADGET_CREATE_391006", action = "action_EVENT_GADGET_CREATE_391006", trigger_count = 0 }
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
		gadgets = { 391001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_391003", "GADGET_STATE_CHANGE_391004", "GADGET_STATE_CHANGE_391005", "GADGET_CREATE_391006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 391002, 391007, 391008, 391009, 391010, 391011, 391012, 391013, 391014, 391015 },
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
function condition_EVENT_GADGET_STATE_CHANGE_391003(context, evt)
	if 391002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_391003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1009, 3, 1) then
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133103391, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_391004(context, evt)
	if 391001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_391004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1009, 1, 1) then
	      return -1
	    end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103391, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_391005(context, evt)
	if 391001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_391005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1009, 4, 1) then
	      return -1
	    end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103391, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_391006(context, evt)
	if 391001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_391006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103391, 2)
	
	return 0
end
