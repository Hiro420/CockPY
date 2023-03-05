--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 303001, monster_id = 28020301, pos = { x = 764.8, y = 319.0, z = 1791.1 }, rot = { x = 0.0, y = 333.5, z = 0.0 }, level = 24, drop_tag = "走兽" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 303002, gadget_id = 70360045, pos = { x = 765.3, y = 318.6, z = 1791.7 }, rot = { x = 339.0, y = 105.5, z = 338.1 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_303003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_303003", action = "action_EVENT_GADGET_STATE_CHANGE_303003" }
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
	rand_suite = false
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
		gadgets = { 303002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_303003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_303003(context, evt)
	if 303002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_303003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 303001, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
