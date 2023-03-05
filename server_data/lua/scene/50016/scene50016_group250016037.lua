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
	{ config_id = 37001, gadget_id = 70900055, pos = { x = -670.1, y = 16.0, z = 730.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 37002, gadget_id = 70900206, pos = { x = -674.2, y = 16.0, z = 735.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.Action02 },
	{ config_id = 37003, gadget_id = 70360022, pos = { x = -574.7, y = 20.9, z = 695.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 37004, gadget_id = 70360022, pos = { x = -583.5, y = 18.6, z = 694.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 37005, gadget_id = 70360022, pos = { x = -578.0, y = 18.6, z = 695.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 37006, gadget_id = 70360022, pos = { x = -580.9, y = 19.7, z = 695.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 37007, gadget_id = 70360022, pos = { x = -573.7, y = 18.6, z = 695.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 37008, gadget_id = 70360022, pos = { x = -575.7, y = 19.7, z = 695.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 37009, gadget_id = 70360022, pos = { x = -577.5, y = 21.4, z = 695.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 37010, gadget_id = 70360022, pos = { x = -577.5, y = 23.4, z = 695.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_37011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37011", action = "action_EVENT_GADGET_STATE_CHANGE_37011" }
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
		gadgets = { 37001, 37002, 37003, 37004, 37005, 37006, 37007, 37008, 37009, 37010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_37011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_37011(context, evt)
	if 37001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_37011(context, evt)
	-- 将configid为 37003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37003, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 37004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37004, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 37005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37005, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 37006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37006, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 37007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37007, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 37008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37008, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 37009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37009, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 37010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37010, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
