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
	{ config_id = 367001, gadget_id = 70360007, pos = { x = 1409.8, y = 210.4, z = 467.7 }, rot = { x = 0.0, y = 226.6, z = 0.0 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 367002, gadget_id = 70211112, pos = { x = 1412.6, y = 213.9, z = 468.7 }, rot = { x = 0.0, y = 253.9, z = 0.0 }, level = 1, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 367007, gadget_id = 70220019, pos = { x = 1412.5, y = 207.4, z = 468.7 }, rot = { x = 0.0, y = 344.6, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_367003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_367003", action = "action_EVENT_GADGET_STATE_CHANGE_367003", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_367004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_367004", action = "action_EVENT_GADGET_STATE_CHANGE_367004", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_367005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_367005", action = "action_EVENT_GADGET_STATE_CHANGE_367005" }
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
		gadgets = { 367001, 367002, 367007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_367003", "GADGET_STATE_CHANGE_367004", "GADGET_STATE_CHANGE_367005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_367003(context, evt)
	if 367001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_367003(context, evt)
	-- 解锁目标367002
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 367002, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_367004(context, evt)
	if 367001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_367004(context, evt)
	-- 将configid为 367002 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 367002, GadgetState.ChestLocked) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_367005(context, evt)
	if 367002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_367005(context, evt)
	-- 将configid为 367001 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 367001, GadgetState.GearAction2) then
			return -1
		end 
	
	return 0
end
