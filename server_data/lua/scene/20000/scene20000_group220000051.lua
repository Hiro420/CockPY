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
	{ config_id = 253, gadget_id = 70900207, pos = { x = 100.3, y = 0.5, z = 275.7 }, rot = { x = 0.0, y = 141.3, z = 0.0 }, level = 1 },
	{ config_id = 254, gadget_id = 70900208, pos = { x = 99.1, y = 0.5, z = 273.5 }, rot = { x = 0.0, y = 81.9, z = 0.0 }, level = 1 },
	{ config_id = 255, gadget_id = 70900208, pos = { x = 97.2, y = 0.5, z = 271.7 }, rot = { x = 0.0, y = 81.9, z = 0.0 }, level = 1 },
	{ config_id = 256, gadget_id = 70900208, pos = { x = 95.0, y = 0.5, z = 269.9 }, rot = { x = 0.0, y = 45.5, z = 0.0 }, level = 1 },
	{ config_id = 257, gadget_id = 70900208, pos = { x = 94.0, y = 0.5, z = 266.8 }, rot = { x = 0.0, y = 110.9, z = 0.0 }, level = 1 },
	{ config_id = 258, gadget_id = 70900208, pos = { x = 93.5, y = 0.5, z = 263.2 }, rot = { x = 0.0, y = 278.3, z = 0.0 }, level = 1 },
	{ config_id = 259, gadget_id = 70900208, pos = { x = 95.4, y = 0.5, z = 261.5 }, rot = { x = 0.0, y = 51.2, z = 0.0 }, level = 1 },
	{ config_id = 260, gadget_id = 70900208, pos = { x = 77.6, y = 0.5, z = 285.8 }, rot = { x = 0.0, y = 81.9, z = 0.0 }, level = 1 },
	{ config_id = 261, gadget_id = 70900208, pos = { x = 75.7, y = 0.5, z = 283.9 }, rot = { x = 0.0, y = 81.9, z = 0.0 }, level = 1 },
	{ config_id = 262, gadget_id = 70900208, pos = { x = 73.5, y = 0.5, z = 282.2 }, rot = { x = 0.0, y = 45.5, z = 0.0 }, level = 1 },
	{ config_id = 263, gadget_id = 70900208, pos = { x = 72.5, y = 0.5, z = 279.1 }, rot = { x = 0.0, y = 110.9, z = 0.0 }, level = 1 },
	{ config_id = 264, gadget_id = 70900208, pos = { x = 72.0, y = 0.5, z = 275.5 }, rot = { x = 0.0, y = 278.3, z = 0.0 }, level = 1 },
	{ config_id = 265, gadget_id = 70900208, pos = { x = 73.9, y = 0.5, z = 273.7 }, rot = { x = 0.0, y = 51.2, z = 0.0 }, level = 1 },
	{ config_id = 266, gadget_id = 70900224, pos = { x = 74.9, y = 0.5, z = 270.9 }, rot = { x = 0.0, y = 269.6, z = 0.0 }, level = 1 },
	{ config_id = 267, gadget_id = 70350004, pos = { x = 69.5, y = 0.8, z = 270.4 }, rot = { x = 0.0, y = 360.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_83", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "", action = "action_EVENT_CLIENT_EXECUTE_83" }
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
		gadgets = { 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_83" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_83(context, evt)
	-- 将configid为 267 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 267, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
