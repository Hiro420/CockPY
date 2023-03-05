-- Trigger变量
local defs = {
	gadget_id_1 = 1021,
	gadget_id_2 = 7122,
	gadget_id_3 = 7123,
	gadget_id_4 = 7124,
	gadget_id_5 = 7125,
	gadget_id_6 = 7121,
	gadget_id_7 = 1022,
	gadget_id_8 = 7142,
	gadget_id_9 = 7143,
	gadget_id_10 = 7144,
	gadget_id_11 = 7145,
	gadget_id_12 = 7146
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 156, monster_id = 21010201, pos = { x = 167.9, y = 0.6, z = 50.9 }, rot = { x = 0.0, y = 276.5, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 157, monster_id = 21010201, pos = { x = 170.0, y = 0.6, z = 53.1 }, rot = { x = 0.0, y = 269.8, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 158, monster_id = 21010201, pos = { x = 170.3, y = 0.6, z = 49.2 }, rot = { x = 0.0, y = 280.7, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 159, monster_id = 21010401, pos = { x = 175.0, y = 0.6, z = 51.2 }, rot = { x = 0.0, y = 275.1, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 160, monster_id = 20011301, pos = { x = 218.6, y = 0.6, z = 52.2 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 161, monster_id = 20011201, pos = { x = 221.2, y = 0.6, z = 53.3 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 162, monster_id = 20011201, pos = { x = 221.2, y = 0.6, z = 52.0 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 163, monster_id = 20011201, pos = { x = 221.2, y = 0.6, z = 50.6 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 164, monster_id = 20011101, pos = { x = 270.6, y = 0.6, z = 48.3 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 165, monster_id = 20011001, pos = { x = 268.3, y = 0.6, z = 49.4 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 166, monster_id = 20011001, pos = { x = 270.0, y = 0.6, z = 50.1 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 167, monster_id = 20011001, pos = { x = 271.7, y = 0.6, z = 50.2 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 168, monster_id = 20010301, pos = { x = 317.2, y = 0.6, z = 47.6 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 169, monster_id = 20010301, pos = { x = 318.7, y = 0.6, z = 48.4 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 170, monster_id = 20010301, pos = { x = 321.3, y = 0.6, z = 47.8 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 171, monster_id = 20010401, pos = { x = 319.0, y = 0.6, z = 45.7 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 172, monster_id = 20010901, pos = { x = 369.8, y = 0.6, z = 48.7 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 173, monster_id = 20010801, pos = { x = 367.6, y = 0.6, z = 49.5 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 174, monster_id = 20011001, pos = { x = 370.3, y = 0.6, z = 50.1 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 175, monster_id = 20011001, pos = { x = 373.1, y = 0.6, z = 49.7 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 266, gadget_id = 70360002, pos = { x = 157.9, y = 0.6, z = 35.6 }, rot = { x = 0.0, y = 179.9, z = 0.0 }, level = 1 },
	{ config_id = 267, gadget_id = 70360002, pos = { x = 147.7, y = 1.1, z = 7.7 }, rot = { x = 0.0, y = 102.3, z = 0.0 }, level = 1 },
	{ config_id = 270, gadget_id = 70220010, pos = { x = 471.3, y = 2.7, z = 103.8 }, rot = { x = 0.0, y = 85.6, z = 0.0 }, level = 1 },
	{ config_id = 271, gadget_id = 70220010, pos = { x = 470.8, y = 0.6, z = 93.6 }, rot = { x = 0.0, y = 85.6, z = 0.0 }, level = 1 },
	{ config_id = 272, gadget_id = 70220010, pos = { x = 459.4, y = 0.6, z = 93.8 }, rot = { x = 0.0, y = 85.6, z = 0.0 }, level = 1 },
	{ config_id = 273, gadget_id = 70220010, pos = { x = 458.1, y = 0.6, z = 109.1 }, rot = { x = 0.0, y = 85.6, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 137, shape = RegionShape.SPHERE, radius = 5, pos = { x = 160.2, y = 0.6, z = 37.8 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_113", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_113", action = "action_EVENT_GADGET_CREATE_113" },
	{ name = "SELECT_OPTION_114", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_114", action = "action_EVENT_SELECT_OPTION_114", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_115", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_115", action = "action_EVENT_SELECT_OPTION_115", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_116", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_116", action = "action_EVENT_SELECT_OPTION_116", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_117", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_117", action = "action_EVENT_SELECT_OPTION_117", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_118", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_118", action = "action_EVENT_SELECT_OPTION_118", trigger_count = 0, forbid_guest = false },
	{ name = "GADGET_CREATE_119", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_119", action = "action_EVENT_GADGET_CREATE_119" },
	{ name = "SELECT_OPTION_120", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_120", action = "action_EVENT_SELECT_OPTION_120", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_121", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_121", action = "action_EVENT_SELECT_OPTION_121", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_122", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_122", action = "action_EVENT_SELECT_OPTION_122", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_123", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_123", action = "action_EVENT_SELECT_OPTION_123", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_124", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_124", action = "action_EVENT_SELECT_OPTION_124", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_137", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", forbid_guest = false }
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
		-- description = ,
		monsters = { 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175 },
		gadgets = { 267, 270, 271, 272, 273 },
		regions = { 137 },
		triggers = { "GADGET_CREATE_113", "SELECT_OPTION_114", "SELECT_OPTION_115", "SELECT_OPTION_116", "SELECT_OPTION_117", "SELECT_OPTION_118", "GADGET_CREATE_119", "SELECT_OPTION_120", "SELECT_OPTION_121", "SELECT_OPTION_122", "SELECT_OPTION_123", "SELECT_OPTION_124", "ENTER_REGION_137" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 267 },
		regions = { },
		triggers = { "GADGET_CREATE_113", "SELECT_OPTION_114", "SELECT_OPTION_115", "SELECT_OPTION_116", "SELECT_OPTION_117", "SELECT_OPTION_118", "GADGET_CREATE_119", "SELECT_OPTION_120", "SELECT_OPTION_121", "SELECT_OPTION_122", "SELECT_OPTION_123", "SELECT_OPTION_124" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 267 },
		regions = { },
		triggers = { "GADGET_CREATE_113", "SELECT_OPTION_114", "SELECT_OPTION_115", "SELECT_OPTION_116", "SELECT_OPTION_117", "SELECT_OPTION_118", "GADGET_CREATE_119", "SELECT_OPTION_120", "SELECT_OPTION_121", "SELECT_OPTION_122", "SELECT_OPTION_123", "SELECT_OPTION_124" },
		rand_weight = 0
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 267 },
		regions = { },
		triggers = { "GADGET_CREATE_113", "SELECT_OPTION_114", "SELECT_OPTION_115", "SELECT_OPTION_116", "SELECT_OPTION_117", "SELECT_OPTION_118", "GADGET_CREATE_119", "SELECT_OPTION_120", "SELECT_OPTION_121", "SELECT_OPTION_122", "SELECT_OPTION_123", "SELECT_OPTION_124" },
		rand_weight = 0
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 267 },
		regions = { },
		triggers = { "GADGET_CREATE_113", "SELECT_OPTION_114", "SELECT_OPTION_115", "SELECT_OPTION_116", "SELECT_OPTION_117", "SELECT_OPTION_118", "GADGET_CREATE_119", "SELECT_OPTION_120", "SELECT_OPTION_121", "SELECT_OPTION_122", "SELECT_OPTION_123", "SELECT_OPTION_124" },
		rand_weight = 0
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_113(context, evt)
	if 1021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_113(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {130,131,132,133,134}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_114(context, evt)
	-- 判断是gadgetid 1021
	if 1021 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_114(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_2 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011001, suite = 2 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_115(context, evt)
	-- 判断是gadgetid 1021
	if 1021 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_115(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_3 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011001, suite = 3 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_116(context, evt)
	-- 判断是gadgetid 1021
	if 1021 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_116(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_4 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011001, suite = 4 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_117(context, evt)
	-- 判断是gadgetid 1021
	if 1021 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_117(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_5 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011001, suite = 5 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_118(context, evt)
	-- 判断是gadgetid 1021
	if 1021 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_118(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_6 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011001, suite = 1 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_119(context, evt)
	if 1022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_119(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {151,152,153,154,155}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_120(context, evt)
	-- 判断是gadgetid 1022
	if 1022 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_120(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_8 == evt.param2 then
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011001, refresh_level_revise = 1}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011002, refresh_level_revise = 1}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011003, refresh_level_revise = 1}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, refresh_level_revise = 1}) then
	  return -1
	end
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_7, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_121(context, evt)
	-- 判断是gadgetid 1022
	if 1022 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_121(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_9 == evt.param2 then
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011001, refresh_level_revise = 5}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011002, refresh_level_revise = 5}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011003, refresh_level_revise = 5}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, refresh_level_revise = 5}) then
	  return -1
	end
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_7, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_122(context, evt)
	-- 判断是gadgetid 1022
	if 1022 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_122(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_10 == evt.param2 then
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011001, refresh_level_revise = 10}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011002, refresh_level_revise = 10}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011003, refresh_level_revise = 10}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, refresh_level_revise = 10}) then
	  return -1
	end
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_7, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_123(context, evt)
	-- 判断是gadgetid 1022
	if 1022 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_123(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_11 == evt.param2 then
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011001, refresh_level_revise = 15}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011002, refresh_level_revise = 15}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011003, refresh_level_revise = 15}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, refresh_level_revise = 15}) then
	  return -1
	end
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_7, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_124(context, evt)
	-- 判断是gadgetid 1022
	if 1022 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_124(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_12 == evt.param2 then
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011001, refresh_level_revise = 20}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011002, refresh_level_revise = 20}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011003, refresh_level_revise = 20}) then
	  return -1
	end
	
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, refresh_level_revise = 20}) then
	  return -1
	end
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_7, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件

-- 触发操作
