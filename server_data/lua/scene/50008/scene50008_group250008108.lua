-- Trigger变量
local defs = {
	gadget_id = 108004
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
	{ config_id = 108001, gadget_id = 70310001, pos = { x = -46.2, y = 4.0, z = -470.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 108002, gadget_id = 70310001, pos = { x = -46.6, y = 4.0, z = -469.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 108003, gadget_id = 70310001, pos = { x = -47.6, y = 4.0, z = -466.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 108004, gadget_id = 70211111, pos = { x = -43.7, y = 4.0, z = -467.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 108008, gadget_id = 70310001, pos = { x = -46.8, y = 4.0, z = -464.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_108005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_108005", action = "action_EVENT_GADGET_STATE_CHANGE_108005", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_108006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_108006" },
	{ name = "GADGET_CREATE_108007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_108007", action = "action_EVENT_GADGET_CREATE_108007" }
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
		gadgets = { 108001, 108002, 108003, 108008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_108005", "GADGET_STATE_CHANGE_108006", "GADGET_CREATE_108007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_108005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_108005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_108006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_108007(context, evt)
	if defs.gadget_id ~= evt.param1 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_108007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      return -1
	    end
	
	return 0
end
