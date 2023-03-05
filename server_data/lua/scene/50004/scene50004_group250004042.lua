-- Trigger变量
local defs = {
	gadget_id_1 = 381,
	gadget_id_2 = 1,
	gadget_id_3 = 382,
	gadget_id_4 = 383
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
	{ config_id = 381, gadget_id = 70900241, pos = { x = -178.0, y = -11.0, z = -655.0 }, rot = { x = 0.0, y = 269.6, z = 0.0 }, level = 1, route_id = 50004007 },
	{ config_id = 382, gadget_id = 70900241, pos = { x = -172.0, y = -11.0, z = -655.0 }, rot = { x = 0.0, y = 269.6, z = 0.0 }, level = 1, route_id = 50004009 },
	{ config_id = 383, gadget_id = 70900241, pos = { x = -166.0, y = -11.0, z = -655.0 }, rot = { x = 0.0, y = 269.6, z = 0.0 }, level = 1, route_id = 50004011 },
	{ config_id = 386, gadget_id = 70211001, pos = { x = -172.5, y = -11.0, z = -662.4 }, rot = { x = 0.0, y = 246.7, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_73", event = EventType.EVENT_CLIENT_EXECUTE, source = "GravityPlatform", condition = "condition_EVENT_CLIENT_EXECUTE_73", action = "action_EVENT_CLIENT_EXECUTE_73", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_75", event = EventType.EVENT_CLIENT_EXECUTE, source = "GravityPlatform", condition = "condition_EVENT_CLIENT_EXECUTE_75", action = "action_EVENT_CLIENT_EXECUTE_75", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_76", event = EventType.EVENT_CLIENT_EXECUTE, source = "GravityPlatform", condition = "condition_EVENT_CLIENT_EXECUTE_76", action = "action_EVENT_CLIENT_EXECUTE_76", trigger_count = 0 },
	{ name = "PLATFORM_REACH_POINT_77", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_77", action = "action_EVENT_PLATFORM_REACH_POINT_77", trigger_count = 0 }
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
	end_suite = 1,
	rand_suite = true,
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
		gadgets = { 381, 382, 383 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_73", "CLIENT_EXECUTE_75", "CLIENT_EXECUTE_76", "PLATFORM_REACH_POINT_77" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_73(context, evt)
	if defs.gadget_id_1 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_73(context, evt)
	if evt.param1 == defs.gadget_id_2 then
	
	ScriptLib.SetPlatformRouteId(context, defs.gadget_id_1, 50004006) 
	
	return 0
	
	end
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_75(context, evt)
	if defs.gadget_id_3 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_75(context, evt)
	if evt.param1 == defs.gadget_id_2 then
	
	ScriptLib.SetPlatformRouteId(context, defs.gadget_id_3, 50004008) 
	
	return 0
	
	end
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_76(context, evt)
	if defs.gadget_id_4 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_76(context, evt)
	if evt.param1 == defs.gadget_id_2 then
	
	ScriptLib.SetPlatformRouteId(context, defs.gadget_id_4, 50004010) 
	
	return 0
	
	end
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_77(context, evt)
	-- 判断是gadgetid 为 381的移动平台，是否到达了50004006 的路线中的 1 点
	
	if 381 ~= evt.param1 then
	  return false
	end
	
	if 50004006 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断是gadgetid 为 382的移动平台，是否到达了50004008 的路线中的 1 点
	
	if 382 ~= evt.param1 then
	  return false
	end
	
	if 50004008 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断是gadgetid 为 383的移动平台，是否到达了50004010 的路线中的 1 点
	
	if 383 ~= evt.param1 then
	  return false
	end
	
	if 50004010 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_77(context, evt)
	-- 创建id为386的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 386 }) then
	  return -1
	end
	
	return 0
end
