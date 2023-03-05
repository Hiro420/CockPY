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
	{ config_id = 670, gadget_id = 70300106, pos = { x = 360.8, y = 204.4, z = 583.8 }, rot = { x = 0.0, y = 4.6, z = 0.0 }, level = 19 },
	{ config_id = 671, gadget_id = 70300106, pos = { x = 363.7, y = 204.0, z = 585.5 }, rot = { x = 0.0, y = 44.4, z = 0.0 }, level = 19 },
	{ config_id = 672, gadget_id = 70300106, pos = { x = 362.8, y = 204.6, z = 581.0 }, rot = { x = 0.0, y = 336.1, z = 0.0 }, level = 19 },
	{ config_id = 673, gadget_id = 70211111, pos = { x = 362.7, y = 204.5, z = 583.4 }, rot = { x = 3.2, y = 54.7, z = 7.6 }, level = 19, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_321", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_321", action = "action_EVENT_ANY_GADGET_DIE_321" },
	{ name = "ANY_GADGET_DIE_322", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_322", action = "action_EVENT_ANY_GADGET_DIE_322" },
	{ name = "ANY_GADGET_DIE_323", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_323", action = "action_EVENT_ANY_GADGET_DIE_323" },
	{ name = "VARIABLE_CHANGE_324", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_324", action = "action_EVENT_VARIABLE_CHANGE_324" }
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
		gadgets = { 670, 671, 672 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_321", "ANY_GADGET_DIE_322", "ANY_GADGET_DIE_323", "VARIABLE_CHANGE_324" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_321(context, evt)
	if 672 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_321(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_322(context, evt)
	if 670 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_322(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_323(context, evt)
	if 671 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_323(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_324(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_324(context, evt)
	-- 创建id为673的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 673 }) then
	  return -1
	end
	
	return 0
end
