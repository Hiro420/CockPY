-- Trigger变量
local defs = {
	gadget_id = 385004,
	gadget_1 = 385001,
	gadget_2 = 385002,
	group_id = 133103385
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
	{ config_id = 385001, gadget_id = 70360006, pos = { x = 291.7, y = 197.6, z = 1444.9 }, rot = { x = 2.9, y = 360.0, z = 358.6 }, level = 24, persistent = true },
	{ config_id = 385002, gadget_id = 70360006, pos = { x = 285.6, y = 193.0, z = 1449.6 }, rot = { x = 15.4, y = 0.4, z = 2.6 }, level = 24, persistent = true },
	{ config_id = 385004, gadget_id = 70211111, pos = { x = 291.9, y = 197.7, z = 1442.2 }, rot = { x = 2.9, y = 360.0, z = 358.6 }, level = 24, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GROUP_LOAD_385003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_385003", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_385005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_385005", action = "action_EVENT_GADGET_STATE_CHANGE_385005", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_385006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_385006" },
	{ name = "GADGET_CREATE_385007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_385007", action = "action_EVENT_GADGET_CREATE_385007" }
}

-- 变量
variables = {
	{ name = "start", value = 0, no_refresh = true }
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
		gadgets = { 385001, 385002 },
		regions = { },
		triggers = { "GROUP_LOAD_385003", "GADGET_STATE_CHANGE_385005", "GADGET_STATE_CHANGE_385006", "GADGET_CREATE_385007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_GROUP_LOAD_385003(context, evt)
	local sum = 0
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_1) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_2) == GadgetState.GearStart then
	sum = sum + 1
	end
	
	ScriptLib.SetGroupVariableValue(context, "start", sum)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_385005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_385005(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default and evt.param3 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		ScriptLib.CreateGadget(context, { config_id = defs.gadget_id })
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_385006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_385007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_385007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      return -1
	    end
	
	return 0
end
