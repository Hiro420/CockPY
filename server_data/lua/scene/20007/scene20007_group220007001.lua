-- Trigger变量
local defs = {
	gadget_id_1 = 1013,
	gadget_id_2 = 1029
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20011201, pos = { x = -12.3, y = 0.0, z = 23.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1002, monster_id = 20011201, pos = { x = -0.9, y = 0.0, z = 22.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1003, monster_id = 20011201, pos = { x = 10.5, y = 0.0, z = 21.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1004, gadget_id = 70211001, pos = { x = 16.0, y = 5.0, z = 28.4 }, rot = { x = 0.0, y = 272.8, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德" },
	{ config_id = 1005, gadget_id = 70310004, pos = { x = 2.3, y = 0.1, z = 2.8 }, rot = { x = 0.0, y = 108.4, z = 0.0 }, level = 1 },
	{ config_id = 1006, gadget_id = 70310001, pos = { x = -1.2, y = 0.0, z = 2.6 }, rot = { x = 0.0, y = 137.3, z = 0.0 }, level = 1 },
	{ config_id = 1007, gadget_id = 70500000, pos = { x = 1.5, y = 0.0, z = -15.6 }, rot = { x = 0.0, y = 192.7, z = 0.0 }, level = 1, point_type = 3001 },
	{ config_id = 1008, gadget_id = 70310002, pos = { x = -1.1, y = 0.0, z = 0.8 }, rot = { x = 0.0, y = 145.3, z = 0.0 }, level = 1 },
	{ config_id = 1009, gadget_id = 70520001, pos = { x = 1.6, y = 0.0, z = -13.1 }, rot = { x = 0.0, y = 293.3, z = 0.0 }, level = 1 },
	{ config_id = 1010, gadget_id = 70520002, pos = { x = 4.1, y = 0.0, z = -14.6 }, rot = { x = 0.0, y = 335.3, z = 0.0 }, level = 1 },
	{ config_id = 1011, gadget_id = 70211032, pos = { x = -5.8, y = 21.0, z = 6.1 }, rot = { x = 0.0, y = 221.8, z = 0.0 }, level = 1, drop_tag = "战斗超级蒙德", state = GadgetState.ChestLocked },
	{ config_id = 1012, gadget_id = 70310001, pos = { x = -6.3, y = 21.0, z = 8.6 }, rot = { x = 0.0, y = 264.1, z = 0.0 }, level = 1 },
	{ config_id = 1013, gadget_id = 70350004, pos = { x = 5.6, y = 0.0, z = -9.8 }, rot = { x = 0.0, y = 272.5, z = 0.0 }, level = 1 },
	{ config_id = 1014, gadget_id = 70900207, pos = { x = 8.2, y = 0.0, z = -8.1 }, rot = { x = 0.0, y = 169.2, z = 0.0 }, level = 1 },
	{ config_id = 1015, gadget_id = 70900208, pos = { x = 4.8, y = 0.0, z = -8.2 }, rot = { x = 0.0, y = 6.6, z = 0.0 }, level = 1 },
	{ config_id = 1016, gadget_id = 70900210, pos = { x = 1.9, y = 0.9, z = -16.8 }, rot = { x = 0.0, y = 123.1, z = 0.0 }, level = 1, route_id = 20007004 },
	{ config_id = 1017, gadget_id = 70900209, pos = { x = 1.7, y = 0.4, z = 6.8 }, rot = { x = 0.0, y = 73.2, z = 0.0 }, level = 1 },
	{ config_id = 1018, gadget_id = 70510009, pos = { x = -3.8, y = 0.0, z = -10.1 }, rot = { x = 0.0, y = 261.7, z = 0.0 }, level = 1 },
	{ config_id = 1019, gadget_id = 70500000, pos = { x = -0.3, y = 0.0, z = -15.9 }, rot = { x = 0.0, y = 261.0, z = 0.0 }, level = 1, point_type = 3008 },
	{ config_id = 1020, gadget_id = 70500000, pos = { x = -2.3, y = 0.0, z = -16.0 }, rot = { x = 0.0, y = 184.8, z = 0.0 }, level = 1, point_type = 3006 },
	{ config_id = 1021, gadget_id = 70300055, pos = { x = -0.7, y = 1.7, z = 14.1 }, rot = { x = 0.0, y = 35.1, z = 0.0 }, level = 1 },
	{ config_id = 1022, gadget_id = 70500000, pos = { x = -1.0, y = 0.0, z = -10.1 }, rot = { x = 0.0, y = 315.9, z = 0.0 }, level = 1, point_type = 6666 },
	{ config_id = 1023, gadget_id = 70900213, pos = { x = 4.3, y = 0.8, z = 13.4 }, rot = { x = 0.0, y = 177.4, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1024, gadget_id = 70900217, pos = { x = -4.4, y = 7.3, z = 7.7 }, rot = { x = 0.0, y = 196.3, z = 0.0 }, level = 1 },
	{ config_id = 1025, gadget_id = 70900233, pos = { x = -3.5, y = 0.0, z = -13.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1026, gadget_id = 70500000, pos = { x = -3.5, y = 1.0, z = -13.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 6667, owner = 1025 },
	{ config_id = 1027, gadget_id = 70500000, pos = { x = -3.5, y = 1.0, z = -13.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 6668, owner = 1025 },
	{ config_id = 1028, gadget_id = 70500000, pos = { x = -7.4, y = 0.0, z = 5.2 }, rot = { x = 0.0, y = 260.6, z = 0.0 }, level = 1, point_type = 6669 },
	{ config_id = 1029, gadget_id = 70900242, pos = { x = -7.8, y = -25.2, z = -15.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 20007007 },
	{ config_id = 1030, gadget_id = 70900244, pos = { x = 12.5, y = 0.0, z = 23.6 }, rot = { x = 0.0, y = 208.6, z = 0.0 }, level = 1 },
	{ config_id = 1031, gadget_id = 70500000, pos = { x = 0.2, y = 7.6, z = 0.2 }, rot = { x = 90.0, y = 189.4, z = 0.0 }, level = 1, point_type = 6670 },
	{ config_id = 1032, gadget_id = 70900286, pos = { x = 0.3, y = 12.9, z = 0.4 }, rot = { x = 0.0, y = 171.3, z = 0.0 }, level = 1 },
	{ config_id = 1033, gadget_id = 70900294, pos = { x = -1.5, y = 0.0, z = 9.5 }, rot = { x = 0.0, y = 271.1, z = 0.0 }, level = 1 },
	{ config_id = 1034, gadget_id = 70900296, pos = { x = -8.1, y = 10.7, z = 11.2 }, rot = { x = 0.0, y = 339.4, z = 0.0 }, level = 1 },
	{ config_id = 1035, gadget_id = 70900297, pos = { x = -2.7, y = 9.1, z = 16.7 }, rot = { x = 0.0, y = 262.0, z = 0.0 }, level = 1 },
	{ config_id = 1036, gadget_id = 70900298, pos = { x = 3.2, y = 10.7, z = 11.5 }, rot = { x = 0.0, y = 60.0, z = 0.0 }, level = 1 },
	{ config_id = 1037, gadget_id = 70900237, pos = { x = -8.0, y = 10.1, z = 11.2 }, rot = { x = 0.0, y = 285.7, z = 0.0 }, level = 1 },
	{ config_id = 1038, gadget_id = 70900237, pos = { x = -2.9, y = 8.4, z = 16.6 }, rot = { x = 0.0, y = 356.6, z = 0.0 }, level = 1 },
	{ config_id = 1039, gadget_id = 70900237, pos = { x = 3.3, y = 10.2, z = 11.4 }, rot = { x = 0.0, y = 339.8, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 28, shape = RegionShape.SPHERE, radius = 2, pos = { x = -7.6, y = -0.1, z = -15.4 } }
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_11", event = EventType.EVENT_CLIENT_EXECUTE, source = "FireFlora", condition = "", action = "action_EVENT_CLIENT_EXECUTE_11", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_25", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricPile", condition = "", action = "action_EVENT_CLIENT_EXECUTE_25", trigger_count = 0 },
	{ name = "CLIENT_EXECUTE_27", event = EventType.EVENT_CLIENT_EXECUTE, source = "MoveStone", condition = "", action = "action_EVENT_CLIENT_EXECUTE_27", trigger_count = 0 },
	{ name = "ENTER_REGION_28", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_28", action = "action_EVENT_ENTER_REGION_28", trigger_count = 0, forbid_guest = false },
	{ name = "CLIENT_EXECUTE_31", event = EventType.EVENT_CLIENT_EXECUTE, source = "Ginseng_Create", condition = "", action = "action_EVENT_CLIENT_EXECUTE_31", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_32", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_32", trigger_count = 0 }
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
	rand_suite = true
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
		monsters = { 1001, 1002, 1003 },
		gadgets = { 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1025, 1026, 1027, 1029, 1030, 1031, 1033, 1034, 1035, 1036 },
		regions = { 28 },
		triggers = { "CLIENT_EXECUTE_11", "CLIENT_EXECUTE_25", "CLIENT_EXECUTE_27", "ENTER_REGION_28", "CLIENT_EXECUTE_31", "ANY_GADGET_DIE_32" },
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
function action_EVENT_CLIENT_EXECUTE_11(context, evt)
	local this_gadget = ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid })
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220007001, this_gadget, GadgetState.Action03 )
		ScriptLib.SetGadgetEnableInteract(context, 220007001, this_gadget, true)
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_25(context, evt)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220007001, defs.gadget_id_1, GadgetState.GearStart )
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_27(context, evt)
	 ScriptLib.SetPlatformRouteId(context, defs.gadget_id_2, 20007007) 
	return 0
	
end

-- 触发条件
function condition_EVENT_ENTER_REGION_28(context, evt)
	if evt.param1 ~= 28 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_28(context, evt)
	ScriptLib.SetPlatformRouteId(context, defs.gadget_id_2, 20007008) 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_31(context, evt)
	-- 创建id为60的gadget
	ScriptLib.CreateGather(context, { config_id = 60, gather_id = 20007008 })
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_32(context, evt)
	
	if evt.param1==1034 then
	ScriptLib.CreateGadget(context, { config_id = 78 })	
	end
	
	if evt.param1==1035 then
	ScriptLib.CreateGadget(context, { config_id = 79 })	
	end
	
	if evt.param1==1036 then
	ScriptLib.CreateGadget(context, { config_id = 80 })	
	end
	
	return 0
end
