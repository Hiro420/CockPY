--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 267001, monster_id = 21030401, pos = { x = 497.2, y = 168.5, z = 1185.5 }, rot = { x = 0.0, y = 36.0, z = 0.0 }, level = 1, drop_tag = "丘丘萨满" },
	{ config_id = 267002, monster_id = 21011201, pos = { x = 503.0, y = 169.3, z = 1183.3 }, rot = { x = 0.0, y = 28.0, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 },
	{ config_id = 267003, monster_id = 21011201, pos = { x = 495.4, y = 168.5, z = 1190.9 }, rot = { x = 0.0, y = 324.3, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 },
	{ config_id = 267004, monster_id = 20011301, pos = { x = 494.6, y = 168.5, z = 1192.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 267005, monster_id = 20011301, pos = { x = 504.2, y = 169.3, z = 1185.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 267006, monster_id = 21020301, pos = { x = 498.6, y = 168.1, z = 1191.1 }, rot = { x = 0.0, y = 19.5, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 267007, monster_id = 21020301, pos = { x = 514.9, y = 166.8, z = 1203.8 }, rot = { x = 0.0, y = 251.6, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 267008, monster_id = 21011201, pos = { x = 513.5, y = 167.1, z = 1205.6 }, rot = { x = 0.0, y = 234.8, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 267009, monster_id = 21011201, pos = { x = 515.8, y = 166.7, z = 1202.0 }, rot = { x = 0.0, y = 246.3, z = 0.0 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 267011, gadget_id = 70300102, pos = { x = 504.4, y = 168.9, z = 1185.6 }, rot = { x = 6.2, y = 0.5, z = 8.9 }, level = 1 },
	{ config_id = 267012, gadget_id = 70300102, pos = { x = 494.3, y = 168.0, z = 1191.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 267013, gadget_id = 70300089, pos = { x = 493.2, y = 168.4, z = 1181.7 }, rot = { x = 0.0, y = 99.9, z = 0.0 }, level = 1 },
	{ config_id = 267014, gadget_id = 70300089, pos = { x = 503.6, y = 169.5, z = 1180.6 }, rot = { x = 0.0, y = 72.1, z = 0.0 }, level = 1 },
	{ config_id = 267015, gadget_id = 70310001, pos = { x = 497.8, y = 169.1, z = 1177.8 }, rot = { x = 0.0, y = 281.3, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 267016, gadget_id = 70310001, pos = { x = 507.4, y = 168.5, z = 1189.3 }, rot = { x = 0.0, y = 248.8, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 267017, gadget_id = 70310001, pos = { x = 488.3, y = 184.9, z = 1187.3 }, rot = { x = 0.0, y = 319.6, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 267018, gadget_id = 70220005, pos = { x = 505.0, y = 168.3, z = 1190.3 }, rot = { x = 5.4, y = 0.1, z = 1.8 }, level = 1 },
	{ config_id = 267019, gadget_id = 70220005, pos = { x = 494.0, y = 168.3, z = 1196.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_267020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_267020", action = "action_EVENT_ANY_MONSTER_DIE_267020" }
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
		monsters = { 267001, 267002, 267003, 267004, 267005, 267006 },
		gadgets = { 267011, 267012, 267013, 267014, 267015, 267016, 267017, 267018, 267019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_267020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 267007, 267008, 267009 },
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
function condition_EVENT_ANY_MONSTER_DIE_267020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_267020(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=499, y=168, z=1187}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103267, 2)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	return 0
end
