--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 829, monster_id = 20010501, pos = { x = 2454.2, y = 308.1, z = -1665.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "史莱姆" },
	{ config_id = 830, monster_id = 20010501, pos = { x = 2452.3, y = 308.4, z = -1669.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "史莱姆" },
	{ config_id = 831, monster_id = 21010101, pos = { x = 2209.0, y = 234.8, z = -1301.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 9, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 832, monster_id = 21010101, pos = { x = 2207.3, y = 234.9, z = -1301.0 }, rot = { x = 0.0, y = 24.2, z = 0.0 }, level = 9, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2959, gadget_id = 70290006, pos = { x = 2151.0, y = 235.0, z = -1653.7 }, rot = { x = 0.0, y = 36.1, z = 0.0 }, level = 5 },
	{ config_id = 2960, gadget_id = 70290006, pos = { x = 2150.0, y = 235.0, z = -1654.4 }, rot = { x = 0.0, y = 90.7, z = 0.0 }, level = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_169", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElementFlora", condition = "", action = "action_EVENT_CLIENT_EXECUTE_169", trigger_count = 0 }
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
	rand_suite = true
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
		monsters = { 829, 830, 831, 832 },
		gadgets = { 2959, 2960 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_169" },
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
function action_EVENT_CLIENT_EXECUTE_169(context, evt)
	-- 针对groupid为 133003209 中该config对应的物件进行状态改变操作
	local this_gadget = ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid })
		--ScriptLib.PrintLog("config_id="..this_gadget)
	
	 ScriptLib.SetGadgetEnableInteract(context, 133003209, this_gadget, true)
	
	return 0
end
