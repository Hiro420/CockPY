--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 504001, monster_id = 21010101, pos = { x = 2758.8, y = 195.2, z = -1734.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2, drop_tag = "丘丘人" },
	{ config_id = 504002, monster_id = 21010301, pos = { x = 2753.6, y = 194.8, z = -1734.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2, drop_tag = "丘丘人" },
	{ config_id = 504003, monster_id = 21010301, pos = { x = 2750.6, y = 194.6, z = -1734.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2, drop_tag = "丘丘人" },
	{ config_id = 504004, monster_id = 21020201, pos = { x = 2760.6, y = 195.2, z = -1734.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2, drop_tag = "丘丘暴徒" },
	{ config_id = 504005, monster_id = 21010201, pos = { x = 2762.9, y = 195.3, z = -1734.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2, drop_tag = "丘丘人" },
	{ config_id = 504006, monster_id = 21010701, pos = { x = 2756.2, y = 195.0, z = -1734.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2, drop_tag = "丘丘人" }
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
	{ name = "ANY_MONSTER_DIE_504007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_504007", action = "action_EVENT_ANY_MONSTER_DIE_504007" },
	{ name = "ANY_MONSTER_DIE_504008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_504008", action = "action_EVENT_ANY_MONSTER_DIE_504008" },
	{ name = "ANY_MONSTER_DIE_504009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_504009", action = "action_EVENT_ANY_MONSTER_DIE_504009" },
	{ name = "MONSTER_BATTLE_504010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_504010" },
	{ name = "ANY_MONSTER_DIE_504011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_504011", action = "action_EVENT_ANY_MONSTER_DIE_504011" },
	{ name = "ANY_MONSTER_DIE_504012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_504012", action = "action_EVENT_ANY_MONSTER_DIE_504012" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 504001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_504007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 504002, 504003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_504008" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 504004, 504005, 504006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_504009", "MONSTER_BATTLE_504010", "ANY_MONSTER_DIE_504011", "ANY_MONSTER_DIE_504012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_504007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_504007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330035041") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_504008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_504008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330035042") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_504009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_504009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330035043") then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_MONSTER_BATTLE_504010(context, evt)
	-- 锁住configid为 504004 的怪物的血量信息，直至解锁，期间怪物无敌
	if 0 ~= ScriptLib.LockMonsterHp(context, 504004) then
		return -1
	end
	
	-- 锁住configid为 504005 的怪物的血量信息，直至解锁，期间怪物无敌
	if 0 ~= ScriptLib.LockMonsterHp(context, 504005) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_504011(context, evt)
	--判断死亡怪物的configid是否为 504006
	if evt.param1 ~= 504006 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_504011(context, evt)
	--解锁configid 为 504005 的怪物的血量
	if 0 ~= ScriptLib.UnlockMonsterHp(context, 504005) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_504012(context, evt)
	--判断死亡怪物的configid是否为 504005
	if evt.param1 ~= 504005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_504012(context, evt)
	--解锁configid 为 504004 的怪物的血量
	if 0 ~= ScriptLib.UnlockMonsterHp(context, 504004) then
		return -1
	end
	
	return 0
end
