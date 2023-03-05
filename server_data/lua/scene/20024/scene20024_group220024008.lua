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
	{ config_id = 83, gadget_id = 70350002, pos = { x = 191.4, y = 58.6, z = 347.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 84, gadget_id = 70350003, pos = { x = 176.4, y = 57.0, z = 328.5 }, rot = { x = 0.0, y = 270.7, z = 0.0 }, level = 1 },
	{ config_id = 88, gadget_id = 70350003, pos = { x = 207.1, y = 57.0, z = 328.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 89, gadget_id = 70360002, pos = { x = 188.0, y = 58.5, z = 344.6 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_37", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_37", action = "action_EVENT_GADGET_CREATE_37" },
	{ name = "SELECT_OPTION_38", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_38", action = "action_EVENT_SELECT_OPTION_38" }
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
	rand_suite = false,
	npcs = { }
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
		gadgets = { 83, 84, 88, 89 },
		regions = { },
		triggers = { "GADGET_CREATE_37", "SELECT_OPTION_38" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_37(context, evt)
	if 89 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_37(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220024008, 89, {1}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_38(context, evt)
	-- 判断是gadgetid 89 option_id 1
	if 89 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_38(context, evt)
	-- 将configid为 83 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 83, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
