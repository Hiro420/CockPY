--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 21010901, pos = { x = 6.2, y = 13.0, z = 70.6 }, rot = { x = 0.0, y = 0.9, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 4002, monster_id = 21011001, pos = { x = 17.0, y = 13.0, z = 70.2 }, rot = { x = 0.0, y = 356.8, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 4003, monster_id = 21020101, pos = { x = 32.1, y = 13.1, z = 87.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true, pose_id = 0 },
	{ config_id = 4004, monster_id = 21010401, pos = { x = 28.7, y = 13.0, z = 94.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, pose_id = 402 },
	{ config_id = 4005, monster_id = 21010401, pos = { x = 34.8, y = 13.0, z = 94.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, pose_id = 402 },
	{ config_id = 4006, monster_id = 21010301, pos = { x = 33.6, y = 13.0, z = 85.6 }, rot = { x = 0.0, y = 348.6, z = 0.0 }, level = 1, disableWander = true, pose_id = 0 },
	{ config_id = 4007, monster_id = 21010201, pos = { x = 28.2, y = 13.0, z = 104.5 }, rot = { x = 0.0, y = 95.5, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 4008, monster_id = 21010201, pos = { x = 35.5, y = 13.0, z = 104.5 }, rot = { x = 0.0, y = 268.0, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 4009, monster_id = 21010301, pos = { x = 29.9, y = 12.9, z = 85.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true, pose_id = 0 },
	{ config_id = 4010, monster_id = 20010601, pos = { x = 17.2, y = 13.0, z = 72.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4011, monster_id = 20010901, pos = { x = 7.0, y = 13.0, z = 73.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4012, monster_id = 20010801, pos = { x = 8.1, y = 13.0, z = 74.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4013, monster_id = 20010801, pos = { x = 6.2, y = 13.0, z = 74.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4014, monster_id = 20010501, pos = { x = 18.1, y = 13.0, z = 74.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4015, monster_id = 20010501, pos = { x = 16.0, y = 13.0, z = 74.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4016, gadget_id = 70220007, pos = { x = 10.6, y = 13.1, z = 90.4 }, rot = { x = 0.0, y = 2.7, z = 0.0 }, level = 1 },
	{ config_id = 4017, gadget_id = 70220007, pos = { x = 14.2, y = 13.1, z = 90.5 }, rot = { x = 0.0, y = 186.3, z = 0.0 }, level = 1 },
	{ config_id = 4018, gadget_id = 70211001, pos = { x = 12.6, y = 13.0, z = 96.9 }, rot = { x = 0.0, y = 180.3, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 4019, gadget_id = 70211001, pos = { x = 43.6, y = 26.5, z = 168.7 }, rot = { x = 0.0, y = 177.6, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 4020, gadget_id = 70350002, pos = { x = 11.5, y = 13.3, z = 64.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4021, gadget_id = 70360002, pos = { x = 13.8, y = 13.0, z = 71.7 }, rot = { x = 0.0, y = 2.6, z = 0.0 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 4022, gadget_id = 70350004, pos = { x = 31.8, y = 13.4, z = 89.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4023, gadget_id = 70310001, pos = { x = 36.9, y = 13.0, z = 104.4 }, rot = { x = 0.0, y = 280.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4024, gadget_id = 70310001, pos = { x = 26.9, y = 13.0, z = 104.5 }, rot = { x = 0.0, y = 257.2, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4025, gadget_id = 70211001, pos = { x = 31.2, y = 13.5, z = 67.0 }, rot = { x = 0.0, y = 338.5, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 4026, gadget_id = 70220007, pos = { x = 29.2, y = 13.3, z = 70.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4027, gadget_id = 70220007, pos = { x = 27.0, y = 13.5, z = 67.2 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 4028, gadget_id = 70220007, pos = { x = 33.7, y = 13.3, z = 70.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4029, gadget_id = 70900201, pos = { x = 11.2, y = 17.2, z = 64.7 }, rot = { x = 0.0, y = 180.7, z = 0.0 }, level = 1 },
	{ config_id = 4030, gadget_id = 70310002, pos = { x = 28.1, y = 14.9, z = 90.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4031, gadget_id = 70310002, pos = { x = 35.5, y = 14.8, z = 90.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4032, gadget_id = 70310002, pos = { x = 35.0, y = 15.6, z = 128.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4033, gadget_id = 70310002, pos = { x = 28.1, y = 15.6, z = 128.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4034, gadget_id = 70310001, pos = { x = 15.7, y = 13.0, z = 69.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4035, gadget_id = 70310001, pos = { x = 7.5, y = 13.0, z = 69.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 73, shape = RegionShape.CUBIC, size = { x = 12.0, y = 5.0, z = 5.0 }, pos = { x = 31.7, y = 15.0, z = 86.2 } },
	{ config_id = 74, shape = RegionShape.CUBIC, size = { x = 12.0, y = 5.0, z = 5.0 }, pos = { x = 11.8, y = 15.4, z = 61.6 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_16", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_16", action = "action_EVENT_ANY_MONSTER_DIE_16" },
	{ name = "SELECT_OPTION_17", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_17", action = "action_EVENT_SELECT_OPTION_17", forbid_guest = false },
	{ name = "ANY_MONSTER_DIE_36", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_36", action = "action_EVENT_ANY_MONSTER_DIE_36" },
	{ name = "ANY_MONSTER_DIE_37", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_37", action = "action_EVENT_ANY_MONSTER_DIE_37" },
	{ name = "VARIABLE_CHANGE_38", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_38", action = "action_EVENT_VARIABLE_CHANGE_38" },
	{ name = "ANY_MONSTER_DIE_39", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_39", action = "action_EVENT_ANY_MONSTER_DIE_39" },
	{ name = "ANY_MONSTER_DIE_40", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_40", action = "action_EVENT_ANY_MONSTER_DIE_40" },
	{ name = "MONSTER_BATTLE_42", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_42", action = "action_EVENT_MONSTER_BATTLE_42" },
	{ name = "MONSTER_BATTLE_44", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_44", action = "action_EVENT_MONSTER_BATTLE_44" },
	{ name = "ANY_MONSTER_DIE_45", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_45", action = "action_EVENT_ANY_MONSTER_DIE_45" },
	{ name = "ANY_MONSTER_DIE_46", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_46", action = "action_EVENT_ANY_MONSTER_DIE_46" },
	{ name = "ANY_MONSTER_DIE_47", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_47", action = "action_EVENT_ANY_MONSTER_DIE_47" },
	{ name = "ANY_MONSTER_DIE_48", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_48", action = "action_EVENT_ANY_MONSTER_DIE_48" },
	{ name = "VARIABLE_CHANGE_49", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_49", action = "action_EVENT_VARIABLE_CHANGE_49" },
	{ name = "VARIABLE_CHANGE_50", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_50", action = "action_EVENT_VARIABLE_CHANGE_50" },
	{ name = "ENTER_REGION_73", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_73", action = "action_EVENT_ENTER_REGION_73" },
	{ name = "ENTER_REGION_74", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_74", action = "action_EVENT_ENTER_REGION_74" }
}

-- 变量
variables = {
	{ name = "2ndWave", value = 0, no_refresh = false },
	{ name = "Badass_Lighting", value = 0, no_refresh = false },
	{ name = "Badass_Ice", value = 0, no_refresh = false }
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
		monsters = { 4001, 4002, 4004, 4005, 4007, 4008 },
		gadgets = { 4016, 4017, 4018, 4019, 4020, 4021, 4022, 4023, 4024, 4025, 4026, 4027, 4028, 4030, 4031, 4032, 4033, 4034, 4035 },
		regions = { 73, 74 },
		triggers = { "ANY_MONSTER_DIE_16", "SELECT_OPTION_17", "ANY_MONSTER_DIE_36", "ANY_MONSTER_DIE_37", "VARIABLE_CHANGE_38", "ANY_MONSTER_DIE_39", "ANY_MONSTER_DIE_40", "MONSTER_BATTLE_42", "MONSTER_BATTLE_44", "ANY_MONSTER_DIE_45", "ANY_MONSTER_DIE_46", "ANY_MONSTER_DIE_47", "ANY_MONSTER_DIE_48", "VARIABLE_CHANGE_49", "VARIABLE_CHANGE_50", "ENTER_REGION_73", "ENTER_REGION_74" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_16(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220019004) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_16(context, evt)
	-- 将configid为 4021 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4021, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220019004, 4021, {1}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_17(context, evt)
	-- 判断是gadgetid 4021 option_id 1
	if 4021 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_17(context, evt)
	-- 触发镜头注目，注目位置为坐标（12，17，65），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=12, y=17, z=65}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 将configid为 4020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4020, GadgetState.GearStart) then
			return -1
		end 
	
	-- 删除指定group： 220019004 ；指定config：4021；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220019004, 4021, 1) then
		return -1
	end
	
	-- 将configid为 4021 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4021, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_36(context, evt)
	if 4007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_36(context, evt)
	-- 针对当前group内变量名为 "2ndWave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "2ndWave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_37(context, evt)
	if 4008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_37(context, evt)
	-- 针对当前group内变量名为 "2ndWave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "2ndWave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_38(context, evt)
	-- 判断变量"2ndWave"为4
	if ScriptLib.GetGroupVariableValue(context, "2ndWave") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_38(context, evt)
	-- 将configid为 4022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4022, GadgetState.GearStart) then
			return -1
		end 
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4006, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4009, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4003, delay_time = 0 }) then
	  return -1
	end
	
	-- 通知groupid为220019004中,configid为：4006的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 4006, 220019004) then
	  return -1
	end
	
	-- 通知groupid为220019004中,configid为：4009的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 4009, 220019004) then
	  return -1
	end
	
	-- 通知groupid为220019004中,configid为：4003的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 4003, 220019004) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_39(context, evt)
	if 4004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_39(context, evt)
	-- 针对当前group内变量名为 "2ndWave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "2ndWave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_40(context, evt)
	if 4005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_40(context, evt)
	-- 针对当前group内变量名为 "2ndWave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "2ndWave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_42(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_42(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4012, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4013, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_44(context, evt)
	if 4002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_44(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4014, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4015, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_45(context, evt)
	if 4014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_45(context, evt)
	-- 针对当前group内变量名为 "Badass_Lighting" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Badass_Lighting", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_46(context, evt)
	if 4015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_46(context, evt)
	-- 针对当前group内变量名为 "Badass_Lighting" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Badass_Lighting", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_47(context, evt)
	if 4012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_47(context, evt)
	-- 针对当前group内变量名为 "Badass_Ice" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Badass_Ice", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_48(context, evt)
	if 4013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_48(context, evt)
	-- 针对当前group内变量名为 "Badass_Ice" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Badass_Ice", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_49(context, evt)
	-- 判断变量"Badass_Lighting"为2
	if ScriptLib.GetGroupVariableValue(context, "Badass_Lighting") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_49(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4010, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_50(context, evt)
	-- 判断变量"Badass_Ice"为2
	if ScriptLib.GetGroupVariableValue(context, "Badass_Ice") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_50(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4011, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_73(context, evt)
	if evt.param1 ~= 73 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_73(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220019008, monsters = {}, gadgets = {8047} }) then
			return -1
		end
	
	-- 创建id为4029的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4029 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_74(context, evt)
	if evt.param1 ~= 74 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_74(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220019004, monsters = {}, gadgets = {4029} }) then
			return -1
		end
	
	return 0
end
