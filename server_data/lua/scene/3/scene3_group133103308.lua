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
	{ config_id = 308001, gadget_id = 70360045, pos = { x = 701.5, y = 417.5, z = 1818.4 }, rot = { x = 0.0, y = 154.4, z = 0.0 }, level = 24 },
	{ config_id = 308002, gadget_id = 70211001, pos = { x = 701.3, y = 418.4, z = 1818.5 }, rot = { x = 0.0, y = 322.7, z = 0.0 }, level = 24, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_308003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_308003", action = "action_EVENT_GADGET_STATE_CHANGE_308003" }
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
		gadgets = { 308001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_308003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_308003(context, evt)
	if 308001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_308003(context, evt)
	-- 创建id为308002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 308002 }) then
	  return -1
	end
	
	return 0
end
