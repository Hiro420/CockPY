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
	{ config_id = 191, gadget_id = 70900208, pos = { x = 786.9, y = 5.8, z = 380.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 194, gadget_id = 70900208, pos = { x = 793.0, y = 5.8, z = 380.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 195, gadget_id = 70900208, pos = { x = 799.3, y = 5.8, z = 380.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 196, gadget_id = 70900208, pos = { x = 805.3, y = 5.8, z = 380.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 197, gadget_id = 70900208, pos = { x = 810.9, y = 5.8, z = 379.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 208, gadget_id = 70900206, pos = { x = 826.9, y = 5.9, z = 363.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 209, gadget_id = 70900207, pos = { x = 826.8, y = 7.6, z = 362.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 210, gadget_id = 70380003, pos = { x = 802.8, y = 3.9, z = 363.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 20000018, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_80", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricPile", condition = "condition_EVENT_CLIENT_EXECUTE_80", action = "action_EVENT_CLIENT_EXECUTE_80", trigger_count = 0 }
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
		gadgets = { 191, 194, 195, 196, 197, 208, 209, 210 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_80" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_80(context, evt)
	if 209 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_80(context, evt)
	-- 将configid为 208 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 208, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end
