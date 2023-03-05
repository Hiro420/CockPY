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
	{ config_id = 8001, gadget_id = 70900100, pos = { x = -3.4, y = 21.0, z = 17.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, mark_flag = 1 },
	{ config_id = 8002, gadget_id = 70900100, pos = { x = 2.9, y = 21.0, z = 24.6 }, rot = { x = 0.0, y = 176.7, z = 0.0 }, level = 1, mark_flag = 2 },
	{ config_id = 8003, gadget_id = 70900100, pos = { x = -1.4, y = 21.0, z = 24.4 }, rot = { x = 0.0, y = 176.7, z = 0.0 }, level = 1, mark_flag = 3 },
	{ config_id = 8004, gadget_id = 70900100, pos = { x = -5.7, y = 21.0, z = 24.1 }, rot = { x = 0.0, y = 176.7, z = 0.0 }, level = 1, mark_flag = 4 },
	{ config_id = 8005, gadget_id = 70900100, pos = { x = -9.8, y = 21.0, z = 23.9 }, rot = { x = 0.0, y = 176.7, z = 0.0 }, level = 1, mark_flag = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_8006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8006", action = "action_EVENT_GADGET_CREATE_8006", trigger_count = 0 },
	{ name = "SELECT_OPTION_8007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_8007", action = "action_EVENT_SELECT_OPTION_8007", trigger_count = 0 }
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
		gadgets = { 8001, 8002, 8003, 8004, 8005 },
		regions = { },
		triggers = { "GADGET_CREATE_8006", "SELECT_OPTION_8007" },
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
function condition_EVENT_GADGET_CREATE_8006(context, evt)
	if evt.param1 ~= 8001 then
		return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8006(context, evt)
	ScriptLib.SetWorktopOptionsByGroupId(context, 220007008, evt.param1, {1,4,5,6,7})
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_8007(context, evt)
	if evt.param1 ~= 8001 then
		return false
	end
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_8007(context, evt)
	if evt.param2 == 1 then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 220007008, evt.param1, GadgetState.GearStart)
	elseif evt.param2 == 4 then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 220007008, evt.param1, GadgetState.GearStop) 
	elseif evt.param2 == 5 then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 220007008, evt.param1, GadgetState.GearAction1)
	elseif evt.param2 == 6 then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 220007008, evt.param1, GadgetState.GearAction2)
	elseif evt.param2 == 7 then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 220007008, evt.param1, GadgetState.Default)
	end
	return 0
end
