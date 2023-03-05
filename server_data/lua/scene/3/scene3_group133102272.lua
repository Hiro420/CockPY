--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 494, monster_id = 21010201, pos = { x = 960.5, y = 205.6, z = 160.7 }, rot = { x = 342.2, y = 267.9, z = 347.2 }, level = 16, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 495, monster_id = 21010201, pos = { x = 959.2, y = 205.9, z = 160.5 }, rot = { x = 339.5, y = 207.8, z = 9.2 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 272001, monster_id = 21020201, pos = { x = 966.4, y = 206.0, z = 150.6 }, rot = { x = 0.0, y = 358.6, z = 0.0 }, level = 16, drop_id = 1000100, disableWander = true, pose_id = 401 },
	{ config_id = 272002, monster_id = 21030201, pos = { x = 963.0, y = 206.1, z = 152.1 }, rot = { x = 0.0, y = 4.0, z = 0.0 }, level = 16, drop_id = 1000100, disableWander = true },
	{ config_id = 272003, monster_id = 21010501, pos = { x = 981.2, y = 203.8, z = 152.5 }, rot = { x = 0.0, y = 308.0, z = 0.0 }, level = 16, drop_id = 1000100, disableWander = true, pose_id = 32 },
	{ config_id = 272004, monster_id = 21010501, pos = { x = 969.8, y = 205.1, z = 166.3 }, rot = { x = 0.0, y = 237.0, z = 0.0 }, level = 16, drop_id = 1000100, disableWander = true, pose_id = 32 },
	{ config_id = 272005, monster_id = 21010501, pos = { x = 949.4, y = 210.5, z = 166.8 }, rot = { x = 0.0, y = 74.5, z = 0.0 }, level = 16, drop_id = 1000100, disableWander = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1078, gadget_id = 70220013, pos = { x = 959.0, y = 205.7, z = 162.0 }, rot = { x = 360.0, y = 359.9, z = 344.3 }, level = 16 },
	{ config_id = 1079, gadget_id = 70220014, pos = { x = 958.6, y = 205.7, z = 163.6 }, rot = { x = 8.7, y = 358.2, z = 352.7 }, level = 16 },
	{ config_id = 1080, gadget_id = 70220014, pos = { x = 960.3, y = 205.3, z = 163.3 }, rot = { x = 360.0, y = 359.9, z = 343.5 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_272006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_272006", action = "action_EVENT_ANY_MONSTER_DIE_272006" }
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
		monsters = { 494, 495, 272002 },
		gadgets = { 1078, 1079, 1080 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 272001, 272003, 272004, 272005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_272006" },
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
function condition_EVENT_ANY_MONSTER_DIE_272006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_272006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310227201") then
	  return -1
	end
	
	return 0
end
