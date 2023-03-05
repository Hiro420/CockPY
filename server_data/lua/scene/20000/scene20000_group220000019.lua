-- Trigger变量
local defs = {
	gadget_id_1 = 118,
	gadget_id_2 = 119,
	gadget_id_3 = 120,
	gadget_id_4 = 121,
	gadget_id_5 = 122
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
	{ config_id = 118, gadget_id = 70900207, pos = { x = 188.1, y = 0.6, z = 47.0 }, rot = { x = 0.0, y = 241.0, z = 0.0 }, level = 1 },
	{ config_id = 119, gadget_id = 70900207, pos = { x = 192.3, y = 0.6, z = 44.5 }, rot = { x = 0.0, y = 328.8, z = 0.0 }, level = 1 },
	{ config_id = 120, gadget_id = 70900207, pos = { x = 196.1, y = 0.6, z = 42.6 }, rot = { x = 0.0, y = 301.4, z = 0.0 }, level = 1 },
	{ config_id = 121, gadget_id = 70900207, pos = { x = 199.9, y = 0.6, z = 40.9 }, rot = { x = 0.0, y = 204.2, z = 0.0 }, level = 1 },
	{ config_id = 122, gadget_id = 70900207, pos = { x = 201.8, y = 0.6, z = 44.6 }, rot = { x = 0.0, y = 327.3, z = 0.0 }, level = 1 },
	{ config_id = 123, gadget_id = 70380003, pos = { x = 188.3, y = -1.5, z = 47.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 20000012, start_route = false },
	{ config_id = 124, gadget_id = 70380003, pos = { x = 192.1, y = -1.5, z = 44.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 20000013, start_route = false },
	{ config_id = 125, gadget_id = 70380003, pos = { x = 195.9, y = -1.5, z = 42.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 20000014, start_route = false },
	{ config_id = 126, gadget_id = 70380003, pos = { x = 199.9, y = -1.5, z = 40.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 20000015, start_route = false },
	{ config_id = 127, gadget_id = 70380003, pos = { x = 202.1, y = -1.4, z = 44.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 20000016, start_route = false },
	{ config_id = 132, gadget_id = 70510009, pos = { x = 108.8, y = 0.5, z = 64.3 }, rot = { x = 0.0, y = 272.2, z = 0.0 }, level = 1 },
	{ config_id = 133, gadget_id = 70510009, pos = { x = 106.9, y = 0.5, z = 65.9 }, rot = { x = 0.0, y = 48.2, z = 0.0 }, level = 1 },
	{ config_id = 134, gadget_id = 70510009, pos = { x = 104.6, y = 0.5, z = 67.5 }, rot = { x = 0.0, y = 94.8, z = 0.0 }, level = 1 },
	{ config_id = 135, gadget_id = 70510009, pos = { x = 105.3, y = 0.5, z = 65.6 }, rot = { x = 0.0, y = 66.4, z = 0.0 }, level = 1 },
	{ config_id = 136, gadget_id = 70510009, pos = { x = 103.0, y = 0.5, z = 68.9 }, rot = { x = 0.0, y = 55.1, z = 0.0 }, level = 1 },
	{ config_id = 137, gadget_id = 70510009, pos = { x = 100.7, y = 0.5, z = 70.3 }, rot = { x = 0.0, y = 53.9, z = 0.0 }, level = 1 },
	{ config_id = 138, gadget_id = 70510009, pos = { x = 103.1, y = 0.5, z = 67.2 }, rot = { x = 0.0, y = 270.4, z = 0.0 }, level = 1 },
	{ config_id = 139, gadget_id = 70510009, pos = { x = 106.2, y = 0.5, z = 68.2 }, rot = { x = 0.0, y = 259.9, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_70", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricPile", condition = "condition_EVENT_CLIENT_EXECUTE_70", action = "action_EVENT_CLIENT_EXECUTE_70" },
	{ name = "CLIENT_EXECUTE_71", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricPile", condition = "condition_EVENT_CLIENT_EXECUTE_71", action = "action_EVENT_CLIENT_EXECUTE_71" },
	{ name = "CLIENT_EXECUTE_72", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricPile", condition = "condition_EVENT_CLIENT_EXECUTE_72", action = "action_EVENT_CLIENT_EXECUTE_72" },
	{ name = "CLIENT_EXECUTE_73", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricPile", condition = "condition_EVENT_CLIENT_EXECUTE_73", action = "action_EVENT_CLIENT_EXECUTE_73" },
	{ name = "CLIENT_EXECUTE_74", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricPile", condition = "condition_EVENT_CLIENT_EXECUTE_74", action = "action_EVENT_CLIENT_EXECUTE_74" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 132, 133, 134, 135, 136, 137, 138 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_70", "CLIENT_EXECUTE_71", "CLIENT_EXECUTE_72", "CLIENT_EXECUTE_73", "CLIENT_EXECUTE_74" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_70(context, evt)
	if defs.gadget_id_1 ~= ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_70(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 123) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_71(context, evt)
	if defs.gadget_id_2 ~= ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_71(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 124) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_72(context, evt)
	if defs.gadget_id_3 ~= ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_72(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 125) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_73(context, evt)
	if defs.gadget_id_4 ~= ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_73(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 126) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_74(context, evt)
	if defs.gadget_id_5 ~= ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_74(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 127) then
	  return -1
	end
	
	return 0
end
