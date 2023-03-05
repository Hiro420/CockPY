-- Trigger变量
local defs = {
	gadget_id_1 = 212,
	gadget_id_2 = 214,
	gadget_id_3 = 213,
	gadget_id_4 = 1,
	gadget_id_5 = 0,
	gadget_id_6 = 228,
	gadget_id_7 = 227
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
	{ config_id = 212, gadget_id = 70900224, pos = { x = 591.3, y = -10.3, z = -127.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 213, gadget_id = 70350004, pos = { x = 608.9, y = -10.4, z = -130.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 214, gadget_id = 70900224, pos = { x = 609.0, y = -11.2, z = -134.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 218, gadget_id = 70900208, pos = { x = 589.1, y = -11.6, z = -127.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 219, gadget_id = 70900208, pos = { x = 606.8, y = -11.5, z = -134.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 220, gadget_id = 70900208, pos = { x = 602.1, y = -11.6, z = -134.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 221, gadget_id = 70900208, pos = { x = 611.2, y = -11.6, z = -135.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 222, gadget_id = 70900208, pos = { x = 615.5, y = -11.6, z = -135.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 223, gadget_id = 70380003, pos = { x = 593.9, y = -12.8, z = -130.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 50004004, start_route = false },
	{ config_id = 227, gadget_id = 70900206, pos = { x = 622.0, y = -11.0, z = -134.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 228, gadget_id = 70900224, pos = { x = 622.0, y = -8.8, z = -134.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 230, gadget_id = 70220005, pos = { x = 618.4, y = -11.1, z = -133.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 270, gadget_id = 70900208, pos = { x = 618.7, y = -11.6, z = -135.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 54, shape = RegionShape.SPHERE, radius = 5, pos = { x = 627.7, y = -11.0, z = -131.2 } }
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_43", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_43", action = "action_EVENT_CLIENT_EXECUTE_43", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_45", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_45", action = "action_EVENT_CLIENT_EXECUTE_45", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_48", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_48", action = "action_EVENT_CLIENT_EXECUTE_48", trigger_count = 0 },
	{ name = "ENTER_REGION_54", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_54", action = "action_EVENT_ENTER_REGION_54", forbid_guest = false }
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
		gadgets = { 212, 213, 214, 218, 219, 220, 221, 222, 223, 227, 228, 230, 270 },
		regions = { 54 },
		triggers = { "CLIENT_EXECUTE_43", "CLIENT_EXECUTE_45", "CLIENT_EXECUTE_48", "ENTER_REGION_54" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_43(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_1 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_43(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 223) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_45(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_2 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_45(context, evt)
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
function condition_EVENT_CLIENT_EXECUTE_48(context, evt)
	-- 判断是ConfigID
	if defs.gadget_id_6 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_48(context, evt)
	-- 将configid为 40 的物件更改为状态 GadgetState.Default
	if evt.param1 == defs.gadget_id_4 then
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_7, GadgetState.Default) then
			return -1
		end 
	
	return 0
	
	end
	
	if evt.param1 == defs.gadget_id_5 then
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_7, GadgetState.GearAction2) then
			return -1
		end 
	
	return 0
	
	end
end

-- 触发条件
function condition_EVENT_ENTER_REGION_54(context, evt)
	if evt.param1 ~= 54 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_54(context, evt)
	-- 将configid为 227 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
