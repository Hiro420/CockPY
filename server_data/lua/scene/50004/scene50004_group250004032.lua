-- Trigger变量
local defs = {
	gadget_id_1 = 342,
	gadget_id_2 = 343,
	gadget_id_3 = 344,
	gadget_id_4 = 346,
	gadget_id_5 = 345
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16, monster_id = 21010701, pos = { x = 254.0, y = -10.3, z = 252.4 }, rot = { x = 0.0, y = 177.4, z = 0.0 }, level = 10 },
	{ config_id = 17, monster_id = 21010701, pos = { x = 254.9, y = -10.3, z = 250.4 }, rot = { x = 0.0, y = 177.8, z = 0.0 }, level = 10 },
	{ config_id = 18, monster_id = 21010701, pos = { x = 256.1, y = -10.3, z = 251.9 }, rot = { x = 0.0, y = 198.2, z = 0.0 }, level = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 321, gadget_id = 70350004, pos = { x = 255.1, y = -10.3, z = 248.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 322, gadget_id = 70900208, pos = { x = 249.9, y = -10.5, z = 233.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 323, gadget_id = 70900208, pos = { x = 260.4, y = -10.5, z = 233.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 324, gadget_id = 70900208, pos = { x = 249.8, y = -10.5, z = 235.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 325, gadget_id = 70900208, pos = { x = 260.4, y = -10.5, z = 235.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 326, gadget_id = 70900208, pos = { x = 249.8, y = -10.5, z = 237.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 327, gadget_id = 70900208, pos = { x = 260.4, y = -10.5, z = 237.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 328, gadget_id = 70900208, pos = { x = 249.8, y = -10.5, z = 239.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 329, gadget_id = 70900208, pos = { x = 260.4, y = -10.5, z = 239.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 330, gadget_id = 70900208, pos = { x = 249.8, y = -10.5, z = 241.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 331, gadget_id = 70900208, pos = { x = 260.4, y = -10.5, z = 241.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 332, gadget_id = 70900208, pos = { x = 249.8, y = -10.5, z = 242.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 333, gadget_id = 70900208, pos = { x = 260.4, y = -10.5, z = 242.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 334, gadget_id = 70320002, pos = { x = 251.7, y = -10.3, z = 233.2 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 335, gadget_id = 70320002, pos = { x = 251.6, y = -10.3, z = 239.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 336, gadget_id = 70320002, pos = { x = 251.5, y = -10.3, z = 244.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 337, gadget_id = 70320002, pos = { x = 258.5, y = -10.3, z = 242.3 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 338, gadget_id = 70320002, pos = { x = 258.4, y = -10.3, z = 236.0 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 339, gadget_id = 70900208, pos = { x = 249.8, y = -10.5, z = 244.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 340, gadget_id = 70900208, pos = { x = 251.1, y = -10.6, z = 231.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 341, gadget_id = 70900208, pos = { x = 258.9, y = -10.5, z = 231.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 342, gadget_id = 70900224, pos = { x = 251.7, y = -8.2, z = 233.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 343, gadget_id = 70900224, pos = { x = 251.6, y = -8.2, z = 239.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 344, gadget_id = 70900224, pos = { x = 251.5, y = -8.2, z = 244.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 345, gadget_id = 70900224, pos = { x = 258.4, y = -8.2, z = 236.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 346, gadget_id = 70900224, pos = { x = 258.5, y = -8.3, z = 242.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 62, shape = RegionShape.SPHERE, radius = 5, pos = { x = 254.7, y = -10.3, z = 227.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_62", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_62", action = "action_EVENT_ENTER_REGION_62", forbid_guest = false },
	{ name = "CLIENT_EXECUTE_63", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_63", action = "action_EVENT_CLIENT_EXECUTE_63", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_64", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_64", action = "action_EVENT_CLIENT_EXECUTE_64", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_65", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_65", action = "action_EVENT_CLIENT_EXECUTE_65", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_66", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_66", action = "action_EVENT_CLIENT_EXECUTE_66", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_67", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_67", action = "action_EVENT_CLIENT_EXECUTE_67", trigger_count = 0 }
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
		monsters = { 16, 17, 18 },
		gadgets = { 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346 },
		regions = { 62 },
		triggers = { "ENTER_REGION_62", "CLIENT_EXECUTE_63", "CLIENT_EXECUTE_64", "CLIENT_EXECUTE_65", "CLIENT_EXECUTE_66", "CLIENT_EXECUTE_67" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_62(context, evt)
	if evt.param1 ~= 62 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_62(context, evt)
	-- 将configid为 321 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 321, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_63(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_1 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_63(context, evt)
	-- 将configid为 334 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 334, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_64(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_2 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_64(context, evt)
	-- 将configid为 335 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 335, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_65(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_3 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_65(context, evt)
	-- 将configid为 336 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 336, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_66(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_4 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_66(context, evt)
	-- 将configid为 337 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 337, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_67(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_5 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_67(context, evt)
	-- 将configid为 338 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 338, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
