--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 295001, monster_id = 21011201, pos = { x = 830.8, y = 216.6, z = 1223.3 }, rot = { x = 10.0, y = 195.1, z = 3.6 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 },
	{ config_id = 295002, monster_id = 21030401, pos = { x = 835.9, y = 217.6, z = 1228.7 }, rot = { x = 0.0, y = 200.6, z = 0.0 }, level = 1, drop_tag = "丘丘萨满", pose_id = 9012 },
	{ config_id = 295003, monster_id = 21011201, pos = { x = 840.6, y = 216.2, z = 1216.4 }, rot = { x = 0.0, y = 221.3, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 },
	{ config_id = 295004, monster_id = 20011301, pos = { x = 838.9, y = 216.2, z = 1215.1 }, rot = { x = 0.0, y = 185.5, z = 0.0 }, level = 1, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 295005, monster_id = 20011301, pos = { x = 829.6, y = 216.5, z = 1222.3 }, rot = { x = 10.5, y = 185.6, z = 1.9 }, level = 1, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 295006, monster_id = 21020301, pos = { x = 833.8, y = 216.5, z = 1224.7 }, rot = { x = 0.0, y = 204.9, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 295007, monster_id = 21020301, pos = { x = 813.5, y = 213.6, z = 1205.9 }, rot = { x = 0.0, y = 55.8, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 295008, monster_id = 21011201, pos = { x = 812.1, y = 213.8, z = 1208.2 }, rot = { x = 0.0, y = 59.0, z = 0.0 }, level = 1, drop_tag = "丘丘人", pose_id = 0 },
	{ config_id = 295009, monster_id = 21011201, pos = { x = 815.4, y = 213.8, z = 1204.0 }, rot = { x = 0.9, y = 43.9, z = 0.4 }, level = 1, drop_tag = "丘丘人", pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 295010, gadget_id = 70300102, pos = { x = 829.6, y = 216.1, z = 1222.7 }, rot = { x = 10.5, y = 184.6, z = 1.7 }, level = 1 },
	{ config_id = 295011, gadget_id = 70300102, pos = { x = 839.3, y = 215.6, z = 1215.4 }, rot = { x = 2.5, y = 185.5, z = 2.0 }, level = 1 },
	{ config_id = 295012, gadget_id = 70300089, pos = { x = 841.4, y = 216.6, z = 1225.3 }, rot = { x = 0.0, y = 285.4, z = 0.0 }, level = 1 },
	{ config_id = 295013, gadget_id = 70300088, pos = { x = 836.8, y = 217.8, z = 1231.4 }, rot = { x = 0.0, y = 106.7, z = 0.0 }, level = 1 },
	{ config_id = 295014, gadget_id = 70300088, pos = { x = 845.8, y = 216.0, z = 1219.3 }, rot = { x = 0.0, y = 145.0, z = 0.0 }, level = 1 },
	{ config_id = 295015, gadget_id = 70220005, pos = { x = 829.9, y = 215.8, z = 1217.1 }, rot = { x = 0.0, y = 185.5, z = 0.0 }, level = 1 },
	{ config_id = 295016, gadget_id = 70220005, pos = { x = 841.4, y = 215.3, z = 1210.7 }, rot = { x = 0.0, y = 185.5, z = 0.0 }, level = 1 },
	{ config_id = 295019, gadget_id = 70220013, pos = { x = 835.0, y = 217.8, z = 1232.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 295020, gadget_id = 70220013, pos = { x = 838.4, y = 217.6, z = 1230.7 }, rot = { x = 355.6, y = 42.1, z = 349.0 }, level = 1 },
	{ config_id = 295021, gadget_id = 70220014, pos = { x = 833.3, y = 218.2, z = 1232.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 295022, gadget_id = 70220014, pos = { x = 839.9, y = 217.3, z = 1230.2 }, rot = { x = 349.4, y = 0.5, z = 354.6 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_295017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_295017", action = "action_EVENT_ANY_MONSTER_DIE_295017" }
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
		monsters = { 295001, 295002, 295003, 295004, 295005, 295006 },
		gadgets = { 295010, 295011, 295012, 295013, 295014, 295015, 295016, 295019, 295020, 295021, 295022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_295017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 295007, 295008, 295009 },
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
function condition_EVENT_ANY_MONSTER_DIE_295017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_295017(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103295, 2)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=834, y=216, z=1220}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	return 0
end
