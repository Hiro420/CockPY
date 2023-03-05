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
	{ config_id = 458, gadget_id = 70350004, pos = { x = 1247.8, y = 200.1, z = 234.1 }, rot = { x = 0.0, y = 318.5, z = 0.0 }, level = 1 },
	{ config_id = 459, gadget_id = 70900221, pos = { x = 1244.0, y = 200.0, z = 232.4 }, rot = { x = 0.0, y = 48.4, z = 0.0 }, level = 1 },
	{ config_id = 460, gadget_id = 70900223, pos = { x = 1250.1, y = 200.0, z = 237.9 }, rot = { x = 0.0, y = 49.1, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_90", event = EventType.EVENT_CLIENT_EXECUTE, source = "LaserSwitch_UnHit", condition = "condition_EVENT_CLIENT_EXECUTE_90", action = "action_EVENT_CLIENT_EXECUTE_90" }
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
		gadgets = { 458, 459, 460 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_90" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_90(context, evt)
	if 459 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_90(context, evt)
	-- 将configid为 458 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 458, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
