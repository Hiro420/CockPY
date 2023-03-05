-- Trigger变量
local defs = {
	gadget_id_1 = 43,
	gadget_id_2 = 20,
	gadget_id_3 = 21,
	gadget_id_4 = 6
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
	{ config_id = 6, gadget_id = 70350003, pos = { x = 343.1, y = -28.0, z = 404.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 7, gadget_id = 70350003, pos = { x = 333.2, y = -27.9, z = 404.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 8, gadget_id = 70350003, pos = { x = 353.2, y = -28.0, z = 404.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 20, gadget_id = 70320002, pos = { x = 338.3, y = -29.1, z = 435.6 }, rot = { x = 0.0, y = 174.6, z = 0.0 }, level = 1 },
	{ config_id = 21, gadget_id = 70320002, pos = { x = 348.5, y = -29.0, z = 425.4 }, rot = { x = 0.0, y = 358.1, z = 0.0 }, level = 1 },
	{ config_id = 43, gadget_id = 70360002, pos = { x = 343.3, y = -29.0, z = 430.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_14", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_14", action = "action_EVENT_GADGET_CREATE_14" },
	{ name = "SELECT_OPTION_15", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15", action = "action_EVENT_SELECT_OPTION_15", trigger_count = 0, forbid_guest = false }
}

-- 变量
variables = {
	{ name = "SEAL_RESULT", value = 0, no_refresh = false }
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
		monsters = { },
		gadgets = { 6, 7, 8, 20, 21, 43 },
		regions = { },
		triggers = { "GADGET_CREATE_14", "SELECT_OPTION_15" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_14(context, evt)
	if 43 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_14(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15(context, evt)
	-- 判断是gadgetid 43 option_id 7
	if 43 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220016007, suite = 1 }) then
			return -1
		end
	
	-- 删除指定group： 220016002 ；指定config：43；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220016002, 43, 7) then
		return -1
	end
	
	-- 将configid为 43 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 43, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 20 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 20, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 21 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
