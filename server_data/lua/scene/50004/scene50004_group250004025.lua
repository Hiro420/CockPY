-- Trigger变量
local defs = {
	gadget_id_1 = 252,
	gadget_id_2 = 251,
	gadget_id_3 = 1,
	gadget_id_4 = 0,
	gadget_id_5 = 242,
	gadget_id_6 = 243
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
	{ config_id = 240, gadget_id = 70900208, pos = { x = 699.2, y = -11.4, z = -134.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 242, gadget_id = 70900224, pos = { x = 700.1, y = -10.1, z = -127.0 }, rot = { x = 0.0, y = 359.1, z = 0.0 }, level = 1 },
	{ config_id = 243, gadget_id = 70350004, pos = { x = 751.4, y = -11.1, z = -131.1 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 249, gadget_id = 70900208, pos = { x = 699.3, y = -11.4, z = -127.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 251, gadget_id = 70900206, pos = { x = 749.2, y = -11.0, z = -132.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 252, gadget_id = 70900224, pos = { x = 699.8, y = -10.1, z = -135.8 }, rot = { x = 0.0, y = 359.1, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 51, shape = RegionShape.SPHERE, radius = 5, pos = { x = 756.6, y = -11.0, z = -131.1 } }
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_49", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_49", action = "action_EVENT_CLIENT_EXECUTE_49", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_50", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_50", action = "action_EVENT_CLIENT_EXECUTE_50", trigger_count = 0 },
	{ name = "ENTER_REGION_51", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_51", action = "action_EVENT_ENTER_REGION_51", forbid_guest = false }
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
		gadgets = { 240, 242, 243, 249, 251, 252 },
		regions = { 51 },
		triggers = { "CLIENT_EXECUTE_49", "CLIENT_EXECUTE_50", "ENTER_REGION_51" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_49(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_1 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_49(context, evt)
	-- 将configid为 40 的物件更改为状态 GadgetState.Default
	if evt.param1 == defs.gadget_id_3 then
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_2, GadgetState.Default) then
			return -1
		end 
	
	return 0
	
	end
	
	if evt.param1 == defs.gadget_id_4 then
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_2, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
	
	end
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_50(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_5 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_50(context, evt)
	-- 将configid为 40 的物件更改为状态 GadgetState.Default
	if evt.param1 == defs.gadget_id_3 then
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_6, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
	
	end
	
	if evt.param1 == defs.gadget_id_4 then
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_6, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
	
	end
end

-- 触发条件
function condition_EVENT_ENTER_REGION_51(context, evt)
	if evt.param1 ~= 51 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_51(context, evt)
	-- 将configid为 251 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 251, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
