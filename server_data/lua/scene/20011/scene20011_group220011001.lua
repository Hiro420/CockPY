-- Trigger变量
local defs = {
	gadget_id_1 = 1047
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20011201, pos = { x = 448.7, y = -24.4, z = 68.4 }, rot = { x = 0.0, y = 92.3, z = 0.0 }, level = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1002, gadget_id = 70211101, pos = { x = 507.4, y = -37.5, z = 83.8 }, rot = { x = 0.0, y = 182.3, z = 0.0 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 1003, gadget_id = 70350002, pos = { x = 469.6, y = -20.4, z = 67.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 1004, gadget_id = 70360002, pos = { x = 475.5, y = -20.0, z = 63.9 }, rot = { x = 0.0, y = 90.1, z = 0.0 }, level = 1 },
	{ config_id = 1005, gadget_id = 70211001, pos = { x = 428.4, y = -22.1, z = 53.6 }, rot = { x = 0.0, y = 321.6, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 1006, gadget_id = 70350002, pos = { x = 406.4, y = -22.2, z = 81.4 }, rot = { x = 0.0, y = 180.2, z = 0.0 }, level = 1 },
	{ config_id = 1007, gadget_id = 70350002, pos = { x = 423.5, y = -22.1, z = 71.1 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 1008, gadget_id = 70220013, pos = { x = 490.5, y = -20.1, z = 78.2 }, rot = { x = 0.0, y = 41.5, z = 0.0 }, level = 1 },
	{ config_id = 1009, gadget_id = 70220013, pos = { x = 491.5, y = -20.3, z = 75.8 }, rot = { x = 0.0, y = 272.6, z = 0.0 }, level = 1 },
	{ config_id = 1010, gadget_id = 70211101, pos = { x = 495.1, y = -20.0, z = 77.0 }, rot = { x = 0.0, y = 75.6, z = 0.0 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 1011, gadget_id = 70220014, pos = { x = 489.4, y = -20.3, z = 79.6 }, rot = { x = 0.0, y = 283.9, z = 0.0 }, level = 1 },
	{ config_id = 1012, gadget_id = 70220013, pos = { x = 502.9, y = -37.3, z = 81.8 }, rot = { x = 0.0, y = 351.4, z = 0.0 }, level = 1 },
	{ config_id = 1013, gadget_id = 70220013, pos = { x = 505.4, y = -37.5, z = 82.0 }, rot = { x = 0.0, y = 314.5, z = 0.0 }, level = 1 },
	{ config_id = 1014, gadget_id = 70220013, pos = { x = 504.5, y = -37.7, z = 80.1 }, rot = { x = 0.0, y = 290.5, z = 0.0 }, level = 1 },
	{ config_id = 1015, gadget_id = 70310002, pos = { x = 494.2, y = -27.0, z = 70.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 1016, gadget_id = 70310002, pos = { x = 494.4, y = -26.8, z = 64.1 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 1017, gadget_id = 70310002, pos = { x = 495.3, y = -16.2, z = 72.0 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 1018, gadget_id = 70310002, pos = { x = 495.0, y = -16.4, z = 63.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1019, gadget_id = 70310002, pos = { x = 450.2, y = -19.6, z = 64.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1020, gadget_id = 70310001, pos = { x = 425.9, y = -22.3, z = 65.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 1021, gadget_id = 70310001, pos = { x = 426.0, y = -22.2, z = 76.8 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 1022, gadget_id = 70310001, pos = { x = 400.7, y = -20.1, z = 78.9 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 1023, gadget_id = 70310001, pos = { x = 411.8, y = -20.1, z = 78.9 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 1024, gadget_id = 70310002, pos = { x = 472.1, y = -15.7, z = 61.6 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 1025, gadget_id = 70310002, pos = { x = 472.1, y = -15.6, z = 73.3 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 1026, gadget_id = 70310002, pos = { x = 501.0, y = -31.4, z = 84.4 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 1027, gadget_id = 70310001, pos = { x = 420.8, y = -22.1, z = 58.1 }, rot = { x = 0.0, y = 99.0, z = 0.0 }, level = 1 },
	{ config_id = 1028, gadget_id = 70310001, pos = { x = 544.6, y = -42.1, z = 46.2 }, rot = { x = 0.0, y = 223.2, z = 0.0 }, level = 1 },
	{ config_id = 1029, gadget_id = 70310001, pos = { x = 555.3, y = -42.0, z = 46.2 }, rot = { x = 0.0, y = 183.0, z = 0.0 }, level = 1 },
	{ config_id = 1030, gadget_id = 70310001, pos = { x = 544.7, y = -43.4, z = 40.2 }, rot = { x = 0.0, y = 64.0, z = 0.0 }, level = 1 },
	{ config_id = 1031, gadget_id = 70310001, pos = { x = 555.5, y = -43.4, z = 40.6 }, rot = { x = 0.0, y = 83.2, z = 0.0 }, level = 1 },
	{ config_id = 1032, gadget_id = 70310001, pos = { x = 555.6, y = -40.5, z = 51.3 }, rot = { x = 0.0, y = 76.8, z = 0.0 }, level = 1 },
	{ config_id = 1033, gadget_id = 70310001, pos = { x = 544.6, y = -40.6, z = 51.1 }, rot = { x = 0.0, y = 266.0, z = 0.0 }, level = 1 },
	{ config_id = 1034, gadget_id = 70310001, pos = { x = 555.4, y = -39.3, z = 55.2 }, rot = { x = 0.0, y = 209.6, z = 0.0 }, level = 1 },
	{ config_id = 1035, gadget_id = 70310001, pos = { x = 544.8, y = -39.3, z = 55.3 }, rot = { x = 0.0, y = 97.2, z = 0.0 }, level = 1 },
	{ config_id = 1036, gadget_id = 70310001, pos = { x = 555.3, y = -38.2, z = 71.1 }, rot = { x = 0.0, y = 348.4, z = 0.0 }, level = 1 },
	{ config_id = 1037, gadget_id = 70310001, pos = { x = 545.1, y = -38.1, z = 71.2 }, rot = { x = 0.0, y = 239.0, z = 0.0 }, level = 1 },
	{ config_id = 1038, gadget_id = 70310001, pos = { x = 555.4, y = -38.2, z = 81.8 }, rot = { x = 0.0, y = 21.3, z = 0.0 }, level = 1 },
	{ config_id = 1039, gadget_id = 70310001, pos = { x = 545.1, y = -38.2, z = 81.5 }, rot = { x = 0.0, y = 100.8, z = 0.0 }, level = 1 },
	{ config_id = 1040, gadget_id = 70900202, pos = { x = 532.3, y = 2.3, z = 219.9 }, rot = { x = 0.0, y = 331.6, z = 0.0 }, level = 1 },
	{ config_id = 1041, gadget_id = 70900202, pos = { x = 496.3, y = -34.5, z = 67.7 }, rot = { x = 0.0, y = 275.0, z = 0.0 }, level = 1 },
	{ config_id = 1042, gadget_id = 70900202, pos = { x = 475.4, y = -18.5, z = 63.9 }, rot = { x = 0.0, y = 162.9, z = 0.0 }, level = 1 },
	{ config_id = 1047, gadget_id = 70900008, pos = { x = 410.5, y = -22.1, z = 63.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1048, gadget_id = 70211002, pos = { x = 400.1, y = -22.1, z = 65.4 }, rot = { x = 0.0, y = 91.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 1049, gadget_id = 70900201, pos = { x = 533.9, y = -2.0, z = 248.0 }, rot = { x = 0.0, y = 120.1, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 13, shape = RegionShape.SPHERE, radius = 9, pos = { x = 550.0, y = -38.1, z = 75.8 } },
	{ config_id = 14, shape = RegionShape.CUBIC, size = { x = 15.0, y = 10.0, z = 25.0 }, pos = { x = 512.0, y = -35.2, z = 75.1 } },
	{ config_id = 16, shape = RegionShape.CUBIC, size = { x = 6.0, y = 5.0, z = 12.0 }, pos = { x = 459.7, y = -22.6, z = 69.2 } },
	{ config_id = 17, shape = RegionShape.CUBIC, size = { x = 6.0, y = 8.0, z = 5.0 }, pos = { x = 430.5, y = -22.1, z = 62.7 } },
	{ config_id = 36, shape = RegionShape.CUBIC, size = { x = 8.0, y = 5.0, z = 8.0 }, pos = { x = 496.6, y = -27.5, z = 67.7 } },
	{ config_id = 37, shape = RegionShape.CUBIC, size = { x = 6.0, y = 3.0, z = 9.0 }, pos = { x = 497.0, y = -16.9, z = 67.7 } },
	{ config_id = 44, shape = RegionShape.CUBIC, size = { x = 15.0, y = 3.0, z = 3.0 }, pos = { x = 550.0, y = -42.2, z = 43.2 } },
	{ config_id = 45, shape = RegionShape.CUBIC, size = { x = 15.0, y = 5.0, z = 3.0 }, pos = { x = 549.7, y = -41.1, z = 48.1 } },
	{ config_id = 46, shape = RegionShape.SPHERE, radius = 5, pos = { x = 549.9, y = -38.2, z = 62.5 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_1", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1", action = "action_EVENT_GADGET_CREATE_1" },
	{ name = "SELECT_OPTION_4", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4", action = "action_EVENT_SELECT_OPTION_4", forbid_guest = false },
	{ name = "ANY_MONSTER_DIE_7", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7", action = "action_EVENT_ANY_MONSTER_DIE_7" },
	{ name = "ENTER_REGION_13", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13", action = "action_EVENT_ENTER_REGION_13", forbid_guest = false },
	{ name = "ENTER_REGION_14", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14", action = "action_EVENT_ENTER_REGION_14", forbid_guest = false },
	{ name = "ENTER_REGION_16", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16", action = "action_EVENT_ENTER_REGION_16", forbid_guest = false },
	{ name = "ENTER_REGION_17", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17", action = "action_EVENT_ENTER_REGION_17", forbid_guest = false },
	{ name = "ENTER_REGION_36", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_36", action = "action_EVENT_ENTER_REGION_36", forbid_guest = false },
	{ name = "ENTER_REGION_37", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_37", action = "action_EVENT_ENTER_REGION_37", forbid_guest = false },
	{ name = "GADGET_CREATE_39", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_39", action = "action_EVENT_GADGET_CREATE_39" },
	{ name = "ENTER_REGION_44", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_44", action = "action_EVENT_ENTER_REGION_44", forbid_guest = false },
	{ name = "ENTER_REGION_45", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45", action = "action_EVENT_ENTER_REGION_45", forbid_guest = false },
	{ name = "ENTER_REGION_46", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_46", action = "action_EVENT_ENTER_REGION_46", forbid_guest = false },
	{ name = "GADGET_STATE_CHANGE_60", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60", action = "action_EVENT_GADGET_STATE_CHANGE_60", trigger_count = 0 },
	{ name = "TIMER_EVENT_64", event = EventType.EVENT_TIMER_EVENT, source = "begin", condition = "", action = "action_EVENT_TIMER_EVENT_64", trigger_count = 0 }
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
		monsters = { 1001 },
		gadgets = { 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1035, 1036, 1037, 1038, 1039, 1047, 1048 },
		regions = { 13, 14, 16, 17, 36, 37, 44, 45, 46 },
		triggers = { "GADGET_CREATE_1", "SELECT_OPTION_4", "ANY_MONSTER_DIE_7", "ENTER_REGION_13", "ENTER_REGION_14", "ENTER_REGION_16", "ENTER_REGION_17", "ENTER_REGION_36", "ENTER_REGION_37", "GADGET_CREATE_39", "ENTER_REGION_44", "ENTER_REGION_45", "ENTER_REGION_46", "GADGET_STATE_CHANGE_60", "TIMER_EVENT_64" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_1(context, evt)
	-- 判断是gadgetid 1004
	if 1004 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4(context, evt)
	-- 判断是gadgetid 1004 option_id 1
	if 1004 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4(context, evt)
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 1004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1004, GadgetState.GearStart) then
			return -1
		end 
	
	-- 删除指定group： 220011001 ；指定config：1004；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220011001, 1004, 1) then
		return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220011001, monsters = {}, gadgets = {1042} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7(context, evt)
	--判断死亡怪物的configid是否为 1001
	if evt.param1 ~= 1001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7(context, evt)
	-- 将configid为 1007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1007, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 1020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1020, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 1021 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1021, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13(context, evt)
	if evt.param1 ~= 13 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13(context, evt)
	-- 触发镜头注目，注目位置为坐标（550，-35，83），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=550, y=-35, z=83}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 调用提示id为 1041001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1041001) then
		return -1
	end
	
	-- 创生gadget 1041
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1041 }) then
		return -1
	end
	
	-- 创生gadget 1049
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1049 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14(context, evt)
	if evt.param1 ~= 14 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14(context, evt)
	-- 调用提示id为 1041011 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1041011) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16(context, evt)
	if evt.param1 ~= 16 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16(context, evt)
	-- 调用提示id为 1041041 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1041041) then
		return -1
	end
	
	-- 将configid为 1019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1019, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17(context, evt)
	if evt.param1 ~= 17 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17(context, evt)
	-- 调用提示id为 1041031 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1041031) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_36(context, evt)
	if evt.param1 ~= 36 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_36(context, evt)
	-- 将configid为 1015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1015, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 1016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1016, GadgetState.GearStart) then
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220011001, monsters = {}, gadgets = {1041,1049} }) then
			return -1
		end
	
	-- 创生gadget 1042
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1042 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_37(context, evt)
	if evt.param1 ~= 37 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_37(context, evt)
	-- 将configid为 1017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1017, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 1018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1018, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 1024 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1024, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 1025 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1025, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_39(context, evt)
	if 1026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_39(context, evt)
	-- 将configid为 1026 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1026, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 1027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1027, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_44(context, evt)
	if evt.param1 ~= 44 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_44(context, evt)
	-- 将configid为 1028 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1028, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 1029 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1029, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 1030 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1030, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 1031 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1031, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_45(context, evt)
	if evt.param1 ~= 45 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_45(context, evt)
	-- 将configid为 1032 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1032, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 1033 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1033, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 1034 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1034, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 1035 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1035, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_46(context, evt)
	if evt.param1 ~= 46 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_46(context, evt)
	-- 将configid为 1036 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1036, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 1037 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1037, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 1038 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1038, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 1039 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1039, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_60(context, evt)
	if GadgetState.GearStart ~= evt.param1 or defs.gadget_id_1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_60(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "LisaOne") then
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：220011001的对象,请求一次调用,并将string参数："begin" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220011001, "begin", 3) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_64(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220011006, suite = 1 }) then
			return -1
		end
	
	return 0
end
