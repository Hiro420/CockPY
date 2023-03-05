--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 402001, monster_id = 21011201, pos = { x = 832.5, y = 226.6, z = 743.4 }, rot = { x = 5.3, y = 214.5, z = 5.1 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 402002, monster_id = 21011201, pos = { x = 827.5, y = 226.4, z = 745.3 }, rot = { x = 355.9, y = 183.7, z = 353.5 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 402003, monster_id = 21011201, pos = { x = 826.7, y = 226.3, z = 751.6 }, rot = { x = 350.7, y = 16.3, z = 0.1 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 402005, monster_id = 20011301, pos = { x = 822.9, y = 226.7, z = 759.5 }, rot = { x = 2.7, y = 194.1, z = 4.4 }, level = 1, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 402007, monster_id = 21020301, pos = { x = 811.8, y = 224.7, z = 740.3 }, rot = { x = 349.5, y = 58.6, z = 358.1 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 402008, monster_id = 21020301, pos = { x = 810.5, y = 224.8, z = 740.1 }, rot = { x = 357.5, y = 62.7, z = 1.4 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 402009, monster_id = 21011201, pos = { x = 811.4, y = 224.8, z = 741.8 }, rot = { x = 359.9, y = 62.9, z = 3.7 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 402010, monster_id = 21011201, pos = { x = 810.8, y = 224.8, z = 742.4 }, rot = { x = 1.8, y = 54.2, z = 354.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 402011, monster_id = 21011201, pos = { x = 811.0, y = 224.9, z = 743.7 }, rot = { x = 355.1, y = 75.3, z = 4.2 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 402015, gadget_id = 70300089, pos = { x = 827.2, y = 226.5, z = 742.9 }, rot = { x = 1.6, y = 100.4, z = 3.4 }, level = 1, isOneoff = true },
	{ config_id = 402016, gadget_id = 70300089, pos = { x = 831.2, y = 226.6, z = 741.7 }, rot = { x = 5.4, y = 73.0, z = 1.6 }, level = 1, isOneoff = true },
	{ config_id = 402017, gadget_id = 70300089, pos = { x = 827.7, y = 226.5, z = 753.9 }, rot = { x = 357.5, y = 109.0, z = 356.3 }, level = 1, isOneoff = true },
	{ config_id = 402020, gadget_id = 70220005, pos = { x = 838.8, y = 226.7, z = 741.4 }, rot = { x = 356.4, y = 0.3, z = 360.0 }, level = 1 },
	{ config_id = 402021, gadget_id = 70220005, pos = { x = 822.1, y = 225.8, z = 742.3 }, rot = { x = 359.3, y = 359.5, z = 15.7 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_402022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_402022", action = "action_EVENT_ANY_MONSTER_DIE_402022" }
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
		monsters = { 402001, 402002, 402003, 402005, 402007 },
		gadgets = { 402015, 402016, 402017, 402020, 402021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_402022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 402008, 402009, 402010, 402011 },
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
function condition_EVENT_ANY_MONSTER_DIE_402022(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_402022(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=817, y=225, z=748}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104402, 2)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	return 0
end
