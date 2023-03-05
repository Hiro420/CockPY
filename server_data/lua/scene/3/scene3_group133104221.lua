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
	{ config_id = 221001, gadget_id = 70220032, pos = { x = 871.0, y = 207.6, z = 291.5 }, rot = { x = 347.1, y = 108.2, z = 3.7 }, level = 16 },
	{ config_id = 221002, gadget_id = 70211001, pos = { x = 857.5, y = 206.8, z = 316.6 }, rot = { x = 11.6, y = 157.9, z = 9.9 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 221003, gadget_id = 70690001, pos = { x = 868.8, y = 207.5, z = 298.3 }, rot = { x = 0.0, y = 329.0, z = 0.0 }, level = 16 },
	{ config_id = 221006, gadget_id = 70900201, pos = { x = 860.5, y = 209.5, z = 323.0 }, rot = { x = 354.2, y = 346.1, z = 358.0 }, level = 16 },
	{ config_id = 221008, gadget_id = 70690001, pos = { x = 863.1, y = 207.3, z = 307.6 }, rot = { x = 0.0, y = 329.0, z = 0.0 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_221004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_221004", action = "action_EVENT_GADGET_STATE_CHANGE_221004", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_221005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_221005", action = "action_EVENT_GADGET_STATE_CHANGE_221005", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_221007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_221007", action = "action_EVENT_GADGET_STATE_CHANGE_221007", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "isActive", value = 0, no_refresh = true }
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
		gadgets = { 221001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_221004", "GADGET_STATE_CHANGE_221005", "GADGET_STATE_CHANGE_221007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 221002, 221003, 221008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 221006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_221004(context, evt)
	if 221001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_221004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104221, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_221005(context, evt)
	if 221001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_221005(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104221, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_221007(context, evt)
	if 221002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_221007(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104221, 3)
	
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  return -1
	end
	
	return 0
end
