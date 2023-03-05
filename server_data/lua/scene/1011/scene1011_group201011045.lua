-- Trigger变量
local defs = {
	gadget_id_1 = 2,
	gadget_id_2 = 135,
	gadget_id_3 = 136,
	gadget_id_4 = 137,
	gadget_id_5 = 138
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 176, monster_id = 21030301, pos = { x = 420.5, y = 0.6, z = 44.7 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 177, monster_id = 21010301, pos = { x = 417.0, y = 0.6, z = 52.6 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 178, monster_id = 21010201, pos = { x = 416.6, y = 0.6, z = 48.6 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 179, monster_id = 21010501, pos = { x = 421.4, y = 0.6, z = 55.8 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 180, monster_id = 21030101, pos = { x = 471.0, y = 0.6, z = 51.8 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 181, monster_id = 21010701, pos = { x = 465.9, y = 0.6, z = 45.4 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 182, monster_id = 21010701, pos = { x = 465.7, y = 0.6, z = 49.1 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 183, monster_id = 21010901, pos = { x = 470.1, y = 0.6, z = 41.5 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 184, monster_id = 21030201, pos = { x = 519.1, y = 0.6, z = 41.8 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 185, monster_id = 21010701, pos = { x = 515.0, y = 0.6, z = 45.3 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 186, monster_id = 21010701, pos = { x = 515.3, y = 0.6, z = 49.2 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 187, monster_id = 21010501, pos = { x = 519.1, y = 0.6, z = 52.2 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 188, monster_id = 21030301, pos = { x = 567.5, y = 0.6, z = 41.3 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 189, monster_id = 21030101, pos = { x = 568.1, y = 0.6, z = 52.8 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 190, monster_id = 21010701, pos = { x = 563.2, y = 0.6, z = 49.3 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true },
	{ config_id = 191, monster_id = 21010701, pos = { x = 563.4, y = 0.6, z = 45.0 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 7, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 268, gadget_id = 70360002, pos = { x = 122.8, y = 0.5, z = 68.3 }, rot = { x = 0.0, y = 165.2, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_125", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_125", action = "action_EVENT_GADGET_CREATE_125" },
	{ name = "SELECT_OPTION_126", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_126", action = "action_EVENT_SELECT_OPTION_126", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_127", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_127", action = "action_EVENT_SELECT_OPTION_127", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_128", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_128", action = "action_EVENT_SELECT_OPTION_128", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_129", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_129", action = "action_EVENT_SELECT_OPTION_129", trigger_count = 0, forbid_guest = false }
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
		monsters = { 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191 },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_CREATE_125", "SELECT_OPTION_126", "SELECT_OPTION_127", "SELECT_OPTION_128", "SELECT_OPTION_129" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 180, 181, 182, 183 },
		gadgets = { 268 },
		regions = { },
		triggers = { "GADGET_CREATE_125", "SELECT_OPTION_126", "SELECT_OPTION_127", "SELECT_OPTION_128", "SELECT_OPTION_129" },
		rand_weight = 0
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 184, 185, 186, 187 },
		gadgets = { 268 },
		regions = { },
		triggers = { "GADGET_CREATE_125", "SELECT_OPTION_126", "SELECT_OPTION_127", "SELECT_OPTION_128", "SELECT_OPTION_129" },
		rand_weight = 0
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 188, 189, 190, 191 },
		gadgets = { 268 },
		regions = { },
		triggers = { "GADGET_CREATE_125", "SELECT_OPTION_126", "SELECT_OPTION_127", "SELECT_OPTION_128", "SELECT_OPTION_129" },
		rand_weight = 0
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_125(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_125(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {135,136,137,138}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_126(context, evt)
	-- 判断是gadgetid 2
	if 2 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_126(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_2 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011002, suite = 1 }) then
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
function condition_EVENT_SELECT_OPTION_127(context, evt)
	-- 判断是gadgetid 2
	if 2 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_127(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_3 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011002, suite = 2 }) then
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
function condition_EVENT_SELECT_OPTION_128(context, evt)
	-- 判断是gadgetid 2
	if 2 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_128(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_4 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011002, suite = 3 }) then
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
function condition_EVENT_SELECT_OPTION_129(context, evt)
	-- 判断是gadgetid 2
	if 2 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_129(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_5 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011002, suite = 4 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end
