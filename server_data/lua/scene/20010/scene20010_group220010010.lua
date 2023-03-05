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
	{ config_id = 76, gadget_id = 70360002, pos = { x = 446.1, y = -31.7, z = 14.7 }, rot = { x = 0.0, y = 272.0, z = 0.0 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 87, gadget_id = 70380001, pos = { x = 466.9, y = -32.6, z = 14.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 20010010, start_route = false },
	{ config_id = 88, gadget_id = 70360002, pos = { x = 462.8, y = -31.7, z = 12.2 }, rot = { x = 0.0, y = 272.0, z = 0.0 }, level = 1, state = GadgetState.GearStop }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "SELECT_OPTION_25", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_25", action = "action_EVENT_SELECT_OPTION_25", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_26", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_26", action = "action_EVENT_SELECT_OPTION_26", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_46", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_46", action = "action_EVENT_SELECT_OPTION_46", trigger_count = 0, forbid_guest = false }
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
		monsters = { },
		gadgets = { 76, 87, 88 },
		regions = { },
		triggers = { "SELECT_OPTION_25", "SELECT_OPTION_26", "SELECT_OPTION_46" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_25(context, evt)
	-- 判断是gadgetid 76 option_id 7
	if 76 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_25(context, evt)
	-- 删除指定group： 220010010 ；指定config：76；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220010010, 76, 7) then
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220010011, suite = 2 }) then
			return -1
		end
	
	-- 将configid为 76 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 76, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_26(context, evt)
	-- 判断是gadgetid 76 option_id 12
	if 76 ~= evt.param1 then
		return false	
	end
	
	if 12 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_26(context, evt)
	-- 删除指定group： 220010010 ；指定config：76；物件身上指定option：12；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220010010, 76, 12) then
		return -1
	end
	
	-- 将configid为 76 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 76, GadgetState.GearStop) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220010008, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_46(context, evt)
	-- 判断是gadgetid 88 option_id 7
	if 88 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_46(context, evt)
	-- 删除指定group： 220010010 ；指定config：88；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220010010, 88, 7) then
		return -1
	end
	
	-- 将configid为 88 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 88, GadgetState.Default) then
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 87) then
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220010008, monsters = {}, gadgets = {192} }) then
			return -1
		end
	
	return 0
end
