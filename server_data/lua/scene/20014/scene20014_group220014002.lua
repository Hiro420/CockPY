-- Trigger变量
local defs = {
	gadget_id_1 = 2043,
	gadget_id_2 = 2034,
	gadget_id_3 = 2009,
	gadget_id_4 = 2028,
	gadget_id_5 = 2035,
	gadget_id_6 = 2008,
	gadget_id_7 = 2036,
	gadget_id_8 = 2010,
	gadget_id_9 = 2011,
	gadget_id_10 = 2012,
	gadget_id_11 = 2013
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
	{ config_id = 2001, gadget_id = 70220003, pos = { x = 189.3, y = 57.0, z = 316.0 }, rot = { x = 0.0, y = 178.9, z = 0.0 }, level = 1 },
	{ config_id = 2002, gadget_id = 70220003, pos = { x = 195.2, y = 57.1, z = 319.3 }, rot = { x = 0.0, y = 266.3, z = 0.0 }, level = 1 },
	{ config_id = 2003, gadget_id = 70220003, pos = { x = 192.9, y = 57.0, z = 321.4 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 2004, gadget_id = 70220003, pos = { x = 186.7, y = 57.1, z = 320.8 }, rot = { x = 0.0, y = 92.8, z = 0.0 }, level = 1 },
	{ config_id = 2005, gadget_id = 70220003, pos = { x = 182.1, y = 57.0, z = 324.9 }, rot = { x = 0.0, y = 267.9, z = 0.0 }, level = 1 },
	{ config_id = 2006, gadget_id = 70220003, pos = { x = 184.5, y = 57.0, z = 327.5 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 2007, gadget_id = 70220003, pos = { x = 180.2, y = 57.1, z = 322.0 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 2008, gadget_id = 70220003, pos = { x = 186.2, y = 57.0, z = 330.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 2009, gadget_id = 70220003, pos = { x = 188.9, y = 57.0, z = 333.0 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 2010, gadget_id = 70220003, pos = { x = 184.3, y = 57.0, z = 337.6 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 2011, gadget_id = 70220003, pos = { x = 194.2, y = 57.1, z = 338.4 }, rot = { x = 0.0, y = 158.5, z = 0.0 }, level = 1 },
	{ config_id = 2012, gadget_id = 70220003, pos = { x = 193.3, y = 57.1, z = 333.1 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 2013, gadget_id = 70220003, pos = { x = 194.9, y = 57.0, z = 331.2 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 2014, gadget_id = 70220003, pos = { x = 203.5, y = 57.0, z = 326.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2015, gadget_id = 70220003, pos = { x = 198.8, y = 57.1, z = 325.1 }, rot = { x = 0.0, y = 5.8, z = 0.0 }, level = 1 },
	{ config_id = 2016, gadget_id = 70220003, pos = { x = 200.4, y = 57.1, z = 328.3 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 2017, gadget_id = 70220003, pos = { x = 200.4, y = 57.0, z = 333.1 }, rot = { x = 0.0, y = 83.7, z = 0.0 }, level = 1 },
	{ config_id = 2018, gadget_id = 70220003, pos = { x = 192.6, y = 57.0, z = 328.9 }, rot = { x = 0.0, y = 0.5, z = 0.0 }, level = 1 },
	{ config_id = 2019, gadget_id = 70220003, pos = { x = 200.1, y = 57.0, z = 324.4 }, rot = { x = 0.0, y = 269.5, z = 0.0 }, level = 1 },
	{ config_id = 2020, gadget_id = 70220003, pos = { x = 200.8, y = 57.0, z = 334.6 }, rot = { x = 0.0, y = 320.3, z = 0.0 }, level = 1 },
	{ config_id = 2021, gadget_id = 70220003, pos = { x = 200.4, y = 57.0, z = 344.7 }, rot = { x = 0.0, y = 266.6, z = 0.0 }, level = 1 },
	{ config_id = 2022, gadget_id = 70220003, pos = { x = 196.3, y = 57.1, z = 339.2 }, rot = { x = 0.0, y = 179.6, z = 0.0 }, level = 1 },
	{ config_id = 2023, gadget_id = 70220003, pos = { x = 192.2, y = 57.1, z = 335.8 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 2024, gadget_id = 70220003, pos = { x = 179.1, y = 57.0, z = 331.6 }, rot = { x = 0.0, y = 179.1, z = 0.0 }, level = 1 },
	{ config_id = 2025, gadget_id = 70350002, pos = { x = 191.5, y = 58.6, z = 347.7 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 2026, gadget_id = 70350003, pos = { x = 176.3, y = 56.9, z = 328.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 2027, gadget_id = 70350003, pos = { x = 207.0, y = 56.9, z = 328.5 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 2028, gadget_id = 70900007, pos = { x = 197.5, y = 58.5, z = 343.4 }, rot = { x = 0.0, y = 180.1, z = 0.0 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 2029, gadget_id = 70220013, pos = { x = 202.0, y = 57.1, z = 336.6 }, rot = { x = 0.0, y = 333.2, z = 0.0 }, level = 1 },
	{ config_id = 2030, gadget_id = 70220013, pos = { x = 200.4, y = 57.0, z = 338.0 }, rot = { x = 0.0, y = 187.9, z = 0.0 }, level = 1 },
	{ config_id = 2031, gadget_id = 70220013, pos = { x = 199.5, y = 57.0, z = 339.8 }, rot = { x = 0.0, y = 151.7, z = 0.0 }, level = 1 },
	{ config_id = 2032, gadget_id = 70220013, pos = { x = 201.3, y = 56.7, z = 340.5 }, rot = { x = 0.0, y = 87.0, z = 0.0 }, level = 1 },
	{ config_id = 2033, gadget_id = 70220013, pos = { x = 202.2, y = 57.0, z = 338.6 }, rot = { x = 0.0, y = 22.9, z = 0.0 }, level = 1 },
	{ config_id = 2034, gadget_id = 70360002, pos = { x = 173.7, y = 57.0, z = 341.8 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 2035, gadget_id = 70360002, pos = { x = 209.6, y = 57.0, z = 341.3 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 2036, gadget_id = 70360002, pos = { x = 191.4, y = 57.0, z = 377.0 }, rot = { x = 0.0, y = 179.7, z = 0.0 }, level = 1 },
	{ config_id = 2037, gadget_id = 70220003, pos = { x = 184.0, y = 57.0, z = 341.8 }, rot = { x = 0.0, y = 271.0, z = 0.0 }, level = 1 },
	{ config_id = 2038, gadget_id = 70220003, pos = { x = 182.7, y = 57.0, z = 344.2 }, rot = { x = 0.0, y = 265.9, z = 0.0 }, level = 1 },
	{ config_id = 2039, gadget_id = 70220003, pos = { x = 199.8, y = 57.0, z = 342.0 }, rot = { x = 0.0, y = 274.4, z = 0.0 }, level = 1 },
	{ config_id = 2040, gadget_id = 70211001, pos = { x = 203.6, y = 57.0, z = 320.5 }, rot = { x = 0.0, y = 269.5, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 2041, gadget_id = 70220013, pos = { x = 203.7, y = 56.9, z = 334.4 }, rot = { x = 0.0, y = 231.8, z = 0.0 }, level = 1 },
	{ config_id = 2042, gadget_id = 70220013, pos = { x = 204.2, y = 57.0, z = 336.4 }, rot = { x = 0.0, y = 70.5, z = 0.0 }, level = 1 },
	{ config_id = 2043, gadget_id = 70900007, pos = { x = 185.8, y = 58.5, z = 343.6 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearStop }
}

-- 区域
regions = {
	{ config_id = 1, shape = RegionShape.SPHERE, radius = 46.57, pos = { x = 190.2, y = 57.0, z = 365.5 } },
	{ config_id = 6, shape = RegionShape.SPHERE, radius = 19.3, pos = { x = 192.0, y = 58.4, z = 369.6 } },
	{ config_id = 22, shape = RegionShape.SPHERE, radius = 18.4, pos = { x = 193.2, y = 57.0, z = 371.1 } },
	{ config_id = 36, shape = RegionShape.SPHERE, radius = 7.8, pos = { x = 166.8, y = 57.0, z = 339.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_1", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1", action = "action_EVENT_ENTER_REGION_1", forbid_guest = false },
	{ name = "SELECT_OPTION_3", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3", action = "action_EVENT_SELECT_OPTION_3", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_5", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5", action = "action_EVENT_SELECT_OPTION_5", forbid_guest = false },
	{ name = "ENTER_REGION_6", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6", action = "action_EVENT_ENTER_REGION_6", forbid_guest = false },
	{ name = "GADGET_CREATE_16", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_16", action = "action_EVENT_GADGET_CREATE_16" },
	{ name = "SELECT_OPTION_17", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_17", action = "action_EVENT_SELECT_OPTION_17", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_22", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_22", action = "action_EVENT_ENTER_REGION_22", forbid_guest = false },
	{ name = "ENTER_REGION_36", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_36", action = "action_EVENT_ENTER_REGION_36", forbid_guest = false },
	{ name = "GADGET_STATE_CHANGE_40", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40", action = "action_EVENT_GADGET_STATE_CHANGE_40" },
	{ name = "GADGET_STATE_CHANGE_41", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41", action = "action_EVENT_GADGET_STATE_CHANGE_41" },
	{ name = "VARIABLE_CHANGE_42", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_42", action = "action_EVENT_VARIABLE_CHANGE_42" }
}

-- 变量
variables = {
	{ name = "Fire", value = 0, no_refresh = false }
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
		gadgets = { 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039, 2041, 2042, 2043 },
		regions = { 1, 6, 22, 36 },
		triggers = { "ENTER_REGION_1", "SELECT_OPTION_3", "SELECT_OPTION_5", "ENTER_REGION_6", "GADGET_CREATE_16", "SELECT_OPTION_17", "ENTER_REGION_22", "ENTER_REGION_36", "GADGET_STATE_CHANGE_40", "GADGET_STATE_CHANGE_41", "VARIABLE_CHANGE_42" },
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
	-- 将configid为 2026 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2026, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 2027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2027, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3(context, evt)
	-- 判断是gadgetid 2034
	if 2034 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_3 == evt.param2 then
	
	-- 将configid为 110 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.Default) then
			return -1
		end 
	
	-- 删除指定group： 220014002 ；指定config：35；物件身上指定option：9；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220014002, defs.gadget_id_2, 9) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（185，58，343），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=185, y=58, z=343}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false }) then
					return -1
				end 
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_2, GadgetState.Default) then
			return -1
		end 
		return 0
	end
	
	
	return 0
	
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5(context, evt)
	-- 判断是gadgetid 2035
	if 2035 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_6 == evt.param2 then
	
	-- 将configid为 110 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_4, GadgetState.Default) then
			return -1
		end 
	
	
	-- 删除指定group： 220014002 ；指定config：35；物件身上指定option：9；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220014002, defs.gadget_id_5, 8) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（185，58，343），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=197, y=59, z=343}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false }) then
					return -1
				end 
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_5, GadgetState.Default) then
			return -1
		end 
		return 0
	end
	
	
	return 0
	
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6(context, evt)
	if evt.param1 ~= 6 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6(context, evt)
	-- 触发镜头注目
		pos = {x=191, y=57, z=377}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_16(context, evt)
	if 2036 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_16(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {10}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_17(context, evt)
	-- 判断是gadgetid 2036
	if 2036 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_17(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_8 == evt.param2 then
	
	 ScriptLib.DelWorktopOptionByGroupId(context, 220014002, defs.gadget_id_7, 10)
	                if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220014005, suite = 2 }) then
	return -1
		end
	           
		return 0
	end
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_9 == evt.param2 then
	 ScriptLib.DelWorktopOptionByGroupId(context, 220014002, defs.gadget_id_7, 11)
	                if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220014006, suite = 2 }) then
			return -1
		end
	           
		return 0
	end
	
	if defs.gadget_id_10 == evt.param2 then
	 ScriptLib.DelWorktopOptionByGroupId(context, 220014002, defs.gadget_id_7, 12)
	                if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220014007, suite = 2 }) then
			return -1
		end
	           
		return 0
	end
	
	if defs.gadget_id_11 == evt.param2 then
	 ScriptLib.DelWorktopOptionByGroupId(context, 220014002, defs.gadget_id_7, 13)
	                if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220014008, suite = 2 }) then
			return -1
		end
	           
		return 0
	end
	
		
end

-- 触发条件
function condition_EVENT_ENTER_REGION_22(context, evt)
	if evt.param1 ~= 22 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_22(context, evt)
	-- 将configid为 2025 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2025, GadgetState.Default) then
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
	-- 将configid为 2026 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2026, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_40(context, evt)
	if 2043 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_40(context, evt)
	-- 针对当前group内变量名为 "Fire" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Fire", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41(context, evt)
	if 2028 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41(context, evt)
	-- 针对当前group内变量名为 "Fire" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Fire", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_42(context, evt)
	-- 判断变量"Fire"为2
	if ScriptLib.GetGroupVariableValue(context, "Fire") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_42(context, evt)
	-- 将configid为 2025 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2025, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
