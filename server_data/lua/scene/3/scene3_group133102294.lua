-- Trigger变量
local defs = {
	switchPad = 460,
	treasureBox = 457
}


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
	{ config_id = 294001, gadget_id = 70211101, pos = { x = 1460.4, y = 201.2, z = 251.4 }, rot = { x = 2.2, y = 114.7, z = 18.1 }, level = 16, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 294002, gadget_id = 70220032, pos = { x = 1506.3, y = 201.3, z = 242.7 }, rot = { x = 11.0, y = 102.1, z = 356.5 }, level = 16, persistent = true },
	{ config_id = 294003, gadget_id = 70690001, pos = { x = 1499.6, y = 204.0, z = 242.4 }, rot = { x = 0.0, y = 282.3, z = 0.0 }, level = 16 },
	{ config_id = 294004, gadget_id = 70690001, pos = { x = 1491.0, y = 203.3, z = 244.3 }, rot = { x = 0.0, y = 282.3, z = 0.0 }, level = 16 },
	{ config_id = 294005, gadget_id = 70690001, pos = { x = 1482.8, y = 203.0, z = 245.8 }, rot = { x = 0.0, y = 282.3, z = 0.0 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_294007", event = EventType.EVENT_GADGET_CREATE, source = "294002", condition = "condition_EVENT_GADGET_CREATE_294007", action = "action_EVENT_GADGET_CREATE_294007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_294009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_294009", action = "action_EVENT_GADGET_STATE_CHANGE_294009", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_294010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_294010", action = "action_EVENT_GADGET_STATE_CHANGE_294010" },
	{ name = "GADGET_STATE_CHANGE_294011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_294011", action = "action_EVENT_GADGET_STATE_CHANGE_294011", trigger_count = 0 }
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
		gadgets = { 294002 },
		regions = { },
		triggers = { "GADGET_CREATE_294007", "GADGET_STATE_CHANGE_294009", "GADGET_STATE_CHANGE_294011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 294001, 294003, 294004, 294005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_294010" },
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
function condition_EVENT_GADGET_CREATE_294007(context, evt)
	if 294002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_294007(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102294, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_294009(context, evt)
	if 294002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_294009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102294, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_294010(context, evt)
	if 294001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_294010(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102294, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_294011(context, evt)
	if 294002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_294011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102294, 2)
	
	return 0
end
