--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 290001, monster_id = 20011401, pos = { x = 2855.5, y = 276.5, z = -1554.5 }, rot = { x = 0.0, y = 301.1, z = 0.0 }, level = 30, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3958, gadget_id = 70220008, pos = { x = 2855.9, y = 274.8, z = -1554.5 }, rot = { x = 6.9, y = 294.3, z = 7.9 }, level = 30, isOneoff = true },
	{ config_id = 3960, gadget_id = 70211111, pos = { x = 2854.7, y = 274.8, z = -1556.3 }, rot = { x = 7.8, y = 316.8, z = 2.1 }, level = 30, drop_tag = "解谜中级蒙德", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_493", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_493", action = "action_EVENT_ANY_GADGET_DIE_493" },
	{ name = "ANY_MONSTER_DIE_290002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_290002", action = "action_EVENT_ANY_MONSTER_DIE_290002" }
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
	rand_suite = true
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
		gadgets = { 3958 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_493", "ANY_MONSTER_DIE_290002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_493(context, evt)
	if 3958 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_493(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 290001, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_290002(context, evt)
	if 290001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_290002(context, evt)
	-- 创建id为3960的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3960 }) then
	  return -1
	end
	
	return 0
end
