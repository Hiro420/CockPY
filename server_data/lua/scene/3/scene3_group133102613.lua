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
	{ config_id = 613001, gadget_id = 70220008, pos = { x = 1571.6, y = 259.8, z = -14.1 }, rot = { x = 359.7, y = 0.0, z = 355.8 }, level = 16, isOneoff = true, persistent = true },
	{ config_id = 613002, gadget_id = 70220008, pos = { x = 1566.2, y = 260.2, z = -8.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, isOneoff = true, persistent = true },
	{ config_id = 613003, gadget_id = 70220008, pos = { x = 1563.1, y = 260.5, z = -18.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, isOneoff = true, persistent = true },
	{ config_id = 613004, gadget_id = 70211111, pos = { x = 1567.0, y = 259.7, z = -13.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_613005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_613005", action = "action_EVENT_ANY_GADGET_DIE_613005" },
	{ name = "ANY_GADGET_DIE_613006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_613006", action = "action_EVENT_ANY_GADGET_DIE_613006" },
	{ name = "ANY_GADGET_DIE_613007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_613007", action = "action_EVENT_ANY_GADGET_DIE_613007" },
	{ name = "VARIABLE_CHANGE_613008", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_613008", action = "action_EVENT_VARIABLE_CHANGE_613008" }
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
		gadgets = { 613001, 613002, 613003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_613005", "ANY_GADGET_DIE_613006", "ANY_GADGET_DIE_613007", "VARIABLE_CHANGE_613008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_613005(context, evt)
	if 613003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_613005(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_613006(context, evt)
	if 613002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_613006(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_613007(context, evt)
	if 613001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_613007(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_613008(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_613008(context, evt)
	-- 创建id为613004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 613004 }) then
	  return -1
	end
	
	return 0
end
