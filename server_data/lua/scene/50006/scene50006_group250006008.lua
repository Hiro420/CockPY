--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 20011001, pos = { x = 360.2, y = -11.4, z = 253.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 8002, monster_id = 20011001, pos = { x = 360.9, y = -11.4, z = 256.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 8003, monster_id = 20011001, pos = { x = 326.2, y = -11.4, z = 254.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 8004, monster_id = 20011001, pos = { x = 326.0, y = -11.4, z = 255.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8005, gadget_id = 70220003, pos = { x = 359.9, y = -11.4, z = 258.9 }, rot = { x = 0.0, y = 2.5, z = 0.0 }, level = 1 },
	{ config_id = 8006, gadget_id = 70220003, pos = { x = 358.3, y = -11.4, z = 256.2 }, rot = { x = 0.0, y = 266.5, z = 0.0 }, level = 1 },
	{ config_id = 8007, gadget_id = 70220003, pos = { x = 358.2, y = -11.3, z = 251.8 }, rot = { x = 0.0, y = 266.5, z = 0.0 }, level = 1 },
	{ config_id = 8008, gadget_id = 70220003, pos = { x = 357.9, y = -11.3, z = 247.7 }, rot = { x = 0.0, y = 266.5, z = 0.0 }, level = 1 },
	{ config_id = 8009, gadget_id = 70220003, pos = { x = 354.1, y = -11.4, z = 245.2 }, rot = { x = 0.0, y = 185.0, z = 0.0 }, level = 1 },
	{ config_id = 8010, gadget_id = 70220003, pos = { x = 332.5, y = -11.3, z = 245.2 }, rot = { x = 0.0, y = 185.0, z = 0.0 }, level = 1 },
	{ config_id = 8011, gadget_id = 70220003, pos = { x = 328.5, y = -11.4, z = 249.5 }, rot = { x = 0.0, y = 274.1, z = 0.0 }, level = 1 },
	{ config_id = 8012, gadget_id = 70220003, pos = { x = 328.5, y = -11.3, z = 253.4 }, rot = { x = 0.0, y = 272.0, z = 0.0 }, level = 1 },
	{ config_id = 8013, gadget_id = 70220003, pos = { x = 328.5, y = -11.3, z = 257.4 }, rot = { x = 0.0, y = 270.5, z = 0.0 }, level = 1 },
	{ config_id = 8014, gadget_id = 70220003, pos = { x = 326.6, y = -11.4, z = 258.5 }, rot = { x = 0.0, y = 180.8, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_17", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17", action = "action_EVENT_ANY_MONSTER_DIE_17", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_18", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_18", action = "action_EVENT_ANY_MONSTER_DIE_18", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_19", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19", action = "action_EVENT_ANY_MONSTER_DIE_19", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_20", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20", action = "action_EVENT_ANY_MONSTER_DIE_20", trigger_count = 0 }
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
	suite = 2,
	end_suite = 1,
	rand_suite = false,
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
		monsters = { 8001, 8002, 8003, 8004 },
		gadgets = { 8005, 8006, 8007, 8008, 8009, 8010, 8011, 8012, 8013, 8014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_17", "ANY_MONSTER_DIE_18", "ANY_MONSTER_DIE_19", "ANY_MONSTER_DIE_20" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_17(context, evt)
	if 8001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8001, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_18(context, evt)
	if 8002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_18(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8002, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_19(context, evt)
	if 8003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8003, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20(context, evt)
	if 8004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8004, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end
