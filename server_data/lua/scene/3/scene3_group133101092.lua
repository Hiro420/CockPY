--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 92001, monster_id = 21011201, pos = { x = 1119.8, y = 218.0, z = 1043.2 }, rot = { x = 0.0, y = 276.1, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 },
	{ config_id = 92002, monster_id = 21011201, pos = { x = 1132.0, y = 218.1, z = 1039.0 }, rot = { x = 0.0, y = 283.9, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 92003, monster_id = 21011201, pos = { x = 1121.9, y = 217.3, z = 1035.0 }, rot = { x = 0.0, y = 252.1, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 },
	{ config_id = 92004, monster_id = 21011001, pos = { x = 1130.5, y = 224.9, z = 1052.6 }, rot = { x = 0.0, y = 237.2, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", pose_id = 32 },
	{ config_id = 92005, monster_id = 20011301, pos = { x = 1120.9, y = 217.3, z = 1033.9 }, rot = { x = 0.0, y = 208.5, z = 0.0 }, level = 1, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 92006, monster_id = 20011301, pos = { x = 1118.9, y = 218.1, z = 1044.1 }, rot = { x = 0.0, y = 208.5, z = 0.0 }, level = 1, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 92007, monster_id = 21020301, pos = { x = 1113.8, y = 217.5, z = 1032.7 }, rot = { x = 0.0, y = 286.8, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 92008, monster_id = 21030401, pos = { x = 1132.6, y = 218.1, z = 1038.0 }, rot = { x = 0.0, y = 286.9, z = 1.1 }, level = 1, drop_tag = "丘丘萨满" },
	{ config_id = 92009, monster_id = 21011201, pos = { x = 1131.6, y = 218.1, z = 1037.3 }, rot = { x = 0.0, y = 283.9, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 92010, monster_id = 21011201, pos = { x = 1130.7, y = 218.1, z = 1038.4 }, rot = { x = 0.0, y = 283.9, z = 0.0 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 92013, gadget_id = 70300102, pos = { x = 1118.9, y = 217.5, z = 1044.1 }, rot = { x = 6.0, y = 208.6, z = 2.0 }, level = 1 },
	{ config_id = 92018, gadget_id = 70300088, pos = { x = 1115.0, y = 217.2, z = 1029.1 }, rot = { x = 11.5, y = 300.9, z = 359.3 }, level = 1 },
	{ config_id = 92020, gadget_id = 70220005, pos = { x = 1114.8, y = 217.5, z = 1043.8 }, rot = { x = 7.9, y = 208.8, z = 4.0 }, level = 1 },
	{ config_id = 92021, gadget_id = 70220005, pos = { x = 1117.2, y = 217.1, z = 1031.9 }, rot = { x = 356.8, y = 208.8, z = 348.5 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_92022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_92022", action = "action_EVENT_ANY_MONSTER_DIE_92022" }
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
		monsters = { 92001, 92003, 92004, 92005, 92006, 92007 },
		gadgets = { 92013, 92018, 92020, 92021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_92022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 92002, 92008, 92009, 92010 },
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
function condition_EVENT_ANY_MONSTER_DIE_92022(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_92022(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101092, 2)
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1124, y=218, z=1030}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	return 0
end
