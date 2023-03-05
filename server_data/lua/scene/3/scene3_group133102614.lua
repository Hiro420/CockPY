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
	{ config_id = 614001, gadget_id = 70350004, pos = { x = 1989.9, y = 236.4, z = 812.3 }, rot = { x = 0.0, y = 323.4, z = 0.0 }, level = 18, persistent = true },
	{ config_id = 614002, gadget_id = 70900016, pos = { x = 1973.8, y = 197.0, z = 829.0 }, rot = { x = 0.0, y = 7.2, z = 0.0 }, level = 18 },
	{ config_id = 614003, gadget_id = 70310001, pos = { x = 1952.2, y = 205.7, z = 870.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 614004, gadget_id = 70310001, pos = { x = 1966.1, y = 205.9, z = 879.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 614005, gadget_id = 70310001, pos = { x = 1960.3, y = 206.1, z = 879.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 614006, gadget_id = 70310001, pos = { x = 1959.7, y = 205.9, z = 884.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 614007, gadget_id = 70220014, pos = { x = 1964.3, y = 205.9, z = 877.5 }, rot = { x = 0.0, y = 46.8, z = 0.0 }, level = 18 },
	{ config_id = 614008, gadget_id = 70220014, pos = { x = 1964.9, y = 205.8, z = 878.4 }, rot = { x = 0.0, y = 46.8, z = 0.0 }, level = 18 },
	{ config_id = 614009, gadget_id = 70220014, pos = { x = 1961.3, y = 205.8, z = 885.0 }, rot = { x = 359.4, y = 46.8, z = 359.3 }, level = 18 },
	{ config_id = 614010, gadget_id = 70220014, pos = { x = 1962.5, y = 205.6, z = 885.1 }, rot = { x = 0.0, y = 46.8, z = 0.0 }, level = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "VARIABLE_CHANGE_614011", event = EventType.EVENT_VARIABLE_CHANGE, source = "door", condition = "condition_EVENT_VARIABLE_CHANGE_614011", action = "action_EVENT_VARIABLE_CHANGE_614011" }
}

-- 变量
variables = {
	{ name = "door", value = 0, no_refresh = true }
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
		gadgets = { 614001, 614002, 614003, 614004, 614005, 614006, 614007, 614008, 614009, 614010 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_614011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_614011(context, evt)
	-- 判断变量"door"为2
	if ScriptLib.GetGroupVariableValue(context, "door") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_614011(context, evt)
	-- 将configid为 614001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 614001, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
