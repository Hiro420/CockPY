--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 93, monster_id = 21010601, pos = { x = 255.1, y = 5.6, z = 283.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 169, gadget_id = 70900221, pos = { x = 415.5, y = 5.6, z = 282.6 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 170, gadget_id = 70900223, pos = { x = 422.9, y = 5.6, z = 282.8 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 182, gadget_id = 70350004, pos = { x = 415.7, y = 5.7, z = 270.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 183, gadget_id = 70350004, pos = { x = 431.7, y = 5.6, z = 277.6 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 211, gadget_id = 70220007, pos = { x = 419.0, y = 5.6, z = 281.8 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_78", event = EventType.EVENT_CLIENT_EXECUTE, source = "LaserSwitch_Hit", condition = "", action = "action_EVENT_CLIENT_EXECUTE_78" }
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
		monsters = { 93 },
		gadgets = { 169, 170, 182, 183, 211 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_78" },
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
function action_EVENT_CLIENT_EXECUTE_78(context, evt)
	-- 将configid为 182 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 182, GadgetState.GearStop) then
			return -1
		end 
	
	-- 将configid为 183 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 183, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
