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
	{ config_id = 3445, gadget_id = 70310004, pos = { x = 2515.6, y = 267.3, z = -1435.3 }, rot = { x = 0.0, y = 55.6, z = 353.4 }, level = 2 },
	{ config_id = 3446, gadget_id = 70211111, pos = { x = 2514.9, y = 267.7, z = -1430.4 }, rot = { x = 0.0, y = 168.2, z = 0.0 }, level = 2, drop_tag = "解谜中级蒙德", isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_501", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_501" }
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
		gadgets = { 3445 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_501" },
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
function action_EVENT_GADGET_STATE_CHANGE_501(context, evt)
	-- 创建id为3446的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3446 }) then
	  return -1
	end
	
	return 0
end
