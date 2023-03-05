--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 390001, monster_id = 20011201, pos = { x = 1207.4, y = 200.2, z = 153.6 }, rot = { x = 6.2, y = 360.0, z = 359.1 }, level = 13, drop_tag = "史莱姆", disableWander = true, pose_id = 901 },
	{ config_id = 390002, monster_id = 20011201, pos = { x = 1206.0, y = 200.2, z = 154.0 }, rot = { x = 7.1, y = 359.9, z = 359.1 }, level = 13, drop_tag = "史莱姆", disableWander = true, pose_id = 901 },
	{ config_id = 390003, monster_id = 20011201, pos = { x = 1207.6, y = 200.0, z = 154.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 13, drop_tag = "史莱姆", disableWander = true, pose_id = 901 },
	{ config_id = 390004, monster_id = 21010601, pos = { x = 1206.4, y = 200.0, z = 155.1 }, rot = { x = 0.0, y = 146.0, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 390005, monster_id = 21010201, pos = { x = 1207.2, y = 200.3, z = 149.8 }, rot = { x = 0.0, y = 70.1, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 390006, monster_id = 21010201, pos = { x = 1209.5, y = 200.0, z = 152.4 }, rot = { x = 0.0, y = 163.0, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 390011, monster_id = 21020101, pos = { x = 1208.2, y = 200.2, z = 143.3 }, rot = { x = 0.0, y = 349.0, z = 0.0 }, level = 16, drop_id = 1000100, disableWander = true, pose_id = 401 },
	{ config_id = 390012, monster_id = 21010301, pos = { x = 1211.3, y = 200.0, z = 147.6 }, rot = { x = 0.0, y = 299.8, z = 0.0 }, level = 16, drop_id = 1000100, pose_id = 9012 },
	{ config_id = 390014, monster_id = 21010301, pos = { x = 1207.6, y = 200.0, z = 151.4 }, rot = { x = 0.0, y = 189.6, z = 0.0 }, level = 16, drop_id = 1000100, pose_id = 9012 },
	{ config_id = 390015, monster_id = 21010301, pos = { x = 1204.6, y = 200.0, z = 147.4 }, rot = { x = 0.0, y = 65.0, z = 0.0 }, level = 16, drop_id = 1000100, pose_id = 9012 },
	{ config_id = 390016, monster_id = 21010901, pos = { x = 1211.8, y = 200.0, z = 142.8 }, rot = { x = 0.0, y = 337.8, z = 0.0 }, level = 16, drop_id = 1000100, disableWander = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 390007, gadget_id = 70220013, pos = { x = 1202.4, y = 200.2, z = 153.1 }, rot = { x = 0.0, y = 319.1, z = 0.0 }, level = 1 },
	{ config_id = 390008, gadget_id = 70220013, pos = { x = 1203.2, y = 200.0, z = 155.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 390009, gadget_id = 70310001, pos = { x = 1208.7, y = 200.3, z = 151.5 }, rot = { x = 4.5, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 390010, gadget_id = 70211001, pos = { x = 1200.5, y = 200.1, z = 151.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 390013, gadget_id = 70300099, pos = { x = 1208.0, y = 200.0, z = 148.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_390017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_390017", action = "action_EVENT_ANY_MONSTER_DIE_390017" }
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
		monsters = { 390001, 390002, 390003, 390004, 390005, 390006 },
		gadgets = { 390007, 390008, 390009, 390010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 390011, 390012, 390014, 390015, 390016 },
		gadgets = { 390013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_390017" },
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
function condition_EVENT_ANY_MONSTER_DIE_390017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_390017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310239001") then
	  return -1
	end
	
	return 0
end
