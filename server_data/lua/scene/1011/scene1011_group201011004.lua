-- Trigger变量
local defs = {
	gadget_id_1 = 4,
	gadget_id_2 = 145,
	gadget_id_3 = 146,
	gadget_id_4 = 147,
	gadget_id_5 = 148,
	gadget_id_6 = 149,
	gadget_id_7 = 150
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58, monster_id = 21020101, pos = { x = -13.6, y = 0.5, z = -91.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 59, monster_id = 21010201, pos = { x = -11.7, y = 0.5, z = -87.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 60, monster_id = 21010201, pos = { x = -14.6, y = 0.5, z = -87.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 61, monster_id = 21011001, pos = { x = -9.9, y = 0.5, z = -92.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 62, monster_id = 21020201, pos = { x = -14.0, y = 0.5, z = -82.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 63, monster_id = 22010101, pos = { x = -5.9, y = 0.5, z = -88.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 64, monster_id = 21020101, pos = { x = -20.6, y = 0.5, z = -87.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 65, monster_id = 22010301, pos = { x = -24.4, y = 0.5, z = -90.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 66, monster_id = 21010901, pos = { x = -19.8, y = 0.5, z = -92.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 67, monster_id = 20011501, pos = { x = -9.0, y = 0.5, z = -86.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 68, monster_id = 20011401, pos = { x = -7.1, y = 0.5, z = -87.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 69, monster_id = 20011401, pos = { x = -9.8, y = 0.5, z = -88.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 70, monster_id = 20010601, pos = { x = -19.2, y = 0.5, z = -84.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 71, monster_id = 20010701, pos = { x = -16.1, y = 0.5, z = -87.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 72, monster_id = 20011001, pos = { x = -18.3, y = 0.5, z = -85.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 73, monster_id = 20011001, pos = { x = -20.3, y = 0.5, z = -85.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 74, monster_id = 20010901, pos = { x = -6.3, y = 0.5, z = -83.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 75, monster_id = 20011001, pos = { x = -1.9, y = 0.5, z = -84.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 76, monster_id = 20011101, pos = { x = -5.1, y = 0.5, z = -85.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4, gadget_id = 70360002, pos = { x = -20.8, y = 0.5, z = -61.8 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_19", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_19", action = "action_EVENT_GADGET_CREATE_19" },
	{ name = "SELECT_OPTION_20", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_20", action = "action_EVENT_SELECT_OPTION_20", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_21", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_21", action = "action_EVENT_SELECT_OPTION_21", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_22", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_22", action = "action_EVENT_SELECT_OPTION_22", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_23", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_23", action = "action_EVENT_SELECT_OPTION_23", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_24", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_24", action = "action_EVENT_SELECT_OPTION_24", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_25", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_25", action = "action_EVENT_SELECT_OPTION_25", trigger_count = 0, forbid_guest = false }
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
		monsters = { 58, 59, 60, 61 },
		gadgets = { 4 },
		regions = { },
		triggers = { "GADGET_CREATE_19", "SELECT_OPTION_20", "SELECT_OPTION_21", "SELECT_OPTION_22", "SELECT_OPTION_23", "SELECT_OPTION_24", "SELECT_OPTION_25" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 62, 63 },
		gadgets = { 4 },
		regions = { },
		triggers = { "GADGET_CREATE_19", "SELECT_OPTION_20", "SELECT_OPTION_21", "SELECT_OPTION_22", "SELECT_OPTION_23", "SELECT_OPTION_24", "SELECT_OPTION_25" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 64, 65, 66 },
		gadgets = { 4 },
		regions = { },
		triggers = { "GADGET_CREATE_19", "SELECT_OPTION_20", "SELECT_OPTION_21", "SELECT_OPTION_22", "SELECT_OPTION_23", "SELECT_OPTION_24", "SELECT_OPTION_25" },
		rand_weight = 0
	},
	{
		-- suite_id = 4,
		-- description = 0,
		monsters = { 67, 68, 69 },
		gadgets = { 4 },
		regions = { },
		triggers = { "GADGET_CREATE_19", "SELECT_OPTION_20", "SELECT_OPTION_21", "SELECT_OPTION_22", "SELECT_OPTION_23", "SELECT_OPTION_24", "SELECT_OPTION_25" },
		rand_weight = 0
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 70, 71, 72, 73 },
		gadgets = { 4 },
		regions = { },
		triggers = { "GADGET_CREATE_19", "SELECT_OPTION_20", "SELECT_OPTION_21", "SELECT_OPTION_22", "SELECT_OPTION_23", "SELECT_OPTION_24", "SELECT_OPTION_25" },
		rand_weight = 0
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 74, 75, 76 },
		gadgets = { 4 },
		regions = { },
		triggers = { "GADGET_CREATE_19", "SELECT_OPTION_20", "SELECT_OPTION_21", "SELECT_OPTION_22", "SELECT_OPTION_23", "SELECT_OPTION_24", "SELECT_OPTION_25" },
		rand_weight = 0
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_19(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_19(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {145,146,147,148,149,150}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_20(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_20(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_2 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, suite = 1 }) then
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
function condition_EVENT_SELECT_OPTION_21(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_21(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_3 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, suite = 2 }) then
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
function condition_EVENT_SELECT_OPTION_22(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_22(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_4 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, suite = 3 }) then
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
function condition_EVENT_SELECT_OPTION_23(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_23(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_5 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, suite = 4 }) then
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
function condition_EVENT_SELECT_OPTION_24(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_24(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_6 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, suite = 5 }) then
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
function condition_EVENT_SELECT_OPTION_25(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_25(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_7 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011004, suite = 6 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end
