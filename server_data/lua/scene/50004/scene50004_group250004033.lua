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
	{ config_id = 347, gadget_id = 70900221, pos = { x = 254.7, y = -10.3, z = 272.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 348, gadget_id = 70900223, pos = { x = 254.7, y = -10.3, z = 284.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 349, gadget_id = 70900221, pos = { x = 259.3, y = -10.3, z = 275.3 }, rot = { x = 0.0, y = 315.0, z = 0.0 }, level = 1 },
	{ config_id = 350, gadget_id = 70900221, pos = { x = 249.7, y = -10.3, z = 275.5 }, rot = { x = 0.0, y = 45.0, z = 0.0 }, level = 1 },
	{ config_id = 351, gadget_id = 70900223, pos = { x = 258.0, y = -10.3, z = 283.8 }, rot = { x = 0.0, y = 45.0, z = 0.0 }, level = 1 },
	{ config_id = 352, gadget_id = 70900223, pos = { x = 251.4, y = -10.3, z = 283.6 }, rot = { x = 0.0, y = 315.0, z = 0.0 }, level = 1 },
	{ config_id = 353, gadget_id = 70350004, pos = { x = 255.1, y = -10.3, z = 288.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_68", event = EventType.EVENT_CLIENT_EXECUTE, source = "LaserSwitch_Hit", condition = "", action = "action_EVENT_CLIENT_EXECUTE_68", trigger_count = 0 }
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
		gadgets = { 347, 348, 349, 350, 351, 352, 353 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_68" },
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
function action_EVENT_CLIENT_EXECUTE_68(context, evt)
	-- 将configid为 353 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 353, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
