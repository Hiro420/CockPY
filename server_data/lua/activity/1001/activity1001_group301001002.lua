--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21020301, pos = { x = 58.4, y = 262.4, z = 169.7 }, rot = { x = 0.0, y = 98.2, z = 0.0 }, level = 30, drop_id = 1000100, disableWander = true },
	{ config_id = 2002, monster_id = 21011001, pos = { x = 50.3, y = 262.9, z = 172.4 }, rot = { x = 0.0, y = 98.3, z = 0.0 }, level = 30, drop_id = 1000100, pose_id = 32 },
	{ config_id = 2003, monster_id = 21011001, pos = { x = 49.3, y = 263.2, z = 166.5 }, rot = { x = 0.0, y = 98.3, z = 0.0 }, level = 30, drop_id = 1000100, pose_id = 32 },
	{ config_id = 2004, monster_id = 21011201, pos = { x = 55.7, y = 262.6, z = 171.5 }, rot = { x = 0.0, y = 136.1, z = 0.0 }, level = 30, drop_id = 1000100, pose_id = 9003 },
	{ config_id = 2006, monster_id = 21011201, pos = { x = 57.7, y = 263.2, z = 165.9 }, rot = { x = 0.0, y = 68.8, z = 0.0 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2007, gadget_id = 70300083, pos = { x = 53.3, y = 263.1, z = 167.7 }, rot = { x = 0.0, y = 267.9, z = 349.3 }, level = 1 },
	{ config_id = 2008, gadget_id = 70300083, pos = { x = 53.9, y = 262.9, z = 175.2 }, rot = { x = 0.0, y = 278.6, z = 6.1 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_2005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2005", action = "action_EVENT_ANY_MONSTER_DIE_2005", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_2009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_2009", action = "action_EVENT_ANY_GADGET_DIE_2009", trigger_count = 0 }
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
		monsters = { 2001, 2002, 2003, 2004, 2006 },
		gadgets = { 2007, 2008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2005", "ANY_GADGET_DIE_2009" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "3010010021") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_2009(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 301001002}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_2009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "3010010022") then
	  return -1
	end
	
	return 0
end
