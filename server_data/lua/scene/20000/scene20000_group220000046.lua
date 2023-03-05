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
	{ config_id = 171, gadget_id = 70900223, pos = { x = 457.6, y = 5.6, z = 316.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 172, gadget_id = 70900221, pos = { x = 457.6, y = 5.6, z = 311.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 184, gadget_id = 70350004, pos = { x = 468.5, y = 5.7, z = 309.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 185, gadget_id = 70350004, pos = { x = 462.1, y = 5.7, z = 324.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_79", event = EventType.EVENT_CLIENT_EXECUTE, source = "LaserSwitch_Un_Hit", condition = "", action = "action_EVENT_CLIENT_EXECUTE_79" }
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
		gadgets = { 171, 172, 184, 185 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_79" },
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
function action_EVENT_CLIENT_EXECUTE_79(context, evt)
	-- 将configid为 185 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 185, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 184 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end
