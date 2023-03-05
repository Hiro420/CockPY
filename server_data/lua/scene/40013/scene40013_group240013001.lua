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
	{ config_id = 1001, gadget_id = 70900013, pos = { x = -73.0, y = -15.5, z = 112.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 1002, gadget_id = 70900012, pos = { x = -119.0, y = -12.5, z = 128.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1003, gadget_id = 70900037, pos = { x = -47.1, y = -8.2, z = 93.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.Action01 },
	{ config_id = 1004, gadget_id = 70900037, pos = { x = -47.1, y = -6.5, z = 93.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.Action02 },
	{ config_id = 1005, gadget_id = 70900205, pos = { x = -136.1, y = 14.5, z = 79.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1006, gadget_id = 70900013, pos = { x = -135.9, y = 14.5, z = 79.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 1007, gadget_id = 70900205, pos = { x = -157.2, y = 10.3, z = 87.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1008, gadget_id = 70900013, pos = { x = -157.0, y = 10.3, z = 88.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 1009, gadget_id = 70900205, pos = { x = -158.7, y = 4.8, z = 91.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1010, gadget_id = 70900013, pos = { x = -158.5, y = 3.8, z = 92.0 }, rot = { x = 0.0, y = 0.0, z = 180.0 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 1011, gadget_id = 70900205, pos = { x = -165.1, y = 1.2, z = 107.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1012, gadget_id = 70900013, pos = { x = -164.9, y = 1.3, z = 107.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 1013, gadget_id = 70900007, pos = { x = -164.9, y = 1.2, z = 107.4 }, rot = { x = 0.0, y = 180.0, z = 180.0 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1014, gadget_id = 70900007, pos = { x = -136.1, y = 13.4, z = 79.3 }, rot = { x = 0.0, y = 180.0, z = 180.0 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1015, gadget_id = 70900007, pos = { x = -158.3, y = 4.9, z = 91.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1016, gadget_id = 70900037, pos = { x = -137.2, y = -12.4, z = 105.8 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1017, gadget_id = 70900037, pos = { x = -163.8, y = -6.1, z = 92.0 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1018, gadget_id = 70900037, pos = { x = -156.0, y = -6.1, z = 101.3 }, rot = { x = 90.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1019, gadget_id = 70900012, pos = { x = -124.8, y = -12.4, z = 120.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1020, gadget_id = 70900012, pos = { x = -124.9, y = -12.5, z = 136.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1021, gadget_id = 70900012, pos = { x = -114.3, y = -12.5, z = 134.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1022, gadget_id = 70900012, pos = { x = -112.7, y = -12.4, z = 120.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1023, gadget_id = 70900205, pos = { x = -148.4, y = 5.3, z = 99.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1024, gadget_id = 70380001, pos = { x = -127.5, y = -13.3, z = 94.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 1025, gadget_id = 70380001, pos = { x = -127.5, y = -13.3, z = 99.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 2, start_route = false },
	{ config_id = 1026, gadget_id = 70900037, pos = { x = -155.9, y = -6.1, z = 97.8 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1027, gadget_id = 70900037, pos = { x = -163.7, y = -6.1, z = 95.6 }, rot = { x = 90.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1028, gadget_id = 70900205, pos = { x = -173.1, y = -12.3, z = 94.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1029, gadget_id = 70900205, pos = { x = -173.1, y = -12.3, z = 99.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1030, gadget_id = 70380001, pos = { x = -143.2, y = 4.3, z = 99.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 6, start_route = false },
	{ config_id = 1031, gadget_id = 70380001, pos = { x = -172.9, y = -13.3, z = 109.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 3, start_route = false },
	{ config_id = 1032, gadget_id = 70380001, pos = { x = -169.9, y = -3.8, z = 77.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1033, gadget_id = 70380001, pos = { x = -169.8, y = 0.3, z = 99.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 5 },
	{ config_id = 1034, gadget_id = 70900205, pos = { x = -154.5, y = 4.0, z = 107.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1035, gadget_id = 70900013, pos = { x = -154.4, y = 4.0, z = 108.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 1036, gadget_id = 70900007, pos = { x = -154.4, y = 2.9, z = 108.0 }, rot = { x = 0.0, y = 180.0, z = 180.0 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1037, gadget_id = 70900205, pos = { x = -165.2, y = 1.3, z = 99.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1038, gadget_id = 70380001, pos = { x = -159.9, y = 0.3, z = 99.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 4 },
	{ config_id = 1039, gadget_id = 70900205, pos = { x = -152.8, y = 14.5, z = 79.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1040, gadget_id = 70900013, pos = { x = -152.6, y = 14.5, z = 79.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 1041, gadget_id = 70900007, pos = { x = -152.8, y = 13.4, z = 79.3 }, rot = { x = 0.0, y = 180.0, z = 180.0 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1042, gadget_id = 70900201, pos = { x = -127.6, y = -11.4, z = 96.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1043, gadget_id = 70900201, pos = { x = -172.7, y = -10.1, z = 96.5 }, rot = { x = 0.0, y = 89.6, z = 0.0 }, level = 1 },
	{ config_id = 1044, gadget_id = 70900201, pos = { x = -165.0, y = 1.2, z = 107.4 }, rot = { x = 0.0, y = 89.6, z = 0.0 }, level = 1 },
	{ config_id = 1045, gadget_id = 70900201, pos = { x = -154.4, y = 1.2, z = 108.0 }, rot = { x = 0.0, y = 89.6, z = 0.0 }, level = 1 },
	{ config_id = 1046, gadget_id = 70900201, pos = { x = -158.3, y = 5.9, z = 91.9 }, rot = { x = 0.0, y = 89.6, z = 0.0 }, level = 1 },
	{ config_id = 1047, gadget_id = 70900201, pos = { x = -153.0, y = 11.6, z = 79.1 }, rot = { x = 0.0, y = 89.6, z = 0.0 }, level = 1 },
	{ config_id = 1048, gadget_id = 70900201, pos = { x = -136.2, y = 11.6, z = 79.1 }, rot = { x = 0.0, y = 89.6, z = 0.0 }, level = 1 },
	{ config_id = 1049, gadget_id = 70900201, pos = { x = -146.9, y = 18.1, z = 45.7 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 1050, gadget_id = 70900037, pos = { x = -139.2, y = -12.4, z = 105.8 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1051, gadget_id = 70900037, pos = { x = -145.4, y = -12.4, z = 87.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1052, gadget_id = 70900037, pos = { x = -147.4, y = -12.4, z = 87.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1053, gadget_id = 70900205, pos = { x = -129.5, y = 10.3, z = 87.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1054, gadget_id = 70900013, pos = { x = -129.3, y = 10.3, z = 88.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 1055, gadget_id = 70350002, pos = { x = -128.6, y = -13.3, z = 112.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1056, gadget_id = 70900007, pos = { x = -85.4, y = -15.5, z = 125.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1057, gadget_id = 70900013, pos = { x = -80.3, y = -15.3, z = 112.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart, arguments = { 1, 2, 3 } },
	{ config_id = 1058, gadget_id = 70900013, pos = { x = -89.2, y = -15.5, z = 112.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStop, arguments = { 1, 2, 3 } },
	{ config_id = 1059, gadget_id = 70900037, pos = { x = -154.3, y = 4.0, z = 107.9 }, rot = { x = 0.0, y = 181.4, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1060, gadget_id = 70900201, pos = { x = -85.4, y = -13.0, z = 125.5 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 1061, gadget_id = 70900037, pos = { x = -165.1, y = 1.3, z = 107.3 }, rot = { x = 0.0, y = 181.4, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1062, gadget_id = 70900037, pos = { x = -158.3, y = 3.5, z = 92.1 }, rot = { x = 0.0, y = 0.0, z = 180.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1063, gadget_id = 70900037, pos = { x = -152.5, y = 14.5, z = 79.7 }, rot = { x = 0.0, y = 92.3, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1064, gadget_id = 70900037, pos = { x = -136.0, y = 14.5, z = 79.6 }, rot = { x = 0.0, y = 271.3, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1065, gadget_id = 70900205, pos = { x = -173.1, y = -12.3, z = 104.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1066, gadget_id = 70900205, pos = { x = -172.9, y = -3.8, z = 104.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1, shape = RegionShape.CUBIC, size = { x = 4.0, y = 2.0, z = 10.0 }, pos = { x = -127.8, y = -11.6, z = 96.7 } },
	{ config_id = 2, shape = RegionShape.CUBIC, size = { x = 4.0, y = 2.0, z = 10.0 }, pos = { x = -143.9, y = 6.3, z = 100.4 } },
	{ config_id = 9, shape = RegionShape.CUBIC, size = { x = 6.0, y = 4.0, z = 5.0 }, pos = { x = -128.6, y = -12.4, z = 104.9 } },
	{ config_id = 10, shape = RegionShape.CUBIC, size = { x = 4.0, y = 2.0, z = 10.0 }, pos = { x = -172.8, y = -11.4, z = 96.7 } },
	{ config_id = 11, shape = RegionShape.CUBIC, size = { x = 10.0, y = 4.0, z = 2.0 }, pos = { x = -144.4, y = 16.3, z = 73.7 } },
	{ config_id = 28, shape = RegionShape.CUBIC, size = { x = 4.0, y = 2.0, z = 10.0 }, pos = { x = -165.7, y = 2.2, z = 101.1 } },
	{ config_id = 29, shape = RegionShape.CUBIC, size = { x = 4.0, y = 2.0, z = 5.0 }, pos = { x = -173.0, y = -11.4, z = 109.1 } },
	{ config_id = 30, shape = RegionShape.CUBIC, size = { x = 4.0, y = 2.0, z = 5.0 }, pos = { x = -173.0, y = -2.9, z = 104.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_1", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1", action = "action_EVENT_ENTER_REGION_1" },
	{ name = "ENTER_REGION_2", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2", action = "action_EVENT_ENTER_REGION_2" },
	{ name = "TIMER_EVENT_3", event = EventType.EVENT_TIMER_EVENT, source = "Activate", condition = "", action = "action_EVENT_TIMER_EVENT_3" },
	{ name = "GADGET_STATE_CHANGE_4", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4", action = "action_EVENT_GADGET_STATE_CHANGE_4" },
	{ name = "GADGET_STATE_CHANGE_5", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5", action = "action_EVENT_GADGET_STATE_CHANGE_5" },
	{ name = "GADGET_STATE_CHANGE_6", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6", action = "action_EVENT_GADGET_STATE_CHANGE_6" },
	{ name = "GADGET_STATE_CHANGE_7", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7", action = "action_EVENT_GADGET_STATE_CHANGE_7" },
	{ name = "GADGET_STATE_CHANGE_8", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8", action = "action_EVENT_GADGET_STATE_CHANGE_8" },
	{ name = "ENTER_REGION_9", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9", action = "action_EVENT_ENTER_REGION_9" },
	{ name = "ENTER_REGION_10", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10", action = "action_EVENT_ENTER_REGION_10" },
	{ name = "ENTER_REGION_11", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11", action = "action_EVENT_ENTER_REGION_11" },
	{ name = "GADGET_STATE_CHANGE_16", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_16", action = "action_EVENT_GADGET_STATE_CHANGE_16", trigger_count = 0 },
	{ name = "TIMER_EVENT_17", event = EventType.EVENT_TIMER_EVENT, source = "Test", condition = "", action = "action_EVENT_TIMER_EVENT_17", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_18", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_18", action = "action_EVENT_GADGET_STATE_CHANGE_18", trigger_count = 0 },
	{ name = "ENTER_REGION_28", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_28", action = "action_EVENT_ENTER_REGION_28" },
	{ name = "ENTER_REGION_29", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_29", action = "action_EVENT_ENTER_REGION_29" },
	{ name = "ENTER_REGION_30", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_30", action = "action_EVENT_ENTER_REGION_30" }
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
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1007, 1008, 1009, 1011, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1036, 1037, 1038, 1039, 1041, 1050, 1051, 1052, 1053, 1054, 1055, 1056, 1057, 1058, 1059, 1061, 1062, 1063, 1064, 1065, 1066 },
		regions = { 1, 2, 9, 10, 11, 28, 29, 30 },
		triggers = { "ENTER_REGION_1", "ENTER_REGION_2", "TIMER_EVENT_3", "GADGET_STATE_CHANGE_4", "GADGET_STATE_CHANGE_5", "GADGET_STATE_CHANGE_6", "GADGET_STATE_CHANGE_7", "GADGET_STATE_CHANGE_8", "ENTER_REGION_9", "ENTER_REGION_10", "ENTER_REGION_11", "GADGET_STATE_CHANGE_16", "TIMER_EVENT_17", "GADGET_STATE_CHANGE_18", "ENTER_REGION_28", "ENTER_REGION_29", "ENTER_REGION_30" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_1(context, evt)
	if evt.param1 ~= 1 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1024) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1025) then
	  return -1
	end
	
	-- 创建id为1043的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1043 }) then
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1042} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2(context, evt)
	if evt.param1 ~= 2 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2(context, evt)
	-- 延迟2秒后,向groupId为：240013001的对象,请求一次调用,并将string参数："Activate" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240013001, "Activate", 2) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1030) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_3(context, evt)
	-- 改变指定group组240013001中， configid为1014的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1014, GadgetState.Default) then
			return -1
		end 
	
	-- 改变指定group组240013001中， configid为1041的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1041, GadgetState.Default) then
			return -1
		end 
	
	-- 创建id为1047的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1047 }) then
	  return -1
	end
	
	-- 创建id为1048的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1048 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4(context, evt)
	if 1013 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1044} }) then
			return -1
		end
	
	-- 改变指定group组240013001中， configid为1061的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1061, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5(context, evt)
	if 1036 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1045} }) then
			return -1
		end
	
	-- 改变指定group组240013001中， configid为1059的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1059, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6(context, evt)
	if 1015 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1046} }) then
			return -1
		end
	
	-- 改变指定group组240013001中， configid为1062的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1062, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7(context, evt)
	if 1014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7(context, evt)
	-- 改变指定group组240013001中， configid为1064的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1064, GadgetState.GearStop) then
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1048} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8(context, evt)
	if 1041 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8(context, evt)
	-- 改变指定group组240013001中， configid为1063的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1063, GadgetState.GearStop) then
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1047} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9(context, evt)
	if evt.param1 ~= 9 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9(context, evt)
	-- 创建id为1042的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1042 }) then
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-144，16，73），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-144, y=16, z=73}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10(context, evt)
	if evt.param1 ~= 10 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1043} }) then
			return -1
		end
	
	-- 改变指定group组240013001中， configid为1013的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1013, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11(context, evt)
	if evt.param1 ~= 11 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1044} }) then
			return -1
		end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1045} }) then
			return -1
		end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1046} }) then
			return -1
		end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1047} }) then
			return -1
		end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1048} }) then
			return -1
		end
	
	-- 创建id为1049的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1049 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_16(context, evt)
	if 1056 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_16(context, evt)
	-- 改变指定group组240013001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240013001中， configid为1057的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1057, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240013001中， configid为1058的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1058, GadgetState.GearStop) then
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1060} }) then
			return -1
		end
	
	-- 延迟3秒后,向groupId为：240013001的对象,请求一次调用,并将string参数："Test" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240013001, "Test", 3) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_17(context, evt)
	-- 改变指定group组240013001中， configid为1056的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1056, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_18(context, evt)
	if 1056 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_18(context, evt)
	-- 改变指定group组240013001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1001, GadgetState.Default) then
			return -1
		end 
	
	-- 改变指定group组240013001中， configid为1057的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1057, GadgetState.GearStop) then
			return -1
		end 
	
	-- 改变指定group组240013001中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1, GadgetState.GearStop) then
			return -1
		end 
	
	-- 改变指定group组240013001中， configid为13的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 13, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240013001中， configid为14的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 14, GadgetState.GearStop) then
			return -1
		end 
	
	-- 改变指定group组240013001中， configid为1056的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1056, GadgetState.Default) then
			return -1
		end 
	
	-- 创建id为1060的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1060 }) then
	  return -1
	end
	
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
	-- 改变指定group组240013001中， configid为1015的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1015, GadgetState.Default) then
			return -1
		end 
	
	-- 改变指定group组240013001中， configid为1036的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1036, GadgetState.Default) then
			return -1
		end 
	
	-- 创建id为1045的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1045 }) then
	  return -1
	end
	
	-- 创建id为1046的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1046 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_29(context, evt)
	if evt.param1 ~= 29 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_29(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1031) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_30(context, evt)
	if evt.param1 ~= 30 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_30(context, evt)
	-- 触发镜头注目，注目位置为坐标（-165，1，107），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-165, y=1, z=107}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 创建id为1044的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1044 }) then
	  return -1
	end
	
	return 0
end
