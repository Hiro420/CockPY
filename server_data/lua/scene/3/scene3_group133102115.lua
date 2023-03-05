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
	{ config_id = 415, gadget_id = 70220032, pos = { x = 1348.9, y = 223.0, z = 511.9 }, rot = { x = 356.3, y = 258.7, z = 356.8 }, level = 16 },
	{ config_id = 416, gadget_id = 70211111, pos = { x = 1412.1, y = 220.8, z = 521.8 }, rot = { x = 0.0, y = 268.2, z = 0.0 }, level = 18, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 115001, gadget_id = 70690001, pos = { x = 1365.4, y = 229.6, z = 514.6 }, rot = { x = 0.0, y = 261.2, z = 0.0 }, level = 18 },
	{ config_id = 115002, gadget_id = 70690001, pos = { x = 1385.9, y = 229.7, z = 517.8 }, rot = { x = 0.0, y = 261.2, z = 0.0 }, level = 18 },
	{ config_id = 115004, gadget_id = 70690006, pos = { x = 1348.7, y = 220.9, z = 511.7 }, rot = { x = 0.0, y = 187.9, z = 0.0 }, level = 16, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_222", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_222", action = "action_EVENT_GADGET_STATE_CHANGE_222", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_223", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_223", action = "action_EVENT_GADGET_STATE_CHANGE_223", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_115003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115003", action = "action_EVENT_GADGET_STATE_CHANGE_115003" }
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
		gadgets = { 415 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_222", "GADGET_STATE_CHANGE_223", "GADGET_STATE_CHANGE_115003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 115001, 115002, 115004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_222(context, evt)
	if 415 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_222(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102115, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_223(context, evt)
	if 415 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_223(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102115, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115003(context, evt)
	if 415 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115003(context, evt)
	-- 创建id为416的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 416 }) then
	  return -1
	end
	
	return 0
end
