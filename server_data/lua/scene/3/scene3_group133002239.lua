-- Trigger变量
local defs = {
	gadget_id_1 = 2076
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
	{ config_id = 2073, gadget_id = 70900007, pos = { x = 2052.5, y = 266.3, z = -374.8 }, rot = { x = 0.0, y = 357.8, z = 0.0 }, level = 15, persistent = true },
	{ config_id = 2074, gadget_id = 70900007, pos = { x = 2001.4, y = 260.6, z = -362.2 }, rot = { x = 0.0, y = 357.8, z = 0.0 }, level = 15, persistent = true },
	{ config_id = 2075, gadget_id = 70900007, pos = { x = 2031.3, y = 259.6, z = -387.1 }, rot = { x = 0.0, y = 357.8, z = 0.0 }, level = 15, persistent = true },
	{ config_id = 2076, gadget_id = 70211101, pos = { x = 2031.5, y = 261.8, z = -368.8 }, rot = { x = 0.0, y = 180.7, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_283", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_283", action = "action_EVENT_GADGET_STATE_CHANGE_283" },
	{ name = "GADGET_STATE_CHANGE_284", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_284", action = "action_EVENT_GADGET_STATE_CHANGE_284" },
	{ name = "GADGET_STATE_CHANGE_285", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_285", action = "action_EVENT_GADGET_STATE_CHANGE_285" }
}

-- 变量
variables = {
	{ name = "v2073", value = 0, no_refresh = true },
	{ name = "v2074", value = 0, no_refresh = true },
	{ name = "v2075", value = 0, no_refresh = false }
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
		gadgets = { 2073, 2074, 2075 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_283", "GADGET_STATE_CHANGE_284", "GADGET_STATE_CHANGE_285" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_283(context, evt)
	if 2073 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_283(context, evt)
	-- 将本组内变量名为 "v2073" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "v2073", 1) then
	  return -1
	end
	
	-- 获取本组内变量名为 "v2073" 的变量值
	if ScriptLib.GetGroupVariableValue(context, "v2073") + ScriptLib.GetGroupVariableValue(context, "v2074") + ScriptLib.GetGroupVariableValue(context, "v2075") == 3  then
	
	
	-- 创生gadget 2076
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
		return -1
	end
	
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_284(context, evt)
	if 2074 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_284(context, evt)
	-- 将本组内变量名为 "v2073" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "v2074", 1) then
	  return -1
	end
	
	-- 获取本组内变量名为 "v2073" 的变量值
	if ScriptLib.GetGroupVariableValue(context, "v2073") + ScriptLib.GetGroupVariableValue(context, "v2074") + ScriptLib.GetGroupVariableValue(context, "v2075") == 3  then
	
	
	-- 创生gadget 2076
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
		return -1
	end
	
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_285(context, evt)
	if 2075 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_285(context, evt)
	-- 将本组内变量名为 "v2073" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "v2075", 1) then
	  return -1
	end
	
	-- 获取本组内变量名为 "v2073" 的变量值
	if ScriptLib.GetGroupVariableValue(context, "v2073") + ScriptLib.GetGroupVariableValue(context, "v2074") + ScriptLib.GetGroupVariableValue(context, "v2075") == 3  then
	
	
	-- 创生gadget 2076
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
		return -1
	end
	
	end
	
	
	return 0
end
