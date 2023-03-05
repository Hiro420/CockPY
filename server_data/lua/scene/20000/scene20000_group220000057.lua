-- Trigger变量
local defs = {
	gadget_id_1 = 318,
	gadget_id_2 = 319,
	gadget_id_3 = 320,
	gadget_id_4 = 321,
	gadget_id_5 = 322,
	gadget_id_6 = 323,
	gadget_id_7 = 324,
	gadget_id_8 = 325,
	gadget_id_9 = 326
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
	{ config_id = 317, gadget_id = 70900236, pos = { x = -30.6, y = 10.4, z = 304.3 }, rot = { x = 0.0, y = 86.9, z = 0.0 }, level = 1 },
	{ config_id = 318, gadget_id = 70900236, pos = { x = -30.0, y = 10.5, z = 302.0 }, rot = { x = 0.0, y = 82.8, z = 0.0 }, level = 1 },
	{ config_id = 319, gadget_id = 70900236, pos = { x = -28.9, y = 10.7, z = 299.3 }, rot = { x = 0.0, y = 37.9, z = 0.0 }, level = 1 },
	{ config_id = 320, gadget_id = 70900236, pos = { x = -28.4, y = 11.1, z = 296.9 }, rot = { x = 0.0, y = 77.4, z = 0.0 }, level = 1 },
	{ config_id = 321, gadget_id = 70900236, pos = { x = -28.7, y = 12.9, z = 294.1 }, rot = { x = 317.5, y = 229.8, z = 0.0 }, level = 1 },
	{ config_id = 322, gadget_id = 70900236, pos = { x = -27.1, y = 10.5, z = 288.2 }, rot = { x = 0.0, y = 48.3, z = 0.0 }, level = 1 },
	{ config_id = 323, gadget_id = 70900236, pos = { x = -27.5, y = 10.5, z = 292.3 }, rot = { x = 0.0, y = 180.3, z = 0.0 }, level = 1 },
	{ config_id = 324, gadget_id = 70900236, pos = { x = -27.3, y = 10.7, z = 290.8 }, rot = { x = 0.0, y = 83.8, z = 0.0 }, level = 1 },
	{ config_id = 325, gadget_id = 70900236, pos = { x = -27.3, y = 10.6, z = 289.5 }, rot = { x = 0.0, y = 300.6, z = 0.0 }, level = 1 },
	{ config_id = 326, gadget_id = 70211031, pos = { x = -20.1, y = 10.1, z = 288.7 }, rot = { x = 0.0, y = 314.7, z = 0.0 }, level = 1, drop_tag = "战斗超级蒙德", showcutscene = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_100", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_100", action = "action_EVENT_GADGET_STATE_CHANGE_100", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_101", event = EventType.EVENT_CLIENT_EXECUTE, source = "MimosaTrigger", condition = "", action = "", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_102", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_102", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_103", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_103", action = "action_EVENT_GADGET_STATE_CHANGE_103", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "count", value = 0, no_refresh = false },
	{ name = "ison", value = 0, no_refresh = false }
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
	rand_suite = false,
	npcs = { }
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
		gadgets = { 317 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_100", "CLIENT_EXECUTE_101", "GADGET_STATE_CHANGE_102", "GADGET_STATE_CHANGE_103" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_100(context, evt)
	if 317 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_100(context, evt)
	-- 创建id为269的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
	  return -1
	end
	
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_2 }) then
	  return -1
	end
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_3 }) then
	  return -1
	end
	
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_4 }) then
	  return -1
	end
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_5 }) then
	  return -1
	end
	
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_6 }) then
	  return -1
	end
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_7 }) then
	  return -1
	end
	
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_8 }) then
	  return -1
	end
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then 
	return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作

-- 触发条件

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_102(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "count")
	local c_num = c_num_1 + 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", c_num) then
	ScriptLib.PrintLog("c_num="..c_num)
	    return -1
	end
	
	if c_num == 9 then
	 if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_9 }) then
	ScriptLib.PrintLog("create")
	  return -1
	       end
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_103(context, evt)
	if 317 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"ison"为1
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_103(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_id_1 }) then
		    return -1
		end
		
	
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_id_2 }) then
		    return -1
		end
		
	
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_id_3 }) then
		    return -1
		end
		
	
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_id_4 }) then
		    return -1
		end
		
	
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_id_5 }) then
		    return -1
		end
		
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_id_6 }) then
		    return -1
		end
		
	
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_id_7 }) then
		    return -1
		end
		
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_id_8 }) then
		    return -1
		end
		
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 0) then 
	return -1
	end
	
		
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 0) then 
	return -1
	end
	
	
	return 0
end
