--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 214003, monster_id = 20011401, pos = { x = -375.9, y = 221.3, z = 831.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "史莱姆" },
	{ config_id = 214007, monster_id = 20011401, pos = { x = -371.7, y = 220.0, z = 836.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "史莱姆" },
	{ config_id = 214008, monster_id = 20011401, pos = { x = -372.0, y = 223.6, z = 824.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "史莱姆" },
	{ config_id = 214009, monster_id = 20011501, pos = { x = -375.5, y = 225.7, z = 816.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "史莱姆" },
	{ config_id = 214010, monster_id = 20011401, pos = { x = -371.6, y = 226.5, z = 813.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 214001, gadget_id = 70220008, pos = { x = -375.9, y = 219.6, z = 831.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, isOneoff = true },
	{ config_id = 214002, gadget_id = 70220008, pos = { x = -371.9, y = 221.9, z = 824.2 }, rot = { x = 15.7, y = 0.5, z = 3.6 }, level = 32, isOneoff = true },
	{ config_id = 214004, gadget_id = 70220008, pos = { x = -371.6, y = 224.9, z = 812.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, isOneoff = true },
	{ config_id = 214005, gadget_id = 70220008, pos = { x = -375.6, y = 224.0, z = 816.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, isOneoff = true },
	{ config_id = 214006, gadget_id = 70220008, pos = { x = -371.7, y = 218.3, z = 836.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, isOneoff = true },
	{ config_id = 214011, gadget_id = 70211121, pos = { x = -375.9, y = 225.1, z = 812.7 }, rot = { x = 359.9, y = 71.6, z = 8.0 }, level = 32, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_214012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_214012", action = "action_EVENT_ANY_GADGET_DIE_214012" },
	{ name = "ANY_GADGET_DIE_214013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_214013", action = "action_EVENT_ANY_GADGET_DIE_214013" },
	{ name = "ANY_GADGET_DIE_214014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_214014", action = "action_EVENT_ANY_GADGET_DIE_214014" },
	{ name = "ANY_GADGET_DIE_214015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_214015", action = "action_EVENT_ANY_GADGET_DIE_214015" },
	{ name = "ANY_GADGET_DIE_214016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_214016", action = "action_EVENT_ANY_GADGET_DIE_214016" },
	{ name = "ANY_GADGET_DIE_214017", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_214017", action = "action_EVENT_ANY_GADGET_DIE_214017" }
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
		gadgets = { 214001, 214002, 214004, 214005, 214006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_214012", "ANY_GADGET_DIE_214013", "ANY_GADGET_DIE_214014", "ANY_GADGET_DIE_214015", "ANY_GADGET_DIE_214016", "ANY_GADGET_DIE_214017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
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
function condition_EVENT_ANY_GADGET_DIE_214012(context, evt)
	if 214004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_214012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 214010, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_214013(context, evt)
	if 214005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_214013(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 214009, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_214014(context, evt)
	if 214002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_214014(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 214008, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_214015(context, evt)
	if 214001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_214015(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 214003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_214016(context, evt)
	if 214006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_214016(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 214007, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_214017(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133106214}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_214017(context, evt)
	-- 创建id为214011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 214011 }) then
	  return -1
	end
	
	return 0
end
