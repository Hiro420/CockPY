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
	{ config_id = 192, monster_id = 21020101, pos = { x = 617.2, y = 0.6, z = 47.5 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 193, monster_id = 21010301, pos = { x = 612.6, y = 0.6, z = 52.1 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 194, monster_id = 21010601, pos = { x = 612.5, y = 0.6, z = 48.0 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 195, monster_id = 21010601, pos = { x = 617.1, y = 0.6, z = 51.3 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 196, monster_id = 21020201, pos = { x = 652.8, y = 0.6, z = 98.1 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 197, monster_id = 22010101, pos = { x = 609.5, y = 0.6, z = 94.5 }, rot = { x = 0.0, y = 108.9, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 199, monster_id = 22010301, pos = { x = 559.0, y = 0.6, z = 98.2 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 201, monster_id = 20011501, pos = { x = 662.0, y = 0.6, z = 50.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 202, monster_id = 20011401, pos = { x = 663.9, y = 0.6, z = 49.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 203, monster_id = 20011401, pos = { x = 661.2, y = 0.6, z = 48.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 204, monster_id = 20010601, pos = { x = 707.4, y = 0.6, z = 51.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 205, monster_id = 20010701, pos = { x = 710.7, y = 0.6, z = 48.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 207, monster_id = 20011301, pos = { x = 714.2, y = 0.6, z = 103.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 208, monster_id = 20010601, pos = { x = 712.3, y = 0.6, z = 97.3 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 209, monster_id = 20010601, pos = { x = 716.0, y = 0.6, z = 98.6 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 210, monster_id = 20011301, pos = { x = 711.3, y = 0.6, z = 100.1 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 211, monster_id = 20011401, pos = { x = 660.3, y = 0.6, z = 52.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 212, monster_id = 20011401, pos = { x = 663.7, y = 0.6, z = 52.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 213, monster_id = 20010501, pos = { x = 710.2, y = 0.6, z = 51.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 214, monster_id = 20010501, pos = { x = 707.6, y = 0.6, z = 48.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 215, monster_id = 21020101, pos = { x = 653.0, y = 0.6, z = 103.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 216, monster_id = 21030201, pos = { x = 611.1, y = 0.6, z = 108.1 }, rot = { x = 0.0, y = 108.9, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 217, monster_id = 21010301, pos = { x = 614.0, y = 0.6, z = 100.8 }, rot = { x = 0.0, y = 108.9, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 218, monster_id = 21010301, pos = { x = 613.9, y = 0.6, z = 104.2 }, rot = { x = 0.0, y = 108.9, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 219, monster_id = 21030301, pos = { x = 559.8, y = 0.6, z = 94.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 220, monster_id = 21010301, pos = { x = 564.5, y = 0.6, z = 99.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 221, monster_id = 21010301, pos = { x = 563.9, y = 0.6, z = 102.2 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 222, monster_id = 22010201, pos = { x = 511.1, y = 0.6, z = 99.6 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 223, monster_id = 20011001, pos = { x = 514.9, y = 0.6, z = 95.8 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 224, monster_id = 20011101, pos = { x = 515.1, y = 0.6, z = 103.1 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 225, monster_id = 21030101, pos = { x = 510.0, y = 0.6, z = 104.1 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 226, monster_id = 20020101, pos = { x = 462.9, y = 0.6, z = 100.2 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 7 },
	{ config_id = 227, monster_id = 20010801, pos = { x = 466.7, y = 0.6, z = 98.2 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 228, monster_id = 20010801, pos = { x = 465.5, y = 0.6, z = 103.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 229, monster_id = 20010801, pos = { x = 462.0, y = 0.6, z = 102.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 230, monster_id = 24010101, pos = { x = 417.9, y = 0.6, z = 102.6 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 231, monster_id = 22010201, pos = { x = 415.7, y = 0.6, z = 106.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 232, monster_id = 21010401, pos = { x = 657.9, y = 0.6, z = 93.5 }, rot = { x = 0.0, y = 81.1, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 233, monster_id = 21010401, pos = { x = 658.1, y = 0.6, z = 108.5 }, rot = { x = 0.0, y = 81.1, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 234, monster_id = 21030201, pos = { x = 463.1, y = 0.6, z = 93.3 }, rot = { x = 0.0, y = 108.9, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 235, monster_id = 21010401, pos = { x = 417.2, y = 0.6, z = 109.4 }, rot = { x = 0.0, y = 81.1, z = 0.0 }, level = 7, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 269, gadget_id = 70360002, pos = { x = 123.5, y = 0.5, z = 69.4 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_130", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_130", action = "action_EVENT_GADGET_CREATE_130" },
	{ name = "SELECT_OPTION_131", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_131", action = "action_EVENT_SELECT_OPTION_131", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_132", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_132", action = "action_EVENT_SELECT_OPTION_132", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_133", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_133", action = "action_EVENT_SELECT_OPTION_133", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_134", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_134", action = "action_EVENT_SELECT_OPTION_134", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_135", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_135", action = "action_EVENT_SELECT_OPTION_135", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_136", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_136", action = "action_EVENT_SELECT_OPTION_136", trigger_count = 0, forbid_guest = false }
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
		monsters = { 192, 193, 194, 195, 196, 197, 199, 201, 202, 203, 204, 205, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235 },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_CREATE_130", "SELECT_OPTION_131", "SELECT_OPTION_132", "SELECT_OPTION_133", "SELECT_OPTION_134", "SELECT_OPTION_135", "SELECT_OPTION_136" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 196, 197 },
		gadgets = { 269 },
		regions = { },
		triggers = { "GADGET_CREATE_130", "SELECT_OPTION_131", "SELECT_OPTION_132", "SELECT_OPTION_133", "SELECT_OPTION_134", "SELECT_OPTION_135", "SELECT_OPTION_136" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 199 },
		gadgets = { 269 },
		regions = { },
		triggers = { "GADGET_CREATE_130", "SELECT_OPTION_131", "SELECT_OPTION_132", "SELECT_OPTION_133", "SELECT_OPTION_134", "SELECT_OPTION_135", "SELECT_OPTION_136" },
		rand_weight = 0
	},
	{
		-- suite_id = 4,
		-- description = 0,
		monsters = { 201, 202, 203 },
		gadgets = { 269 },
		regions = { },
		triggers = { "GADGET_CREATE_130", "SELECT_OPTION_131", "SELECT_OPTION_132", "SELECT_OPTION_133", "SELECT_OPTION_134", "SELECT_OPTION_135", "SELECT_OPTION_136" },
		rand_weight = 0
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 204, 205, 207 },
		gadgets = { 269 },
		regions = { },
		triggers = { "GADGET_CREATE_130", "SELECT_OPTION_131", "SELECT_OPTION_132", "SELECT_OPTION_133", "SELECT_OPTION_134", "SELECT_OPTION_135", "SELECT_OPTION_136" },
		rand_weight = 0
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 208, 209, 210 },
		gadgets = { 269 },
		regions = { },
		triggers = { "GADGET_CREATE_130", "SELECT_OPTION_131", "SELECT_OPTION_132", "SELECT_OPTION_133", "SELECT_OPTION_134", "SELECT_OPTION_135", "SELECT_OPTION_136" },
		rand_weight = 0
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_130(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_130(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {145,146,147,148,149,150}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_131(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_131(context, evt)
	
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
function condition_EVENT_SELECT_OPTION_132(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_132(context, evt)
	
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
function condition_EVENT_SELECT_OPTION_133(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_133(context, evt)
	
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
function condition_EVENT_SELECT_OPTION_134(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_134(context, evt)
	
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
function condition_EVENT_SELECT_OPTION_135(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_135(context, evt)
	
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
function condition_EVENT_SELECT_OPTION_136(context, evt)
	-- 判断是gadgetid 4
	if 4 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_136(context, evt)
	
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
