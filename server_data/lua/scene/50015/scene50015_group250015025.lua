--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 25001, monster_id = 21010101, pos = { x = -127.8, y = 5.7, z = 33.0 }, rot = { x = 0.0, y = 280.2, z = 0.0 }, level = 25, affix = { 1002 }, isElite = true, pose_id = 9002 },
	{ config_id = 25002, monster_id = 21010101, pos = { x = -129.2, y = 5.7, z = 32.8 }, rot = { x = 0.0, y = 256.9, z = 0.0 }, level = 25, affix = { 1002 }, isElite = true, pose_id = 9002 },
	{ config_id = 25003, monster_id = 23020101, pos = { x = -123.0, y = 5.7, z = 22.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 25004, monster_id = 21011201, pos = { x = -125.6, y = 5.7, z = 19.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 25005, monster_id = 21011201, pos = { x = -119.5, y = 5.7, z = 21.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 25006, monster_id = 21010101, pos = { x = -112.4, y = 5.7, z = 25.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, pose_id = 9002 },
	{ config_id = 25007, monster_id = 21011201, pos = { x = -126.7, y = 5.7, z = 25.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 25008, monster_id = 21010901, pos = { x = -114.7, y = 5.7, z = 12.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 25009, monster_id = 21010901, pos = { x = -129.0, y = 5.7, z = 31.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 25010, monster_id = 21010901, pos = { x = -130.4, y = 5.7, z = 13.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 25011, monster_id = 21010901, pos = { x = -115.2, y = 5.7, z = 31.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 25049, monster_id = 21010101, pos = { x = -112.3, y = 5.7, z = 26.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, pose_id = 9002 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 25028, gadget_id = 70220019, pos = { x = -113.2, y = 5.7, z = 12.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 25029, gadget_id = 70220019, pos = { x = -113.0, y = 5.7, z = 32.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 25030, gadget_id = 70220019, pos = { x = -134.5, y = 5.7, z = 21.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 25031, gadget_id = 70220008, pos = { x = -114.9, y = 5.7, z = 14.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 25036, gadget_id = 70300093, pos = { x = -134.3, y = 5.7, z = 18.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 25038, gadget_id = 70300105, pos = { x = -131.7, y = 5.7, z = 28.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 25039, gadget_id = 70310006, pos = { x = -127.5, y = 5.7, z = 26.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 25046, gadget_id = 70220005, pos = { x = -114.0, y = 5.7, z = 26.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_25012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_25012", action = "action_EVENT_ANY_MONSTER_DIE_25012" },
	{ name = "ANY_MONSTER_DIE_25047", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_25047", action = "action_EVENT_ANY_MONSTER_DIE_25047" }
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
		monsters = { 25001, 25002, 25006, 25049 },
		gadgets = { 25028, 25029, 25030, 25031, 25036, 25038, 25039, 25046 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_25047" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 25004, 25005, 25007, 25008, 25009, 25010, 25011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_25012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 25003 },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_25012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_25012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015025, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_25047(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_25047(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015025, 2)
	
	return 0
end
