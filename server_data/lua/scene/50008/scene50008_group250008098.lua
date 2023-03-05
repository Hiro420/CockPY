-- Trigger变量
local defs = {
	gadget_id = 410
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
	{ config_id = 407, gadget_id = 70310001, pos = { x = -67.8, y = 4.0, z = -471.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 408, gadget_id = 70310001, pos = { x = -68.2, y = 4.0, z = -469.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 409, gadget_id = 70310001, pos = { x = -69.2, y = 4.0, z = -467.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 410, gadget_id = 70211111, pos = { x = -65.3, y = 4.0, z = -468.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_296", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_296", action = "action_EVENT_GADGET_STATE_CHANGE_296", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_98001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_98001" },
	{ name = "GADGET_CREATE_98002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_98002", action = "action_EVENT_GADGET_CREATE_98002" }
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
		gadgets = { 407, 408, 409 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_296", "GADGET_STATE_CHANGE_98001", "GADGET_CREATE_98002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_296(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_296(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		ScriptLib.CreateGadget(context, { config_id = defs.gadget_id })
	end
end

-- 触发条件

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_98001(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_98002(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_98002(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      return -1
	    end
	
	return 0
end
