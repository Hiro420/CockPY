--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 48, monster_id = 20010801, pos = { x = 196.9, y = 42.0, z = 127.7 }, rot = { x = 0.0, y = 242.5, z = 0.0 }, level = 1 },
	{ config_id = 49, monster_id = 20010801, pos = { x = 196.6, y = 42.0, z = 113.0 }, rot = { x = 0.0, y = 310.9, z = 0.0 }, level = 1 },
	{ config_id = 50, monster_id = 20010801, pos = { x = 184.9, y = 42.0, z = 113.4 }, rot = { x = 0.0, y = 26.0, z = 0.0 }, level = 1 },
	{ config_id = 51, monster_id = 20010801, pos = { x = 182.8, y = 42.0, z = 128.3 }, rot = { x = 0.0, y = 135.2, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_30", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_30", action = "action_EVENT_ANY_MONSTER_DIE_30", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_31", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31", action = "action_EVENT_ANY_MONSTER_DIE_31", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_32", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32", action = "action_EVENT_ANY_MONSTER_DIE_32", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_33", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_33", action = "action_EVENT_ANY_MONSTER_DIE_33", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_10001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10001", action = "action_EVENT_ANY_MONSTER_DIE_10001" }
}

-- 变量
variables = {
	{ name = "iskill", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 48, 49, 50, 51 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_30", "ANY_MONSTER_DIE_31", "ANY_MONSTER_DIE_32", "ANY_MONSTER_DIE_33", "ANY_MONSTER_DIE_10001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_30(context, evt)
	if 48 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"iskill"为0
	if ScriptLib.GetGroupVariableValue(context, "iskill") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_30(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 48, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_31(context, evt)
	if 49 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"iskill"为0
	if ScriptLib.GetGroupVariableValue(context, "iskill") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_32(context, evt)
	if 50 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"iskill"为0
	if ScriptLib.GetGroupVariableValue(context, "iskill") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_32(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 50, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_33(context, evt)
	if 51 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"iskill"为0
	if ScriptLib.GetGroupVariableValue(context, "iskill") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_33(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 51, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10001(context, evt)
	-- 判断变量"iskill"为1
	if ScriptLib.GetGroupVariableValue(context, "iskill") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220022010, suite = 1 }) then
			return -1
		end
	
	return 0
end
