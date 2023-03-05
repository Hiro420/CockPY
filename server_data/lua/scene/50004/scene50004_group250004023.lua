-- Trigger变量
local defs = {
	gadget_id_1 = 174,
	gadget_id_2 = 163
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
	{ config_id = 163, gadget_id = 70900224, pos = { x = 398.2, y = -10.0, z = -140.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 164, gadget_id = 70350004, pos = { x = 412.1, y = -11.3, z = -131.2 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 165, gadget_id = 70900208, pos = { x = 398.3, y = -11.1, z = -137.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 167, gadget_id = 70350004, pos = { x = 396.9, y = -11.0, z = -138.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 168, gadget_id = 70900208, pos = { x = 407.0, y = -11.1, z = -142.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 169, gadget_id = 70900208, pos = { x = 409.8, y = -11.1, z = -142.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 170, gadget_id = 70900208, pos = { x = 412.8, y = -8.1, z = -142.4 }, rot = { x = 0.0, y = 0.0, z = 90.0 }, level = 1 },
	{ config_id = 171, gadget_id = 70900208, pos = { x = 412.3, y = -6.8, z = -141.2 }, rot = { x = 0.0, y = 0.0, z = 90.0 }, level = 1 },
	{ config_id = 172, gadget_id = 70900208, pos = { x = 412.5, y = -6.8, z = -139.1 }, rot = { x = 0.0, y = 0.0, z = 90.0 }, level = 1 },
	{ config_id = 173, gadget_id = 70900208, pos = { x = 412.5, y = -6.8, z = -137.0 }, rot = { x = 0.0, y = 0.0, z = 90.0 }, level = 1 },
	{ config_id = 174, gadget_id = 70900224, pos = { x = 411.0, y = -6.5, z = -134.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_36", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_36", action = "action_EVENT_CLIENT_EXECUTE_36", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_37", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_37", action = "action_EVENT_CLIENT_EXECUTE_37", trigger_count = 0 }
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
		gadgets = { 163, 164, 165, 167, 168, 169, 170, 171, 172, 173, 174 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_36", "CLIENT_EXECUTE_37" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_36(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_1 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_36(context, evt)
	-- 将configid为 164 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_37(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_2 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_37(context, evt)
	-- 将configid为 167 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 167, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
