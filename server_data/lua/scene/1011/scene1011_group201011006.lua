-- Trigger变量
local defs = {
	gadget_id_1 = 9,
	gadget_id_2 = 156,
	gadget_id_3 = 157,
	gadget_id_4 = 158,
	gadget_id_5 = 159,
	gadget_id_6 = 160,
	gadget_id_7 = 161,
	gadget_id_8 = 162,
	gadget_id_9 = 163
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 83, monster_id = 21010201, pos = { x = -22.0, y = 0.4, z = 9.9 }, rot = { x = 0.0, y = 172.8, z = 0.0 }, level = 1 },
	{ config_id = 84, monster_id = 21010201, pos = { x = -18.7, y = 0.4, z = 10.2 }, rot = { x = 0.0, y = 211.1, z = 0.0 }, level = 1 },
	{ config_id = 85, monster_id = 21010201, pos = { x = -15.3, y = 0.4, z = 10.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 86, monster_id = 21010401, pos = { x = -1.0, y = 6.6, z = 13.1 }, rot = { x = 0.0, y = 210.3, z = 0.0 }, level = 1 },
	{ config_id = 87, monster_id = 21010401, pos = { x = -28.0, y = 6.5, z = 12.2 }, rot = { x = 0.0, y = 163.1, z = 0.0 }, level = 1 },
	{ config_id = 88, monster_id = 21010301, pos = { x = -8.1, y = 0.5, z = 10.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 89, monster_id = 21010301, pos = { x = -16.8, y = 0.5, z = 10.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 90, monster_id = 21010201, pos = { x = -14.0, y = 0.5, z = 11.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 91, monster_id = 21010201, pos = { x = -10.7, y = 0.5, z = 13.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 92, monster_id = 21010201, pos = { x = -12.1, y = 0.5, z = 10.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 93, monster_id = 21030301, pos = { x = -6.8, y = 0.5, z = 13.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 94, monster_id = 21010201, pos = { x = -9.9, y = 0.5, z = 10.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 95, monster_id = 21010201, pos = { x = -16.2, y = 0.5, z = 14.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 96, monster_id = 21010201, pos = { x = -8.8, y = 0.5, z = 14.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 97, monster_id = 21020201, pos = { x = -18.8, y = 0.5, z = 15.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 98, monster_id = 21020101, pos = { x = -14.1, y = 0.5, z = 8.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 99, monster_id = 21010301, pos = { x = -4.6, y = 0.5, z = 13.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 100, monster_id = 21010301, pos = { x = -21.5, y = 0.5, z = 14.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 101, monster_id = 21030201, pos = { x = -6.0, y = 0.5, z = 11.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 102, monster_id = 20011201, pos = { x = -9.1, y = 0.5, z = 10.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 103, monster_id = 20011201, pos = { x = -18.6, y = 0.5, z = 9.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 104, monster_id = 20011301, pos = { x = -12.6, y = 0.5, z = 8.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 105, monster_id = 24010101, pos = { x = -13.6, y = 0.5, z = 12.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, pose_id = 101 },
	{ config_id = 106, monster_id = 21010401, pos = { x = -1.1, y = 6.5, z = 13.5 }, rot = { x = 0.0, y = 209.0, z = 0.0 }, level = 1 },
	{ config_id = 107, monster_id = 21010401, pos = { x = -27.2, y = 6.5, z = 12.6 }, rot = { x = 0.0, y = 162.9, z = 0.0 }, level = 1 },
	{ config_id = 108, monster_id = 22010101, pos = { x = -14.0, y = 0.5, z = 7.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 109, monster_id = 20011201, pos = { x = -4.2, y = 0.5, z = 10.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 110, monster_id = 20011201, pos = { x = -23.9, y = 0.5, z = 9.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9, gadget_id = 70360002, pos = { x = -6.1, y = 0.5, z = -18.8 }, rot = { x = 0.0, y = 261.6, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_36", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_36", action = "action_EVENT_GADGET_CREATE_36" },
	{ name = "SELECT_OPTION_37", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_37", action = "action_EVENT_SELECT_OPTION_37", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_38", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_38", action = "action_EVENT_SELECT_OPTION_38", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_39", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_39", action = "action_EVENT_SELECT_OPTION_39", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_40", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_40", action = "action_EVENT_SELECT_OPTION_40", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_41", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_41", action = "action_EVENT_SELECT_OPTION_41", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_42", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_42", action = "action_EVENT_SELECT_OPTION_42", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_43", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_43", action = "action_EVENT_SELECT_OPTION_43", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_44", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_44", action = "action_EVENT_SELECT_OPTION_44", trigger_count = 0, forbid_guest = false }
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
		monsters = { 83, 84, 85 },
		gadgets = { 9 },
		regions = { },
		triggers = { "GADGET_CREATE_36", "SELECT_OPTION_37", "SELECT_OPTION_38", "SELECT_OPTION_39", "SELECT_OPTION_40", "SELECT_OPTION_41", "SELECT_OPTION_42", "SELECT_OPTION_43", "SELECT_OPTION_44" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 86, 87, 88, 89 },
		gadgets = { 9 },
		regions = { },
		triggers = { "GADGET_CREATE_36", "SELECT_OPTION_37", "SELECT_OPTION_38", "SELECT_OPTION_39", "SELECT_OPTION_40", "SELECT_OPTION_41", "SELECT_OPTION_42", "SELECT_OPTION_43", "SELECT_OPTION_44" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 90, 91, 92, 93 },
		gadgets = { 9 },
		regions = { },
		triggers = { "GADGET_CREATE_36", "SELECT_OPTION_37", "SELECT_OPTION_38", "SELECT_OPTION_39", "SELECT_OPTION_40", "SELECT_OPTION_41", "SELECT_OPTION_42", "SELECT_OPTION_43", "SELECT_OPTION_44" },
		rand_weight = 0
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 94, 95, 96, 97 },
		gadgets = { 9 },
		regions = { },
		triggers = { "GADGET_CREATE_36", "SELECT_OPTION_37", "SELECT_OPTION_38", "SELECT_OPTION_39", "SELECT_OPTION_40", "SELECT_OPTION_41", "SELECT_OPTION_42", "SELECT_OPTION_43", "SELECT_OPTION_44" },
		rand_weight = 0
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 98, 99, 100 },
		gadgets = { 9 },
		regions = { },
		triggers = { "GADGET_CREATE_36", "SELECT_OPTION_37", "SELECT_OPTION_38", "SELECT_OPTION_39", "SELECT_OPTION_40", "SELECT_OPTION_41", "SELECT_OPTION_42", "SELECT_OPTION_43", "SELECT_OPTION_44" },
		rand_weight = 0
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 101, 102, 103, 104 },
		gadgets = { 9 },
		regions = { },
		triggers = { "GADGET_CREATE_36", "SELECT_OPTION_37", "SELECT_OPTION_38", "SELECT_OPTION_39", "SELECT_OPTION_40", "SELECT_OPTION_41", "SELECT_OPTION_42", "SELECT_OPTION_43", "SELECT_OPTION_44" },
		rand_weight = 0
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { 105, 106, 107 },
		gadgets = { 9 },
		regions = { },
		triggers = { "GADGET_CREATE_36", "SELECT_OPTION_37", "SELECT_OPTION_38", "SELECT_OPTION_39", "SELECT_OPTION_40", "SELECT_OPTION_41", "SELECT_OPTION_42", "SELECT_OPTION_43", "SELECT_OPTION_44" },
		rand_weight = 0
	},
	{
		-- suite_id = 8,
		-- description = suite_8,
		monsters = { 108, 109, 110 },
		gadgets = { 9 },
		regions = { },
		triggers = { "GADGET_CREATE_36", "SELECT_OPTION_37", "SELECT_OPTION_38", "SELECT_OPTION_39", "SELECT_OPTION_40", "SELECT_OPTION_41", "SELECT_OPTION_42", "SELECT_OPTION_43", "SELECT_OPTION_44" },
		rand_weight = 0
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_36(context, evt)
	if 9 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_36(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {156,157,158,159,160,161,162,163}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_37(context, evt)
	-- 判断是gadgetid 9
	if 9 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_37(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_2 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011006, suite = 1 }) then
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
function condition_EVENT_SELECT_OPTION_38(context, evt)
	-- 判断是gadgetid 9
	if 9 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_38(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_3 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011006, suite = 2 }) then
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
function condition_EVENT_SELECT_OPTION_39(context, evt)
	-- 判断是gadgetid 9
	if 9 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_39(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_4 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011006, suite = 3 }) then
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
function condition_EVENT_SELECT_OPTION_40(context, evt)
	-- 判断是gadgetid 9
	if 9 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_40(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_5 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011006, suite = 4 }) then
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
function condition_EVENT_SELECT_OPTION_41(context, evt)
	-- 判断是gadgetid 9
	if 9 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_41(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_6 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011006, suite = 5 }) then
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
function condition_EVENT_SELECT_OPTION_42(context, evt)
	-- 判断是gadgetid 9
	if 9 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_42(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_7 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011006, suite = 6 }) then
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
function condition_EVENT_SELECT_OPTION_43(context, evt)
	-- 判断是gadgetid 9
	if 9 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_43(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_8 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011006, suite = 7 }) then
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
function condition_EVENT_SELECT_OPTION_44(context, evt)
	-- 判断是gadgetid 9
	if 9 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_44(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_9 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011006, suite = 8 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end
