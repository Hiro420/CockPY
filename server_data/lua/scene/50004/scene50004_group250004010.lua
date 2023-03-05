-- Trigger变量
local defs = {
	gadget_id_1 = 269,
	gadget_id_2 = 197,
	gadget_id_3 = 196,
	gadget_id_4 = 1,
	gadget_id_5 = 0,
	gadget_id_6 = 199,
	gadget_id_7 = 198
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
	{ config_id = 196, gadget_id = 70350004, pos = { x = 556.0, y = -9.9, z = -131.1 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 197, gadget_id = 70900224, pos = { x = 556.0, y = -10.7, z = -135.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 198, gadget_id = 70350004, pos = { x = 564.1, y = -9.9, z = -131.3 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 199, gadget_id = 70900224, pos = { x = 564.1, y = -10.5, z = -135.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 202, gadget_id = 70900208, pos = { x = 553.6, y = -11.0, z = -134.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 204, gadget_id = 70900208, pos = { x = 558.0, y = -11.1, z = -134.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 205, gadget_id = 70900208, pos = { x = 562.8, y = -11.3, z = -134.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 207, gadget_id = 70900208, pos = { x = 566.9, y = -11.2, z = -134.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 208, gadget_id = 70380003, pos = { x = 541.0, y = -12.3, z = -131.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 50004003, start_route = false },
	{ config_id = 268, gadget_id = 70900208, pos = { x = 536.4, y = -11.1, z = -128.4 }, rot = { x = 0.0, y = 272.5, z = 0.0 }, level = 1 },
	{ config_id = 269, gadget_id = 70900224, pos = { x = 538.3, y = -10.1, z = -128.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 271, gadget_id = 70900208, pos = { x = 549.7, y = -11.0, z = -134.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_15", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_15", action = "action_EVENT_CLIENT_EXECUTE_15", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_41", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_41", action = "action_EVENT_CLIENT_EXECUTE_41", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_42", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_42", action = "action_EVENT_CLIENT_EXECUTE_42", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { 196, 197, 198, 199, 202, 204, 205, 207, 208, 268, 269, 271 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_15", "CLIENT_EXECUTE_41", "CLIENT_EXECUTE_42" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_15(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_1 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_15(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 208) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_41(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_2 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_41(context, evt)
	-- 将configid为 40 的物件更改为状态 GadgetState.Default
	if evt.param1 == defs.gadget_id_4 then
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_3, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
	
	end
	
	if evt.param1 == defs.gadget_id_5 then
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_3, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
	
	end
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_42(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_6 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_42(context, evt)
	-- 将configid为 40 的物件更改为状态 GadgetState.Default
	if evt.param1 == defs.gadget_id_4 then
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_7, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
	
	end
	
	if evt.param1 == defs.gadget_id_5 then
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_7, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
	
	end
end
