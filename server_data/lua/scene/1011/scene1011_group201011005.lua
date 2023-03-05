-- Trigger变量
local defs = {
	gadget_id_1 = 8,
	gadget_id_2 = 164,
	gadget_id_3 = 165
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 77, monster_id = 20010801, pos = { x = 23.1, y = 0.4, z = 7.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 78, monster_id = 20010901, pos = { x = 20.4, y = 0.4, z = 10.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 79, monster_id = 21010901, pos = { x = 31.8, y = 0.4, z = 12.0 }, rot = { x = 0.0, y = 199.6, z = 0.0 }, level = 1 },
	{ config_id = 80, monster_id = 22010201, pos = { x = 20.4, y = 0.4, z = 5.9 }, rot = { x = 0.0, y = 171.8, z = 0.0 }, level = 1 },
	{ config_id = 81, monster_id = 20010701, pos = { x = 18.1, y = 0.4, z = 6.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 82, monster_id = 20010701, pos = { x = 21.8, y = 0.4, z = 7.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6, gadget_id = 70900011, pos = { x = 7.0, y = 7.4, z = 5.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, arguments = { 5, 5 } },
	{ config_id = 7, gadget_id = 70900011, pos = { x = 36.1, y = 5.5, z = -1.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, arguments = { 5, 5 } },
	{ config_id = 8, gadget_id = 70360002, pos = { x = 19.9, y = 0.4, z = -18.3 }, rot = { x = 0.0, y = 56.1, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_33", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_33", action = "action_EVENT_GADGET_CREATE_33" },
	{ name = "SELECT_OPTION_34", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_34", action = "action_EVENT_SELECT_OPTION_34", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_35", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_35", action = "action_EVENT_SELECT_OPTION_35", trigger_count = 0, forbid_guest = false }
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
		monsters = { 77, 78, 79 },
		gadgets = { 8 },
		regions = { },
		triggers = { "GADGET_CREATE_33", "SELECT_OPTION_34", "SELECT_OPTION_35" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 80, 81, 82 },
		gadgets = { 8 },
		regions = { },
		triggers = { "GADGET_CREATE_33", "SELECT_OPTION_34", "SELECT_OPTION_35" },
		rand_weight = 0
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_33(context, evt)
	if 8 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_33(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {164,165}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_34(context, evt)
	-- 判断是gadgetid 8
	if 8 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_34(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_2 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011005, suite = 1 }) then
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
function condition_EVENT_SELECT_OPTION_35(context, evt)
	-- 判断是gadgetid 8
	if 8 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_35(context, evt)
	
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_3 == evt.param2 then
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011005, suite = 2 }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end
