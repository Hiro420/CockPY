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
	{ config_id = 145001, gadget_id = 70220001, pos = { x = 1357.5, y = 234.0, z = 1188.1 }, rot = { x = 5.3, y = 0.4, z = 5.4 }, level = 19 },
	{ config_id = 145002, gadget_id = 70220001, pos = { x = 1330.3, y = 228.6, z = 1150.0 }, rot = { x = 347.2, y = 0.1, z = 2.7 }, level = 19 },
	{ config_id = 145003, gadget_id = 70220001, pos = { x = 1345.2, y = 230.9, z = 1164.1 }, rot = { x = 353.7, y = 0.4, z = 4.4 }, level = 19 },
	{ config_id = 145004, gadget_id = 70220001, pos = { x = 1358.1, y = 233.5, z = 1178.4 }, rot = { x = 359.3, y = 359.4, z = 7.0 }, level = 19 },
	{ config_id = 145005, gadget_id = 70210101, pos = { x = 1357.5, y = 234.1, z = 1188.1 }, rot = { x = 5.3, y = 0.3, z = 5.4 }, level = 19, drop_tag = "搜刮点解谜破损璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 145006, gadget_id = 70210101, pos = { x = 1330.3, y = 228.6, z = 1150.1 }, rot = { x = 353.8, y = 359.9, z = 2.7 }, level = 19, drop_tag = "搜刮点解谜破损璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 145007, gadget_id = 70210101, pos = { x = 1345.1, y = 230.9, z = 1164.3 }, rot = { x = 353.8, y = 0.1, z = 4.4 }, level = 19, drop_tag = "搜刮点解谜破损璃月", type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 145008, gadget_id = 70210101, pos = { x = 1358.0, y = 233.5, z = 1178.6 }, rot = { x = 356.4, y = 0.1, z = 0.9 }, level = 19, drop_tag = "搜刮点解谜破损璃月", type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_145009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_145009", action = "action_EVENT_ANY_GADGET_DIE_145009" },
	{ name = "ANY_GADGET_DIE_145010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_145010", action = "action_EVENT_ANY_GADGET_DIE_145010" },
	{ name = "ANY_GADGET_DIE_145011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_145011", action = "action_EVENT_ANY_GADGET_DIE_145011" },
	{ name = "ANY_GADGET_DIE_145012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_145012", action = "action_EVENT_ANY_GADGET_DIE_145012" }
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
		gadgets = { 145001, 145002, 145003, 145004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_145009", "ANY_GADGET_DIE_145010", "ANY_GADGET_DIE_145011", "ANY_GADGET_DIE_145012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_145009(context, evt)
	if 145001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_145009(context, evt)
	-- 创建id为145005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 145005 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_145010(context, evt)
	if 145002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_145010(context, evt)
	-- 创建id为145006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 145006 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_145011(context, evt)
	if 145003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_145011(context, evt)
	-- 创建id为145007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 145007 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_145012(context, evt)
	if 145004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_145012(context, evt)
	-- 创建id为145008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 145008 }) then
	  return -1
	end
	
	return 0
end
