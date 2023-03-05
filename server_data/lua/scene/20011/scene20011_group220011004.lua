-- Trigger变量
local defs = {
	gadget_id_1 = 97,
	gadget_id_2 = 70,
	gadget_id_3 = 137,
	gadget_id_4 = 138,
	gadget_id_5 = 139,
	gadget_id_6 = 140,
	gadget_id_7 = 4,
	gadget_id_8 = 83,
	gadget_id_9 = 7
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
	{ config_id = 29, gadget_id = 70300016, pos = { x = 533.8, y = -2.0, z = 254.0 }, rot = { x = 0.0, y = 181.2, z = 0.0 }, level = 1, drop_id = 11010500, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 56, gadget_id = 70310001, pos = { x = 523.0, y = -2.1, z = 251.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 57, gadget_id = 70310001, pos = { x = 543.4, y = -2.1, z = 252.1 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 58, gadget_id = 70310001, pos = { x = 528.5, y = -2.1, z = 261.9 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 59, gadget_id = 70310001, pos = { x = 525.7, y = -2.1, z = 256.9 }, rot = { x = 0.0, y = 37.1, z = 0.0 }, level = 1 },
	{ config_id = 60, gadget_id = 70310001, pos = { x = 540.6, y = -2.1, z = 257.0 }, rot = { x = 0.0, y = 110.4, z = 0.0 }, level = 1 },
	{ config_id = 69, gadget_id = 70211031, pos = { x = 533.5, y = -2.1, z = 257.0 }, rot = { x = 0.0, y = 180.6, z = 0.0 }, level = 1, chest_drop_id = 11010600, drop_count = 1, isOneoff = true, type = GadgetType.GADGET_DUNGEON_PASS_CHEST },
	{ config_id = 70, gadget_id = 70380001, pos = { x = 531.6, y = -22.4, z = 141.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 6, start_route = false },
	{ config_id = 81, gadget_id = 70310001, pos = { x = 537.9, y = -2.0, z = 261.7 }, rot = { x = 0.0, y = 247.8, z = 0.0 }, level = 1 },
	{ config_id = 82, gadget_id = 70380001, pos = { x = 521.0, y = -26.0, z = 121.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 7 },
	{ config_id = 83, gadget_id = 70360002, pos = { x = 532.8, y = -24.9, z = 123.1 }, rot = { x = 0.0, y = 270.7, z = 0.0 }, level = 1 },
	{ config_id = 84, gadget_id = 70900205, pos = { x = 531.4, y = -24.8, z = 121.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 85, gadget_id = 70900205, pos = { x = 531.5, y = -9.3, z = 158.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 86, gadget_id = 70380001, pos = { x = 531.6, y = -10.7, z = 163.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 8 },
	{ config_id = 97, gadget_id = 70900202, pos = { x = 531.4, y = -8.8, z = 158.7 }, rot = { x = 0.0, y = 103.8, z = 0.0 }, level = 1 },
	{ config_id = 98, gadget_id = 70900202, pos = { x = 532.6, y = -1.1, z = 221.9 }, rot = { x = 0.0, y = 277.2, z = 0.0 }, level = 1 },
	{ config_id = 137, gadget_id = 70380001, pos = { x = 545.3, y = -25.8, z = 132.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 20011012, start_route = false },
	{ config_id = 138, gadget_id = 70380001, pos = { x = 540.1, y = -25.8, z = 131.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 20011011, start_route = false },
	{ config_id = 139, gadget_id = 70380001, pos = { x = 531.7, y = -18.9, z = 136.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 20011010, start_route = false },
	{ config_id = 140, gadget_id = 70380001, pos = { x = 520.6, y = -26.0, z = 151.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 20011009, start_route = false },
	{ config_id = 141, gadget_id = 70900205, pos = { x = 531.7, y = -25.9, z = 151.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 38, shape = RegionShape.CUBIC, size = { x = 40.0, y = 5.0, z = 10.0 }, pos = { x = 533.6, y = -2.1, z = 238.0 } },
	{ config_id = 53, shape = RegionShape.SPHERE, radius = 5, pos = { x = 531.1, y = -9.3, z = 158.3 } },
	{ config_id = 54, shape = RegionShape.SPHERE, radius = 5, pos = { x = 532.8, y = -2.1, z = 223.7 } },
	{ config_id = 63, shape = RegionShape.CUBIC, size = { x = 5.0, y = 5.0, z = 3.0 }, pos = { x = 531.5, y = -23.6, z = 151.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_38", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_38", action = "action_EVENT_ENTER_REGION_38", forbid_guest = false },
	{ name = "DUNGEON_SETTLE_43", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_43", action = "action_EVENT_DUNGEON_SETTLE_43" },
	{ name = "GADGET_CREATE_47", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_47", action = "action_EVENT_GADGET_CREATE_47" },
	{ name = "SELECT_OPTION_48", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_48", action = "action_EVENT_SELECT_OPTION_48", forbid_guest = false },
	{ name = "ENTER_REGION_53", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_53", action = "action_EVENT_ENTER_REGION_53", forbid_guest = false },
	{ name = "ENTER_REGION_54", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_54", action = "action_EVENT_ENTER_REGION_54", forbid_guest = false },
	{ name = "ENTER_REGION_63", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_63", action = "action_EVENT_ENTER_REGION_63", forbid_guest = false }
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
		-- description = ,
		monsters = { },
		gadgets = { 29, 56, 57, 58, 59, 60, 70, 81, 82, 83, 84, 85, 86, 137, 138, 139, 140, 141 },
		regions = { 38, 53, 54, 63 },
		triggers = { "ENTER_REGION_38", "DUNGEON_SETTLE_43", "GADGET_CREATE_47", "SELECT_OPTION_48", "ENTER_REGION_53", "ENTER_REGION_54", "ENTER_REGION_63" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_38(context, evt)
	if evt.param1 ~= 38 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_38(context, evt)
	-- 将configid为 56 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 57 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 58 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 59 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 59, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 60 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 81 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81, GadgetState.GearStart) then
			return -1
		end 
	
	-- 调用提示id为 1041112 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1041112) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_43(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_43(context, evt)
	-- 创生gadget 69
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 69 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_47(context, evt)
	if 83 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_47(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_48(context, evt)
	-- 判断是gadgetid 83
	if 83 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_48(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_9 == evt.param2 then
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, defs.gadget_id_2) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, defs.gadget_id_3) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, defs.gadget_id_4) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, defs.gadget_id_5) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, defs.gadget_id_6) then
	  return -1
	end
	
	-- 删除指定group： 220011004 ；指定config：83；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220011004, defs.gadget_id_8, 7) then
		return -1
	end
	
	-- 解锁目标4
	if 0 ~= ScriptLib.UnlockForce(context, defs.gadget_id_7) then
		return -1
	end
	
	-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220011003, monsters = {}, gadgets = {96} }) then
			return -1
		end
	
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
		return -1
	end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_8, GadgetState.GearStart) then
			return -1
		end 
		return 0
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
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220011004, monsters = {}, gadgets = {97} }) then
			return -1
		end
	
	-- 创生gadget 98
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 98 }) then
		return -1
	end
	
	-- 调用提示id为 1041026 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1041026) then
		return -1
	end
	
	return 0
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
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220011004, monsters = {}, gadgets = {98} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_63(context, evt)
	if evt.param1 ~= 63 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_63(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 141) then
	  return -1
	end
	
	return 0
end
