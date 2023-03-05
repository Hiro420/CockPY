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
	{ config_id = 306001, gadget_id = 70360045, pos = { x = 704.2, y = 391.4, z = 1905.7 }, rot = { x = 345.9, y = 204.0, z = 3.1 }, level = 24 },
	{ config_id = 306002, gadget_id = 70211001, pos = { x = 704.2, y = 392.0, z = 1906.0 }, rot = { x = 0.0, y = 37.0, z = 0.0 }, level = 24, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_306003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_306003", action = "action_EVENT_GADGET_STATE_CHANGE_306003" }
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
		gadgets = { 306001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_306003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_306003(context, evt)
	if 306001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_306003(context, evt)
	-- 创建id为306002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 306002 }) then
	  return -1
	end
	
	return 0
end
