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
	{ config_id = 14001, gadget_id = 70330001, pos = { x = 42.9, y = 9.9, z = -130.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 14002, gadget_id = 70330003, pos = { x = 65.7, y = 8.9, z = -122.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 14003, gadget_id = 70900314, pos = { x = 50.2, y = 11.4, z = -143.1 }, rot = { x = 270.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 14006, gadget_id = 70900314, pos = { x = 71.8, y = 0.9, z = -162.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 14007, gadget_id = 70330003, pos = { x = 55.3, y = 9.1, z = -138.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_14004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14004", action = "action_EVENT_GADGET_STATE_CHANGE_14004" },
	{ name = "GADGET_STATE_CHANGE_14005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14005", action = "action_EVENT_GADGET_STATE_CHANGE_14005" }
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
		gadgets = { 14001, 14002, 14003, 14006, 14007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_14004", "GADGET_STATE_CHANGE_14005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14004(context, evt)
	if 14001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14004(context, evt)
	-- 将configid为 14003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14003, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14005(context, evt)
	if 14001 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14005(context, evt)
	-- 将configid为 14006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14006, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
