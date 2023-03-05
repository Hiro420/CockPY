--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 371007, monster_id = 20011401, pos = { x = 1316.1, y = 201.8, z = 281.9 }, rot = { x = 0.0, y = 197.4, z = 0.0 }, level = 16, drop_tag = "史莱姆", isOneoff = true },
	{ config_id = 371008, monster_id = 20011401, pos = { x = 1312.9, y = 201.5, z = 278.0 }, rot = { x = 0.0, y = 27.5, z = 0.0 }, level = 16, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 371001, gadget_id = 70220013, pos = { x = 1322.3, y = 200.6, z = 280.2 }, rot = { x = 0.4, y = 212.3, z = 7.6 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 371002, gadget_id = 70220013, pos = { x = 1318.8, y = 201.0, z = 279.8 }, rot = { x = 0.0, y = 60.8, z = 0.0 }, level = 16, persistent = true },
	{ config_id = 371003, gadget_id = 70220013, pos = { x = 1316.0, y = 201.8, z = 282.0 }, rot = { x = 0.0, y = 60.8, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 371004, gadget_id = 70220013, pos = { x = 1312.8, y = 201.2, z = 277.8 }, rot = { x = 0.0, y = 60.8, z = 0.0 }, level = 16, persistent = true },
	{ config_id = 371005, gadget_id = 70211001, pos = { x = 1322.1, y = 200.6, z = 280.2 }, rot = { x = 4.5, y = 122.1, z = 2.8 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 371011, gadget_id = 70220005, pos = { x = 1316.2, y = 201.2, z = 279.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 371012, gadget_id = 70220005, pos = { x = 1314.4, y = 201.1, z = 277.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_371006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_371006", action = "action_EVENT_ANY_GADGET_DIE_371006" },
	{ name = "ANY_GADGET_DIE_371009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_371009", action = "action_EVENT_ANY_GADGET_DIE_371009" },
	{ name = "ANY_GADGET_DIE_371010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_371010", action = "action_EVENT_ANY_GADGET_DIE_371010" }
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
		gadgets = { 371001, 371002, 371003, 371004, 371011, 371012 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_371006", "ANY_GADGET_DIE_371009", "ANY_GADGET_DIE_371010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_371006(context, evt)
	if 371001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_371006(context, evt)
	-- 创建id为371005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 371005 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_371009(context, evt)
	if 371003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_371009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 371007, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_371010(context, evt)
	if 371004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_371010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 371008, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
