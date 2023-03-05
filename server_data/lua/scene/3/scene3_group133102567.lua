--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 567001, monster_id = 21011201, pos = { x = 1139.3, y = 214.3, z = 945.9 }, rot = { x = 0.0, y = 154.5, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 567002, monster_id = 21011201, pos = { x = 1129.6, y = 208.6, z = 956.5 }, rot = { x = 0.0, y = 213.2, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 567003, monster_id = 21011201, pos = { x = 1124.2, y = 208.6, z = 959.6 }, rot = { x = 0.0, y = 65.6, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 567004, monster_id = 20010601, pos = { x = 1120.1, y = 208.9, z = 953.4 }, rot = { x = 359.8, y = 0.0, z = 0.3 }, level = 1, drop_tag = "史莱姆", ban_excel_drop = true },
	{ config_id = 567006, monster_id = 21020301, pos = { x = 1118.4, y = 211.1, z = 969.9 }, rot = { x = 1.6, y = 238.6, z = 356.9 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 567007, monster_id = 21020301, pos = { x = 1122.1, y = 206.2, z = 920.3 }, rot = { x = 357.5, y = 9.2, z = 358.7 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 567008, monster_id = 21011201, pos = { x = 1126.0, y = 206.4, z = 919.3 }, rot = { x = 355.1, y = 16.2, z = 357.7 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 567009, monster_id = 21011201, pos = { x = 1118.2, y = 206.5, z = 922.4 }, rot = { x = 352.4, y = 16.1, z = 0.6 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 567021, monster_id = 21011201, pos = { x = 1123.5, y = 206.2, z = 920.8 }, rot = { x = 351.9, y = 15.8, z = 355.9 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 567005, gadget_id = 70300100, pos = { x = 1126.1, y = 208.6, z = 960.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 567010, gadget_id = 70300100, pos = { x = 1128.2, y = 208.6, z = 955.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 567011, gadget_id = 70300100, pos = { x = 1140.6, y = 214.3, z = 943.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 567012, gadget_id = 70300102, pos = { x = 1120.2, y = 208.4, z = 953.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 567018, gadget_id = 70220005, pos = { x = 1124.3, y = 208.4, z = 945.9 }, rot = { x = 356.4, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 567019, gadget_id = 70220005, pos = { x = 1115.8, y = 208.4, z = 952.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_567020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_567020", action = "action_EVENT_ANY_MONSTER_DIE_567020" }
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
		-- description = suite_1,
		monsters = { 567001, 567002, 567003, 567004, 567006 },
		gadgets = { 567005, 567010, 567011, 567012, 567018, 567019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_567020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 567007, 567008, 567009, 567021 },
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
function condition_EVENT_ANY_MONSTER_DIE_567020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_567020(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1128, y=208, z=953}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102567, 2)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	return 0
end
