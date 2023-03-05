-- Trigger变量
local defs = {
	gadget_id_1 = 24,
	gadget_id_2 = 27,
	gadget_id_3 = 35,
	gadget_id_4 = 36,
	gadget_id_5 = 38,
	gadget_id_6 = 39,
	gadget_id_7 = 40,
	gadget_id_8 = 68,
	gadget_id_9 = 75,
	gadget_id_10 = 76,
	gadget_id_11 = 84,
	gadget_id_12 = 147,
	gadget_id_13 = 463,
	gadget_id_14 = 502,
	gadget_id_15 = 504,
	gadget_id_16 = 505,
	gadget_id_17 = 512,
	gadget_id_18 = 513,
	gadget_id_19 = 546,
	gadget_id_20 = 547,
	gadget_id_21 = 555,
	gadget_id_22 = 556,
	gadget_id_23 = 557,
	gadget_id_24 = 595,
	gadget_id_25 = 596,
	gadget_id_26 = 601,
	gadget_id_27 = 606,
	gadget_id_28 = 901001,
	trigger_id_901002 = 901002
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
}

-- 区域
regions = {
	{ config_id = 24, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2613.4, y = 235.5, z = -1485.9 } },
	{ config_id = 27, shape = RegionShape.SPHERE, radius = 8, pos = { x = 2563.6, y = 213.5, z = -1330.2 } },
	{ config_id = 35, shape = RegionShape.SPHERE, radius = 25, pos = { x = 2599.9, y = 223.8, z = -1588.6 } },
	{ config_id = 36, shape = RegionShape.SPHERE, radius = 13, pos = { x = 2617.6, y = 216.0, z = -1606.1 } },
	{ config_id = 38, shape = RegionShape.SPHERE, radius = 17, pos = { x = 2296.9, y = 210.3, z = -1126.8 } },
	{ config_id = 39, shape = RegionShape.SPHERE, radius = 40, pos = { x = 2474.7, y = 202.2, z = -1222.7 } },
	{ config_id = 40, shape = RegionShape.CUBIC, size = { x = 40.0, y = 9.0, z = 30.0 }, pos = { x = 2607.6, y = 227.1, z = -1553.8 } },
	{ config_id = 68, shape = RegionShape.SPHERE, radius = 25, pos = { x = 2621.8, y = 229.8, z = -1499.4 } },
	{ config_id = 75, shape = RegionShape.SPHERE, radius = 60, pos = { x = 2362.9, y = 206.4, z = -1138.1 } },
	{ config_id = 76, shape = RegionShape.SPHERE, radius = 12, pos = { x = 2635.8, y = 391.8, z = -1713.7 } },
	{ config_id = 84, shape = RegionShape.SPHERE, radius = 7, pos = { x = 2740.0, y = 194.6, z = -1710.3 } },
	{ config_id = 147, shape = RegionShape.SPHERE, radius = 17.1, pos = { x = 2308.3, y = 208.3, z = -1140.1 } },
	{ config_id = 463, shape = RegionShape.CUBIC, size = { x = 60.0, y = 10.0, z = 20.0 }, pos = { x = 2170.7, y = 205.3, z = -1085.9 } },
	{ config_id = 502, shape = RegionShape.SPHERE, radius = 15, pos = { x = 2596.4, y = 233.1, z = -1493.3 } },
	{ config_id = 504, shape = RegionShape.SPHERE, radius = 7, pos = { x = 2682.8, y = 197.5, z = -1639.5 } },
	{ config_id = 505, shape = RegionShape.SPHERE, radius = 15, pos = { x = 2694.9, y = 194.5, z = -1660.6 } },
	{ config_id = 512, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2192.8, y = 215.0, z = -1124.1 } },
	{ config_id = 513, shape = RegionShape.SPHERE, radius = 25, pos = { x = 2215.0, y = 224.0, z = -1188.5 } },
	{ config_id = 546, shape = RegionShape.SPHERE, radius = 8, pos = { x = 2351.7, y = 258.5, z = -1454.1 } },
	{ config_id = 547, shape = RegionShape.SPHERE, radius = 8, pos = { x = 2375.8, y = 261.8, z = -1464.2 } },
	{ config_id = 555, shape = RegionShape.SPHERE, radius = 8, pos = { x = 2387.6, y = 263.2, z = -1477.8 } },
	{ config_id = 556, shape = RegionShape.SPHERE, radius = 8, pos = { x = 2386.4, y = 265.3, z = -1496.2 } },
	{ config_id = 557, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2368.2, y = 262.9, z = -1504.3 } },
	{ config_id = 595, shape = RegionShape.SPHERE, radius = 40, pos = { x = 2499.4, y = 261.6, z = -1525.4 } },
	{ config_id = 596, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2471.0, y = 265.0, z = -1514.0 } },
	{ config_id = 601, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2066.6, y = 197.3, z = -1186.7 } },
	{ config_id = 606, shape = RegionShape.SPHERE, radius = 18, pos = { x = 2066.6, y = 197.3, z = -1186.7 } },
	{ config_id = 901001, shape = RegionShape.SPHERE, radius = 25, pos = { x = 2907.6, y = 251.6, z = -1650.4 } },
	{ config_id = 901002, shape = RegionShape.SPHERE, radius = 15, pos = { x = 2586.7, y = 211.5, z = -1345.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_24", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_24", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_27", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_27", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_35", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_35", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_36", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_36", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_38", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_38", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_39", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_39", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_40", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_40", action = "action_EVENT_ENTER_REGION_40", trigger_count = 0 },
	{ name = "ENTER_REGION_68", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_68", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_75", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_75", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_76", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_76", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_84", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_84", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_147", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_147", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_463", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_463", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_502", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_502", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_504", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_504", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_505", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_505", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_512", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_512", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_513", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_513", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_546", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_546", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_547", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_547", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_555", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_555", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_556", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_556", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_557", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_557", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_595", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_595", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_596", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_596", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_601", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_601", action = "", trigger_count = 0 },
	{ name = "LEAVE_REGION_606", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_606", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_901001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901001", action = "", trigger_count = 0 },
	{ name = "ENTER_REGION_901002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901002", action = "", trigger_count = 0 }
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
	rand_suite = false
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
		monsters = { },
		gadgets = { },
		regions = { 24, 27, 35, 36, 38, 39, 40, 68, 75, 76, 84, 147, 463, 502, 504, 505, 512, 513, 546, 547, 555, 556, 557, 595, 596, 601, 606, 901001, 901002 },
		triggers = { "ENTER_REGION_24", "ENTER_REGION_27", "ENTER_REGION_35", "ENTER_REGION_36", "ENTER_REGION_38", "ENTER_REGION_39", "ENTER_REGION_40", "ENTER_REGION_68", "ENTER_REGION_75", "ENTER_REGION_76", "ENTER_REGION_84", "ENTER_REGION_147", "ENTER_REGION_463", "ENTER_REGION_502", "ENTER_REGION_504", "ENTER_REGION_505", "ENTER_REGION_512", "ENTER_REGION_513", "ENTER_REGION_546", "ENTER_REGION_547", "ENTER_REGION_555", "ENTER_REGION_556", "ENTER_REGION_557", "ENTER_REGION_595", "ENTER_REGION_596", "ENTER_REGION_601", "LEAVE_REGION_606", "ENTER_REGION_901001", "ENTER_REGION_901002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_24(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 35201) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_1 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_27(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 35204) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_2 then
		return true
	end
	return false
	
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_35(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 35102) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_3 then
			return true
		end
		return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_36(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and (ScriptLib.GetQuestState(context, evt.target_eid, 35103) == QuestState.UNFINISHED or ScriptLib.GetQuestState(context, evt.target_eid, 35105) == QuestState.UNFINISHED) 
	and evt.param1 == defs.gadget_id_4 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_38(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 35401) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_5 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_39(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 36100) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_6 then
			return true
		end
		return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_40(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 36203) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_7 then
			return true
		end
		return false
end

-- 触发操作
function action_EVENT_ENTER_REGION_40(context, evt)
	-- 触发镜头注目，注目位置为坐标（2599，230，-5642），持续时间为2.6秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2599, y=230, z=-5642}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2.6, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_68(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 35200) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_8 then
			return true
		end
		return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_75(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 35502) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_9 then
			return true
		end
		return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_76(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 38401) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_10 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_84(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 35100) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_11 then
			return true
		end
		return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_147(context, evt)
	ScriptLib.PrintLog("enter region")
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 46201) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_12 then
	 return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_463(context, evt)
	ScriptLib.PrintLog("enter region")
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 46701) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_13 then
	 return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_502(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 35201) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_14 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_504(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 35101) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_15 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_505(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 35107) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_16 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_512(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 35403) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_17 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_513(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 36002) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_18 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_546(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 1010102) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_19 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_547(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 1010103) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_20 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_555(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 1010104) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_21 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_556(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 1010105) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_22 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_557(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 1010106) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_23 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_595(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2001009) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_24 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_596(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2001008) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_25 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_601(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2003701) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_26 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_LEAVE_REGION_606(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2003707) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_27 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_901001(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2006304) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_28 then
		return true
	end
	return false
end

-- 触发操作

-- 触发条件
function condition_EVENT_ENTER_REGION_901002(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 35203) == QuestState.UNFINISHED and evt.param1 == defs.trigger_id_901002 then
		return true
	end
	return false
end

-- 触发操作
