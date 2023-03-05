-- Trigger变量
local defs = {
	gadget_id_1 = 186,
	gadget_id_2 = 26
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
	{ config_id = 24, gadget_id = 70900208, pos = { x = 494.4, y = -8.6, z = -121.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 25, gadget_id = 70900208, pos = { x = 497.3, y = -8.6, z = -121.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 26, gadget_id = 70900224, pos = { x = 516.4, y = -7.7, z = -127.0 }, rot = { x = 0.0, y = 359.1, z = 0.0 }, level = 1 },
	{ config_id = 27, gadget_id = 70350004, pos = { x = 518.5, y = -11.2, z = -131.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 186, gadget_id = 70900224, pos = { x = 499.3, y = -8.8, z = -122.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 187, gadget_id = 70900206, pos = { x = 499.3, y = -11.2, z = -122.7 }, rot = { x = 0.0, y = 268.5, z = 0.0 }, level = 1 },
	{ config_id = 188, gadget_id = 70900208, pos = { x = 501.5, y = -8.6, z = -121.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 190, gadget_id = 70900208, pos = { x = 505.6, y = -8.6, z = -121.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 191, gadget_id = 70900208, pos = { x = 510.2, y = -8.6, z = -121.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 192, gadget_id = 70900208, pos = { x = 514.5, y = -8.6, z = -121.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 193, gadget_id = 70900208, pos = { x = 516.7, y = -8.7, z = -124.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 194, gadget_id = 70900208, pos = { x = 491.6, y = -8.6, z = -122.8 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 195, gadget_id = 70220005, pos = { x = 496.1, y = -8.6, z = -122.1 }, rot = { x = 0.0, y = 345.2, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 53, shape = RegionShape.SPHERE, radius = 5, pos = { x = 521.3, y = -11.0, z = -130.2 } }
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_2", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_2", action = "action_EVENT_CLIENT_EXECUTE_2", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_39", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_39", action = "action_EVENT_CLIENT_EXECUTE_39", trigger_count = 0 },
	{ name = "ENTER_REGION_53", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_53", action = "action_EVENT_ENTER_REGION_53", forbid_guest = false }
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
		gadgets = { 24, 25, 26, 27, 186, 187, 188, 190, 191, 192, 193, 194, 195 },
		regions = { 53 },
		triggers = { "CLIENT_EXECUTE_2", "CLIENT_EXECUTE_39", "ENTER_REGION_53" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_2(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_1 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_2(context, evt)
	-- 将configid为 187 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_39(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_2 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_39(context, evt)
	-- 将configid为 27 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_53(context, evt)
	if evt.param1 ~= 53 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_53(context, evt)
	-- 将configid为 187 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
