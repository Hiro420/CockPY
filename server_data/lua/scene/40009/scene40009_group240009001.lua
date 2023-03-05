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
	{ config_id = 1001, gadget_id = 70320002, pos = { x = -63.9, y = -8.0, z = 97.8 }, rot = { x = 0.0, y = 180.2, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1002, gadget_id = 70320002, pos = { x = -63.8, y = -8.0, z = 88.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1003, gadget_id = 70320002, pos = { x = -63.9, y = -8.1, z = 91.1 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1004, gadget_id = 70320002, pos = { x = -61.6, y = -7.9, z = 97.8 }, rot = { x = 0.0, y = 180.7, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1005, gadget_id = 70360020, pos = { x = -65.0, y = -1.2, z = 90.3 }, rot = { x = 0.0, y = 0.0, z = 268.0 }, level = 1 },
	{ config_id = 1007, gadget_id = 70360019, pos = { x = -65.1, y = -5.1, z = 90.3 }, rot = { x = 90.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 1008, gadget_id = 70220013, pos = { x = -57.9, y = -8.1, z = 99.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1009, gadget_id = 70220025, pos = { x = -57.9, y = -8.1, z = 100.2 }, rot = { x = 271.0, y = 180.0, z = 180.0 }, level = 1 },
	{ config_id = 1010, gadget_id = 70220013, pos = { x = -55.7, y = -8.1, z = 100.9 }, rot = { x = 0.0, y = 42.3, z = 0.0 }, level = 1 },
	{ config_id = 1011, gadget_id = 70220014, pos = { x = -58.4, y = -8.1, z = 101.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1012, gadget_id = 70220013, pos = { x = -46.4, y = -8.0, z = 83.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1013, gadget_id = 70220014, pos = { x = -46.0, y = -8.0, z = 85.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1014, gadget_id = 70220025, pos = { x = -46.4, y = -8.0, z = 84.0 }, rot = { x = 275.6, y = 139.4, z = 130.7 }, level = 1 },
	{ config_id = 1015, gadget_id = 70360016, pos = { x = -64.6, y = -3.0, z = 90.3 }, rot = { x = 0.0, y = 0.0, z = 278.8 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_1006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1006", action = "action_EVENT_GADGET_STATE_CHANGE_1006" }
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
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_1006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1006(context, evt)
	if 1007 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1006(context, evt)
	-- 将configid为 1002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1002, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 1003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 1004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1004, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 1001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
