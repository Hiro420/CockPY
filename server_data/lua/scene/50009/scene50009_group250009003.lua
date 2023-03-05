--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6, monster_id = 20010901, pos = { x = 155.6, y = 4.0, z = -4.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 13, gadget_id = 70211001, pos = { x = 154.3, y = 4.0, z = -7.3 }, rot = { x = 0.0, y = 353.5, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 20, gadget_id = 70500000, pos = { x = 151.1, y = 4.0, z = -5.7 }, rot = { x = 0.0, y = 285.1, z = 0.0 }, level = 1, point_type = 3007 },
	{ config_id = 21, gadget_id = 70500000, pos = { x = 158.0, y = 4.0, z = -3.4 }, rot = { x = 0.0, y = 285.1, z = 0.0 }, level = 1, point_type = 3007 },
	{ config_id = 22, gadget_id = 70500000, pos = { x = 155.4, y = 4.0, z = -1.3 }, rot = { x = 0.0, y = 285.1, z = 0.0 }, level = 1, point_type = 3007 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_9", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9", action = "action_EVENT_GADGET_STATE_CHANGE_9" },
	{ name = "ANY_MONSTER_DIE_10", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_10" }
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
		gadgets = { 20, 21, 22 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_9", "ANY_MONSTER_DIE_10" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9(context, evt)
	if 12 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10(context, evt)
	-- 创建id为13的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 13 }) then
	  return -1
	end
	
	return 0
end
