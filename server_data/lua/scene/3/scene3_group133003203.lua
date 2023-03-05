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
	{ config_id = 2953, gadget_id = 70290007, pos = { x = 2454.6, y = 308.6, z = -1669.4 }, rot = { x = 356.5, y = 98.5, z = 7.8 }, level = 10 },
	{ config_id = 2954, gadget_id = 70290007, pos = { x = 2454.5, y = 308.4, z = -1668.3 }, rot = { x = 353.5, y = 195.0, z = 348.8 }, level = 10 },
	{ config_id = 3102, gadget_id = 70290005, pos = { x = 2209.9, y = 236.0, z = -1402.6 }, rot = { x = 0.0, y = 148.5, z = 0.0 }, level = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_170", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElementFlora", condition = "", action = "action_EVENT_CLIENT_EXECUTE_170", trigger_count = 0 }
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
		gadgets = { 2953, 2954, 3102 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_170" },
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
function action_EVENT_CLIENT_EXECUTE_170(context, evt)
	-- 针对groupid为 133003203 中该config对应的物件进行状态改变操作
	local this_gadget = ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid })
		--ScriptLib.PrintLog("config_id="..this_gadget)
	
	 ScriptLib.SetGadgetEnableInteract(context, 133003203, this_gadget, true)
	return 0
end
