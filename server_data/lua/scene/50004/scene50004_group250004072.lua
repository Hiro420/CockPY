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
	{ config_id = 652, gadget_id = 70900308, pos = { x = -174.8, y = -11.0, z = -615.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 50004024 },
	{ config_id = 653, gadget_id = 70900309, pos = { x = -174.8, y = -11.0, z = -617.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 654, gadget_id = 70211001, pos = { x = -176.8, y = -11.0, z = -616.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 655, gadget_id = 70900308, pos = { x = -174.8, y = -11.0, z = -613.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 50004025 },
	{ config_id = 656, gadget_id = 70900308, pos = { x = -174.8, y = -11.0, z = -610.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 50004026 },
	{ config_id = 657, gadget_id = 70900033, pos = { x = -181.8, y = -11.9, z = -612.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 658, gadget_id = 70900033, pos = { x = -168.0, y = -11.7, z = -612.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 659, gadget_id = 70900033, pos = { x = -174.2, y = -11.6, z = -603.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_138", event = EventType.EVENT_CLIENT_EXECUTE, source = "Jigsaw_Reward", condition = "", action = "action_EVENT_CLIENT_EXECUTE_138", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_139", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_139", action = "action_EVENT_GADGET_STATE_CHANGE_139", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_140", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_140", action = "action_EVENT_GADGET_STATE_CHANGE_140", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_141", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_141", action = "action_EVENT_GADGET_STATE_CHANGE_141", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_142", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_142", action = "action_EVENT_GADGET_STATE_CHANGE_142", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_143", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_143", action = "action_EVENT_GADGET_STATE_CHANGE_143", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_144", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_144", action = "action_EVENT_GADGET_STATE_CHANGE_144", trigger_count = 0 }
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
		gadgets = { 652, 653, 655, 656, 657, 658, 659 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_138", "GADGET_STATE_CHANGE_139", "GADGET_STATE_CHANGE_140", "GADGET_STATE_CHANGE_141", "GADGET_STATE_CHANGE_142", "GADGET_STATE_CHANGE_143", "GADGET_STATE_CHANGE_144" },
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
function action_EVENT_CLIENT_EXECUTE_138(context, evt)
	-- 创建id为654的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 654 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_139(context, evt)
	if 657 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_139(context, evt)
	-- 将configid为 653 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 653, GadgetState.Default) then
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 652) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_140(context, evt)
	if 657 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_140(context, evt)
	-- 将configid为 653 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 653, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 652) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_141(context, evt)
	if 658 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_141(context, evt)
	-- 将configid为 653 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 653, GadgetState.Default) then
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 655) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_142(context, evt)
	if 658 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_142(context, evt)
	-- 将configid为 653 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 653, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 655) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_143(context, evt)
	if 659 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_143(context, evt)
	-- 将configid为 653 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 653, GadgetState.Default) then
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 656) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_144(context, evt)
	if 659 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_144(context, evt)
	-- 将configid为 653 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 653, GadgetState.GearStart) then
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 656) then
	  return -1
	end
	
	return 0
end
