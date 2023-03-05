--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 20011001, pos = { x = 409.6, y = -23.9, z = 125.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2002, monster_id = 20011001, pos = { x = 409.6, y = -23.9, z = 122.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2003, monster_id = 20011001, pos = { x = 403.9, y = -23.9, z = 126.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2004, monster_id = 20011001, pos = { x = 399.3, y = -23.9, z = 125.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2005, monster_id = 20011001, pos = { x = 397.5, y = -23.9, z = 122.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2006, gadget_id = 70900207, pos = { x = 406.0, y = -24.1, z = 119.5 }, rot = { x = 0.0, y = 40.2, z = 0.0 }, level = 1 },
	{ config_id = 2007, gadget_id = 70900207, pos = { x = 400.6, y = -24.1, z = 119.6 }, rot = { x = 0.0, y = 116.2, z = 0.0 }, level = 1 },
	{ config_id = 2008, gadget_id = 70900207, pos = { x = 406.0, y = -24.1, z = 125.2 }, rot = { x = 0.0, y = 53.1, z = 0.0 }, level = 1 },
	{ config_id = 2009, gadget_id = 70900207, pos = { x = 400.5, y = -24.1, z = 125.2 }, rot = { x = 0.0, y = 251.6, z = 0.0 }, level = 1 },
	{ config_id = 2010, gadget_id = 70211002, pos = { x = 403.2, y = -23.6, z = 121.8 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_6", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_6", action = "action_EVENT_ANY_GADGET_DIE_6" }
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
	rand_suite = true,
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
		monsters = { },
		gadgets = { 2006, 2007, 2008, 2009, 2010 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_6" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_6(context, evt)
	if 2010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_6(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2003, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2004, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2005, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
