--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 142, monster_id = 21010101, pos = { x = 572.4, y = 220.8, z = -318.7 }, rot = { x = 0.0, y = 266.3, z = 0.0 }, level = 25, drop_tag = "丘丘人" },
	{ config_id = 143, monster_id = 21010201, pos = { x = 572.2, y = 220.8, z = -318.8 }, rot = { x = 0.0, y = 271.9, z = 0.0 }, level = 25, drop_tag = "丘丘人" },
	{ config_id = 144, monster_id = 21010701, pos = { x = 572.4, y = 220.8, z = -318.8 }, rot = { x = 0.0, y = 272.0, z = 0.0 }, level = 25, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 125, gadget_id = 70300089, pos = { x = 571.5, y = 220.8, z = -318.8 }, rot = { x = 0.0, y = 162.6, z = 0.0 }, level = 25 },
	{ config_id = 126, gadget_id = 70211011, pos = { x = 571.5, y = 220.9, z = -318.7 }, rot = { x = 0.0, y = 273.4, z = 0.0 }, level = 25, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_83", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_83", action = "action_EVENT_ANY_GADGET_DIE_83", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_84", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_84", action = "action_EVENT_ANY_MONSTER_DIE_84", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_85", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_85", action = "action_EVENT_ANY_MONSTER_DIE_85", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_86", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_86", action = "action_EVENT_ANY_MONSTER_DIE_86", trigger_count = 0 }
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
		gadgets = { 125 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_83", "ANY_MONSTER_DIE_84" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 143 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_85" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 144 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_86" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 126 },
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
function condition_EVENT_ANY_GADGET_DIE_83(context, evt)
	if 125 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_83(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 142, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_84(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_84(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105063, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_85(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_85(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105063, suite = 3 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_86(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_86(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105063, suite = 4 }) then
			return -1
		end
	
	return 0
end
