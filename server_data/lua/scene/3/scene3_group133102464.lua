-- Trigger变量
local defs = {
	gadget_id = 464004
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
	{ config_id = 464001, gadget_id = 70310011, pos = { x = 1724.8, y = 250.8, z = 773.1 }, rot = { x = 0.0, y = 250.9, z = 0.0 }, level = 18, persistent = true },
	{ config_id = 464002, gadget_id = 70310011, pos = { x = 1724.9, y = 250.8, z = 763.4 }, rot = { x = 0.0, y = 163.0, z = 0.0 }, level = 18, persistent = true },
	{ config_id = 464003, gadget_id = 70310011, pos = { x = 1732.3, y = 250.8, z = 763.6 }, rot = { x = 0.0, y = 72.3, z = 0.0 }, level = 18, persistent = true },
	{ config_id = 464004, gadget_id = 70211111, pos = { x = 1728.1, y = 251.0, z = 768.6 }, rot = { x = 0.0, y = 268.2, z = 0.0 }, level = 18, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 464008, gadget_id = 70310011, pos = { x = 1732.0, y = 250.8, z = 773.3 }, rot = { x = 0.0, y = 234.4, z = 0.0 }, level = 18, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_464005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_464005", action = "action_EVENT_GADGET_STATE_CHANGE_464005", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_464006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_464006" },
	{ name = "GADGET_CREATE_464007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_464007", action = "action_EVENT_GADGET_CREATE_464007" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 464001, 464002, 464003, 464008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_464005", "GADGET_STATE_CHANGE_464006", "GADGET_CREATE_464007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_464005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_464005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_464006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_464007(context, evt)
	if defs.gadget_id ~= evt.param1 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_464007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      return -1
	    end
	
	return 0
end
