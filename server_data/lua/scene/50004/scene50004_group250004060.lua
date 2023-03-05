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
	{ config_id = 591, gadget_id = 70350004, pos = { x = -603.4, y = -11.2, z = -508.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 592, gadget_id = 70900249, pos = { x = -600.0, y = -11.0, z = -524.5 }, rot = { x = 0.0, y = 9.5, z = 0.0 }, level = 1 },
	{ config_id = 593, gadget_id = 70900249, pos = { x = -600.0, y = -11.0, z = -521.8 }, rot = { x = 0.0, y = 9.5, z = 0.0 }, level = 1 },
	{ config_id = 594, gadget_id = 70900249, pos = { x = -600.0, y = -11.0, z = -519.2 }, rot = { x = 0.0, y = 9.5, z = 0.0 }, level = 1 },
	{ config_id = 595, gadget_id = 70900249, pos = { x = -600.0, y = -11.0, z = -516.5 }, rot = { x = 0.0, y = 9.5, z = 0.0 }, level = 1 },
	{ config_id = 596, gadget_id = 70900249, pos = { x = -600.0, y = -11.0, z = -513.7 }, rot = { x = 0.0, y = 9.5, z = 0.0 }, level = 1 },
	{ config_id = 597, gadget_id = 70900249, pos = { x = -599.8, y = -11.0, z = -510.8 }, rot = { x = 0.0, y = 9.5, z = 0.0 }, level = 1 },
	{ config_id = 598, gadget_id = 70900224, pos = { x = -599.8, y = -7.5, z = -509.4 }, rot = { x = 270.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_106", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_106", action = "action_EVENT_CLIENT_EXECUTE_106", trigger_count = 0 }
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
	rand_suite = true,
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
		gadgets = { 591, 592, 593, 594, 595, 596, 597, 598 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_106" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_106(context, evt)
	if 598 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_106(context, evt)
	-- 将configid为 591 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 591, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
