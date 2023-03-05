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
	{ config_id = 144, gadget_id = 70900221, pos = { x = 105.2, y = 0.5, z = 35.1 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 145, gadget_id = 70900223, pos = { x = 111.2, y = 0.5, z = 35.3 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 146, gadget_id = 71000004, pos = { x = 114.0, y = 0.5, z = 32.4 }, rot = { x = 0.0, y = 301.5, z = 0.0 }, level = 1 },
	{ config_id = 147, gadget_id = 70220007, pos = { x = 108.3, y = 0.5, z = 34.7 }, rot = { x = 0.0, y = 92.1, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_77", event = EventType.EVENT_CLIENT_EXECUTE, source = "LaserSwitch_Hit", condition = "", action = "action_EVENT_CLIENT_EXECUTE_77" }
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
		gadgets = { 144, 145, 147 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_77" },
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
function action_EVENT_CLIENT_EXECUTE_77(context, evt)
	-- 创建id为146的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 146 }) then
	  return -1
	end
	
	-- 将configid为 144 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end
