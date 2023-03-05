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
	{ config_id = 2373, gadget_id = 70220009, pos = { x = 2135.4, y = 200.4, z = -1675.8 }, rot = { x = 0.0, y = 98.7, z = 0.0 }, level = 5 },
	{ config_id = 2374, gadget_id = 70220009, pos = { x = 2135.7, y = 200.3, z = -1676.3 }, rot = { x = 0.0, y = 217.1, z = 0.0 }, level = 5 },
	{ config_id = 2713, gadget_id = 70220010, pos = { x = 1693.8, y = 218.6, z = -1483.4 }, rot = { x = 0.0, y = 239.0, z = 0.0 }, level = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_214", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElementFlora", condition = "", action = "action_EVENT_CLIENT_EXECUTE_214", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 2373, 2374, 2713 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_214" },
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
function action_EVENT_CLIENT_EXECUTE_214(context, evt)
	-- 针对groupid为 133001172 中该config对应的物件进行状态改变操作
	local this_gadget = ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid })
		--ScriptLib.PrintLog("config_id="..this_gadget)
	
	 ScriptLib.SetGadgetEnableInteract(context, 133001172, this_gadget, true)
	
	return 0
end
