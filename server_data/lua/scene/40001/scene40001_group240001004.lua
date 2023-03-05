--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 13, monster_id = 21020101, pos = { x = 7.5, y = 42.0, z = 96.1 }, rot = { x = 0.0, y = 312.0, z = 0.0 }, level = 1, affix = { 1001 }, isElite = true },
	{ config_id = 14, monster_id = 21010701, pos = { x = 59.8, y = 42.0, z = 123.7 }, rot = { x = 0.0, y = 261.6, z = 0.0 }, level = 1 },
	{ config_id = 15, monster_id = 21010701, pos = { x = 59.9, y = 42.0, z = 120.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 16, monster_id = 21010701, pos = { x = -3.7, y = 47.0, z = 61.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 17, monster_id = 21010701, pos = { x = 1.1, y = 47.0, z = 64.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1, gadget_id = 70211011, pos = { x = 15.8, y = 42.0, z = 94.8 }, rot = { x = 0.0, y = 268.4, z = 0.0 }, level = 1, drop_tag = "战斗中级蒙德", showcutscene = true, type = GadgetType.GADGET_DUNGEON_PASS_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "SPECIFIC_MONSTER_HP_CHANGE_3", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "13", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3" },
	{ name = "ANY_MONSTER_DIE_4", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4", action = "action_EVENT_ANY_MONSTER_DIE_4" },
	{ name = "DUNGEON_SETTLE_7", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_7", action = "action_EVENT_DUNGEON_SETTLE_7" }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 13 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_3", "ANY_MONSTER_DIE_4", "DUNGEON_SETTLE_7" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3(context, evt)
	--[[判断指定configid的怪物的血量小于%80时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 80 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 14, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 15, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 16, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 17, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 18, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4(context, evt)
	--判断死亡怪物的configid是否为 13
	if evt.param1 ~= 13 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240001004, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_7(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_7(context, evt)
	-- 创生gadget 1
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1 }) then
		return -1
	end
	
	return 0
end
