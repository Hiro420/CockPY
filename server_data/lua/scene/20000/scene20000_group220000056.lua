-- Trigger变量
local defs = {
	gadget_id_1 = 308,
	gadget_id_2 = 309,
	gadget_id_3 = 310,
	gadget_id_4 = 311,
	gadget_id_5 = 312,
	gadget_id_6 = 313,
	gadget_id_7 = 314,
	gadget_id_8 = 315,
	gadget_id_9 = 316
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
	{ config_id = 307, gadget_id = 70900236, pos = { x = -36.2, y = 15.4, z = 300.6 }, rot = { x = 0.0, y = 86.9, z = 0.0 }, level = 1 },
	{ config_id = 308, gadget_id = 70900236, pos = { x = -37.8, y = 15.5, z = 300.6 }, rot = { x = 0.0, y = 82.8, z = 0.0 }, level = 1 },
	{ config_id = 309, gadget_id = 70900236, pos = { x = -39.5, y = 15.4, z = 301.7 }, rot = { x = 0.0, y = 37.9, z = 0.0 }, level = 1 },
	{ config_id = 310, gadget_id = 70900236, pos = { x = -40.1, y = 15.3, z = 303.2 }, rot = { x = 0.0, y = 77.4, z = 0.0 }, level = 1 },
	{ config_id = 311, gadget_id = 70900236, pos = { x = -39.8, y = 15.2, z = 304.9 }, rot = { x = 0.0, y = 229.8, z = 0.0 }, level = 1 },
	{ config_id = 312, gadget_id = 70900236, pos = { x = -40.6, y = 14.2, z = 311.5 }, rot = { x = 0.0, y = 90.8, z = 0.0 }, level = 1 },
	{ config_id = 313, gadget_id = 70900236, pos = { x = -40.7, y = 14.0, z = 315.6 }, rot = { x = 0.0, y = 180.3, z = 0.0 }, level = 1 },
	{ config_id = 314, gadget_id = 70900236, pos = { x = -41.0, y = 13.7, z = 319.9 }, rot = { x = 0.0, y = 83.8, z = 0.0 }, level = 1 },
	{ config_id = 315, gadget_id = 70900236, pos = { x = -41.4, y = 13.5, z = 324.5 }, rot = { x = 0.0, y = 300.6, z = 0.0 }, level = 1 },
	{ config_id = 316, gadget_id = 70211031, pos = { x = -41.0, y = 15.7, z = 299.1 }, rot = { x = 0.0, y = 26.7, z = 0.0 }, level = 1, drop_tag = "战斗超级蒙德", showcutscene = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_96", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96", action = "action_EVENT_GADGET_STATE_CHANGE_96", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_97", event = EventType.EVENT_CLIENT_EXECUTE, source = "MimosaTrigger", condition = "", action = "", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_98", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_98", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_99", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_99", action = "action_EVENT_GADGET_STATE_CHANGE_99", trigger_count = 0 }
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
		gadgets = { 307 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_96", "CLIENT_EXECUTE_97", "GADGET_STATE_CHANGE_98", "GADGET_STATE_CHANGE_99" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96(context, evt)
	if 307 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_98(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_99(context, evt)
	if 307 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"ison"为1
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_99(context, evt)
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
