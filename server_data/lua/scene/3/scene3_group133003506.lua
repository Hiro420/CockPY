-- Trigger变量
local defs = {
	gadget_id = 506004
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
	{ config_id = 506001, gadget_id = 70310001, pos = { x = 2729.7, y = 260.0, z = -1210.7 }, rot = { x = 0.0, y = 328.9, z = 0.0 }, level = 30, state = GadgetState.GearStart, persistent = true },
	{ config_id = 506002, gadget_id = 70310001, pos = { x = 2727.9, y = 260.1, z = -1208.8 }, rot = { x = 0.0, y = 328.9, z = 0.0 }, level = 30, state = GadgetState.GearStart, persistent = true },
	{ config_id = 506003, gadget_id = 70310001, pos = { x = 2726.3, y = 260.3, z = -1207.2 }, rot = { x = 0.0, y = 328.9, z = 0.0 }, level = 30, persistent = true },
	{ config_id = 506004, gadget_id = 70211111, pos = { x = 2726.6, y = 260.1, z = -1210.4 }, rot = { x = 0.6, y = 43.3, z = 7.0 }, level = 30, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_506005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_506005", action = "action_EVENT_GADGET_STATE_CHANGE_506005", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_506006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_506006" },
	{ name = "GADGET_CREATE_506007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_506007", action = "action_EVENT_GADGET_CREATE_506007" }
}

-- 变量
variables = {
	{ name = "start", value = 2, no_refresh = true }
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
		gadgets = { 506001, 506002, 506003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_506005", "GADGET_STATE_CHANGE_506006", "GADGET_CREATE_506007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_506005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_506005(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		ScriptLib.CreateGadget(context, { config_id = defs.gadget_id })
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_506006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_506007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_506007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      return -1
	    end
	
	return 0
end
