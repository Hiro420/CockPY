--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 281001, monster_id = 21010101, pos = { x = 301.6, y = 218.6, z = 179.5 }, rot = { x = 357.2, y = 285.4, z = 2.9 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 281002, monster_id = 21010101, pos = { x = 304.0, y = 218.4, z = 181.2 }, rot = { x = 5.7, y = 309.2, z = 10.9 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 281007, monster_id = 21020301, pos = { x = 293.0, y = 221.1, z = 234.0 }, rot = { x = 0.0, y = 304.2, z = 0.0 }, level = 19, drop_id = 1000100, pose_id = 401 },
	{ config_id = 281008, monster_id = 21020301, pos = { x = 279.6, y = 221.2, z = 233.3 }, rot = { x = 0.9, y = 340.7, z = 2.5 }, level = 19, drop_id = 1000100, pose_id = 0 },
	{ config_id = 281010, monster_id = 21030101, pos = { x = 286.4, y = 224.2, z = 229.6 }, rot = { x = 0.0, y = 349.0, z = 0.0 }, level = 19, drop_id = 1000100, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 281005, gadget_id = 70220005, pos = { x = 294.6, y = 219.6, z = 211.8 }, rot = { x = 354.0, y = 358.7, z = 10.7 }, level = 19, isOneoff = true, persistent = true },
	{ config_id = 281006, gadget_id = 70220005, pos = { x = 295.4, y = 219.7, z = 207.0 }, rot = { x = 359.0, y = 359.3, z = 21.9 }, level = 19, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_281009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_281009", action = "action_EVENT_ANY_MONSTER_DIE_281009" }
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
		monsters = { 281001, 281002 },
		gadgets = { 281005, 281006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 281007, 281008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_281009" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 281007, 281008, 281010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_281009" },
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
function condition_EVENT_ANY_MONSTER_DIE_281009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_281009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310428101") then
	  return -1
	end
	
	return 0
end
