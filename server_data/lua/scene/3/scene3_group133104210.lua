--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 210006, monster_id = 24010101, pos = { x = 287.1, y = 215.5, z = 209.4 }, rot = { x = 0.0, y = 82.5, z = 0.0 }, level = 19, drop_tag = "遗迹守卫", pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 210002, gadget_id = 70350006, pos = { x = 284.9, y = 217.7, z = 209.2 }, rot = { x = 0.0, y = 81.9, z = 180.0 }, level = 19, persistent = true },
	{ config_id = 210004, gadget_id = 70220024, pos = { x = 290.3, y = 216.2, z = 210.2 }, rot = { x = 45.6, y = 265.0, z = 4.3 }, level = 19, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_210003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_210003", action = "action_EVENT_ANY_MONSTER_DIE_210003" },
	{ name = "ANY_GADGET_DIE_210005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_210005", action = "action_EVENT_ANY_GADGET_DIE_210005", trigger_count = 0 },
	{ name = "GADGET_CREATE_210007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_210007", action = "action_EVENT_GADGET_CREATE_210007", trigger_count = 0 },
	{ name = "VARIABLE_CHANGE_210009", event = EventType.EVENT_VARIABLE_CHANGE, source = "isActive", condition = "condition_EVENT_VARIABLE_CHANGE_210009", action = "action_EVENT_VARIABLE_CHANGE_210009", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "isActive", value = 0, no_refresh = true },
	{ name = "isFinished", value = 0, no_refresh = true }
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
		gadgets = { 210002, 210004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_210003", "ANY_GADGET_DIE_210005", "GADGET_CREATE_210007", "VARIABLE_CHANGE_210009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 210006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_210003(context, evt)
	if 210006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_210003(context, evt)
	-- 将configid为 210002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 210002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinished", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_210005(context, evt)
	if 210004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_210005(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_210007(context, evt)
	if 210002 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_210007(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "isFinished") == 1 then
	ScriptLib.RemoveExtraGroupSuite(context, 133104210, 3)
	ScriptLib.SetGadgetStateByConfigId(context, 210002, GadgetState.GearStart)
	
	else
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104210, 3)
	
	end
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_210009(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_210009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104210, 3)
	
	return 0
end
