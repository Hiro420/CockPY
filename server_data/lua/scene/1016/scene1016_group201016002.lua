--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21010401, pos = { x = 141.1, y = 9.5, z = -60.1 }, rot = { x = 0.0, y = 63.0, z = 0.0 }, level = 1, disableWander = true, pose_id = 402 },
	{ config_id = 2002, monster_id = 21010401, pos = { x = 140.9, y = 10.0, z = -36.6 }, rot = { x = 0.0, y = 123.0, z = 0.0 }, level = 1, disableWander = true, pose_id = 402 },
	{ config_id = 2003, monster_id = 21010901, pos = { x = 141.1, y = 9.5, z = -60.1 }, rot = { x = 0.0, y = 90.1, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 2004, monster_id = 21011001, pos = { x = 140.9, y = 10.0, z = -36.6 }, rot = { x = 0.0, y = 85.6, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 2005, monster_id = 21011001, pos = { x = 141.6, y = 11.2, z = -49.0 }, rot = { x = 0.0, y = 89.1, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 2006, monster_id = 21011001, pos = { x = 141.6, y = 11.2, z = -49.0 }, rot = { x = 0.0, y = 93.8, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 2007, monster_id = 20010801, pos = { x = 147.2, y = 4.7, z = -57.3 }, rot = { x = 0.0, y = 87.4, z = 0.0 }, level = 1 },
	{ config_id = 2008, monster_id = 20010501, pos = { x = 147.2, y = 4.7, z = -41.0 }, rot = { x = 0.0, y = 98.1, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2009, gadget_id = 70380001, pos = { x = 126.8, y = 8.3, z = -27.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 1016004, start_route = false },
	{ config_id = 2010, gadget_id = 70690007, pos = { x = 165.7, y = 4.6, z = -24.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2011, gadget_id = 70360002, pos = { x = 154.8, y = 4.6, z = -47.6 }, rot = { x = 0.0, y = 85.5, z = 0.0 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 2012, gadget_id = 70380001, pos = { x = 128.5, y = 12.4, z = -70.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 1016009, start_route = false },
	{ config_id = 2013, gadget_id = 70220005, pos = { x = 141.2, y = 9.5, z = -58.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2014, gadget_id = 70220005, pos = { x = 138.2, y = 9.5, z = -60.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2015, gadget_id = 70220005, pos = { x = 138.9, y = 10.0, z = -35.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2016, gadget_id = 70220005, pos = { x = 141.8, y = 10.0, z = -38.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2017, gadget_id = 70220005, pos = { x = 141.8, y = 11.2, z = -47.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2018, gadget_id = 70220005, pos = { x = 141.8, y = 11.2, z = -50.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2019, gadget_id = 70220005, pos = { x = 138.0, y = 9.5, z = -61.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2020, gadget_id = 70220005, pos = { x = 139.4, y = 10.0, z = -34.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2021, gadget_id = 70900201, pos = { x = 165.3, y = 9.5, z = -24.4 }, rot = { x = 0.0, y = 354.6, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "VARIABLE_CHANGE_7", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7", action = "action_EVENT_VARIABLE_CHANGE_7" },
	{ name = "ANY_MONSTER_DIE_26", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_26", action = "action_EVENT_ANY_MONSTER_DIE_26", trigger_count = 4 },
	{ name = "ANY_MONSTER_DIE_27", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_27", action = "action_EVENT_ANY_MONSTER_DIE_27", trigger_count = 4 },
	{ name = "ANY_MONSTER_DIE_28", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_28", action = "action_EVENT_ANY_MONSTER_DIE_28", trigger_count = 4 },
	{ name = "ANY_MONSTER_DIE_29", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_29", action = "action_EVENT_ANY_MONSTER_DIE_29", trigger_count = 4 },
	{ name = "ANY_MONSTER_DIE_30", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_30", action = "action_EVENT_ANY_MONSTER_DIE_30", trigger_count = 4 },
	{ name = "ANY_MONSTER_DIE_31", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31", action = "action_EVENT_ANY_MONSTER_DIE_31", trigger_count = 4 },
	{ name = "ANY_MONSTER_DIE_32", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32", action = "action_EVENT_ANY_MONSTER_DIE_32", trigger_count = 4 },
	{ name = "ANY_MONSTER_DIE_33", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_33", action = "action_EVENT_ANY_MONSTER_DIE_33", trigger_count = 4 },
	{ name = "VARIABLE_CHANGE_34", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_34", action = "action_EVENT_VARIABLE_CHANGE_34", trigger_count = 4 },
	{ name = "SELECT_OPTION_36", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_36", action = "action_EVENT_SELECT_OPTION_36", forbid_guest = false }
}

-- 变量
variables = {
	{ name = "Key", value = 0, no_refresh = false }
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
		-- description = ,
		monsters = { 2001, 2002, 2005 },
		gadgets = { 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_7", "ANY_MONSTER_DIE_26", "ANY_MONSTER_DIE_27", "ANY_MONSTER_DIE_28", "ANY_MONSTER_DIE_29", "ANY_MONSTER_DIE_30", "ANY_MONSTER_DIE_31", "ANY_MONSTER_DIE_32", "ANY_MONSTER_DIE_33", "VARIABLE_CHANGE_34", "SELECT_OPTION_36" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7(context, evt)
	-- 判断变量"Key"为8
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 8 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7(context, evt)
	-- 将configid为 2011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2011, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201016002, 2011, {2}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_26(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_26(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_27(context, evt)
	if 2002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_27(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_28(context, evt)
	if 2005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_28(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_29(context, evt)
	if 2003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_29(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_30(context, evt)
	if 2004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_30(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_31(context, evt)
	if 2006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_32(context, evt)
	if 2007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_32(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_33(context, evt)
	if 2008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_33(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_34(context, evt)
	-- 判断变量"Key"为3
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_34(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2003, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2004, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2006, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟4秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2007, delay_time = 4 }) then
	  return -1
	end
	
	-- 延迟4秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2008, delay_time = 4 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_36(context, evt)
	-- 判断是gadgetid 2011 option_id 2
	if 2011 ~= evt.param1 then
		return false	
	end
	
	if 2 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_36(context, evt)
	-- 解锁目标1
	if 0 ~= ScriptLib.UnlockForce(context, 1) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（165，6，-24），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=165, y=6, z=-24}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 删除指定group： 201016002 ；指定config：2011；物件身上指定option：2；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201016002, 2011, 2) then
		return -1
	end
	
	-- 将configid为 2011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2011, GadgetState.GearStart) then
			return -1
		end 
	
	-- 创建id为2021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2021 }) then
	  return -1
	end
	
	return 0
end
