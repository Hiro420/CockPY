-- Trigger变量
local defs = {
	gadget_id_1 = 360
}


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
	{ config_id = 360, gadget_id = 70900208, pos = { x = -728.1, y = -11.0, z = -86.8 }, rot = { x = 0.0, y = 12.9, z = 0.0 }, level = 1 },
	{ config_id = 361, gadget_id = 70380003, pos = { x = -724.9, y = -12.5, z = -88.6 }, rot = { x = 0.0, y = 90.3, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_70", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_70", action = "action_EVENT_CLIENT_EXECUTE_70", trigger_count = 0 }
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
		gadgets = { 360, 361 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_70" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_70(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_1 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
	
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_70(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 361) then
	  return -1
	end
	
	return 0
end
