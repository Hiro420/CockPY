-- Trigger变量
local defs = {
	gadget_id_1 = 304,
	gadget_id_2 = 305
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
	{ config_id = 293, gadget_id = 70350004, pos = { x = 255.1, y = -10.6, z = 168.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 294, gadget_id = 70900206, pos = { x = 255.6, y = -7.7, z = 152.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 295, gadget_id = 70320002, pos = { x = 249.7, y = -10.3, z = 152.2 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 296, gadget_id = 70320002, pos = { x = 261.9, y = -10.3, z = 152.1 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 297, gadget_id = 70320002, pos = { x = 255.7, y = -10.3, z = 146.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 298, gadget_id = 70320002, pos = { x = 255.6, y = -10.3, z = 158.4 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 299, gadget_id = 70320002, pos = { x = 251.7, y = -10.3, z = 156.2 }, rot = { x = 0.0, y = 135.0, z = 0.0 }, level = 1 },
	{ config_id = 300, gadget_id = 70320002, pos = { x = 259.6, y = -10.3, z = 156.3 }, rot = { x = 0.0, y = 225.0, z = 0.0 }, level = 1 },
	{ config_id = 301, gadget_id = 70320002, pos = { x = 251.7, y = -10.3, z = 148.2 }, rot = { x = 0.0, y = 45.0, z = 0.0 }, level = 1 },
	{ config_id = 302, gadget_id = 70320002, pos = { x = 259.5, y = -10.3, z = 148.1 }, rot = { x = 0.0, y = 325.0, z = 0.0 }, level = 1 },
	{ config_id = 303, gadget_id = 70900208, pos = { x = 255.7, y = -10.8, z = 151.4 }, rot = { x = 0.0, y = 37.1, z = 0.0 }, level = 1 },
	{ config_id = 304, gadget_id = 70900224, pos = { x = 255.6, y = -9.6, z = 153.1 }, rot = { x = 0.0, y = 267.6, z = 0.0 }, level = 1 },
	{ config_id = 305, gadget_id = 70900224, pos = { x = 245.6, y = -9.6, z = 167.5 }, rot = { x = 0.0, y = 170.9, z = 0.0 }, level = 1 },
	{ config_id = 306, gadget_id = 70900208, pos = { x = 248.6, y = -10.7, z = 166.9 }, rot = { x = 0.0, y = 231.9, z = 0.0 }, level = 1 },
	{ config_id = 307, gadget_id = 70900207, pos = { x = 251.4, y = -10.3, z = 167.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_59", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_59", action = "action_EVENT_CLIENT_EXECUTE_59", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_60", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_60", action = "action_EVENT_CLIENT_EXECUTE_60", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_69", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_69", action = "action_EVENT_CLIENT_EXECUTE_69", trigger_count = 0 }
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
		gadgets = { 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_59", "CLIENT_EXECUTE_60", "CLIENT_EXECUTE_69" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_59(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_1 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_59(context, evt)
	-- 将configid为 293 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 293, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_60(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_2 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_60(context, evt)
	-- 将configid为 295 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 295, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 296 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 296, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 297 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 297, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 298 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 298, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 299 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 299, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 300 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 300, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 301 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 301, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 302 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 302, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 294 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 294, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_69(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_2 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_69(context, evt)
	-- 将configid为 295 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 295, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 296 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 296, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 297 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 297, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 298 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 298, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 299 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 299, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 300 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 300, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 301 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 301, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 302 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 302, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 294 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 294, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
