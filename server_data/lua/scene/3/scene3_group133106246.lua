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
	{ config_id = 246001, gadget_id = 70360046, pos = { x = -171.7, y = 156.6, z = 946.0 }, rot = { x = 0.0, y = 94.9, z = 0.0 }, level = 32, persistent = true },
	{ config_id = 246002, gadget_id = 70800025, pos = { x = -171.9, y = 158.7, z = 945.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, persistent = true },
	{ config_id = 246005, gadget_id = 70217002, pos = { x = -171.9, y = 157.0, z = 945.8 }, rot = { x = 0.0, y = 180.4, z = 0.0 }, level = 32, chest_drop_id = 1011400, drop_count = 1, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 246006, gadget_id = 70690006, pos = { x = -171.9, y = 157.0, z = 945.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, persistent = true },
	{ config_id = 246007, gadget_id = 70690006, pos = { x = -171.9, y = 174.2, z = 945.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, persistent = true },
	{ config_id = 246008, gadget_id = 70211131, pos = { x = -172.6, y = 157.1, z = 946.3 }, rot = { x = 0.0, y = 134.5, z = 0.0 }, level = 32, drop_tag = "解谜超级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "VARIABLE_CHANGE_246003", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_246003", action = "action_EVENT_VARIABLE_CHANGE_246003" },
	{ name = "GADGET_STATE_CHANGE_246004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_246004", action = "action_EVENT_GADGET_STATE_CHANGE_246004" }
}

-- 变量
variables = {
	{ name = "count", value = 0, no_refresh = true }
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
		gadgets = { 246001, 246002, 246005, 246008 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_246003", "GADGET_STATE_CHANGE_246004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_246003(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_246003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 246002 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_246004(context, evt)
	if 246005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_246004(context, evt)
	-- 创建id为246006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 246006 }) then
	  return -1
	end
	
	-- 创建id为246007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 246007 }) then
	  return -1
	end
	
	return 0
end
