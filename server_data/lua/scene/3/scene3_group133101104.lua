--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 104001, monster_id = 21011201, pos = { x = 1273.1, y = 264.0, z = 1235.0 }, rot = { x = 0.0, y = 86.4, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 },
	{ config_id = 104002, monster_id = 21011201, pos = { x = 1269.3, y = 264.4, z = 1241.8 }, rot = { x = 0.0, y = 62.5, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 },
	{ config_id = 104003, monster_id = 21030401, pos = { x = 1277.5, y = 262.1, z = 1218.8 }, rot = { x = 0.0, y = 23.0, z = 0.0 }, level = 1, drop_tag = "丘丘萨满", pose_id = 9012 },
	{ config_id = 104004, monster_id = 20011301, pos = { x = 1270.2, y = 264.8, z = 1243.2 }, rot = { x = 0.0, y = 18.9, z = 0.0 }, level = 1, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 104005, monster_id = 20011301, pos = { x = 1274.2, y = 264.0, z = 1234.2 }, rot = { x = 0.0, y = 18.9, z = 0.0 }, level = 1, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 104006, monster_id = 21020301, pos = { x = 1269.2, y = 264.4, z = 1239.1 }, rot = { x = 0.0, y = 97.2, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 104007, monster_id = 21020301, pos = { x = 1280.7, y = 263.2, z = 1218.3 }, rot = { x = 0.0, y = 18.4, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 104008, monster_id = 21011201, pos = { x = 1279.5, y = 262.6, z = 1219.9 }, rot = { x = 0.0, y = 34.9, z = 0.0 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 104009, gadget_id = 70300102, pos = { x = 1274.3, y = 263.5, z = 1234.1 }, rot = { x = 357.5, y = 19.0, z = 356.3 }, level = 1 },
	{ config_id = 104010, gadget_id = 70300102, pos = { x = 1269.9, y = 264.0, z = 1243.5 }, rot = { x = 358.7, y = 19.3, z = 353.4 }, level = 1 },
	{ config_id = 104011, gadget_id = 70300089, pos = { x = 1265.4, y = 265.1, z = 1244.1 }, rot = { x = 0.0, y = 118.8, z = 0.0 }, level = 1 },
	{ config_id = 104012, gadget_id = 70300089, pos = { x = 1278.3, y = 263.1, z = 1231.5 }, rot = { x = 0.0, y = 91.0, z = 0.0 }, level = 1 },
	{ config_id = 104015, gadget_id = 70300088, pos = { x = 1264.6, y = 264.6, z = 1241.8 }, rot = { x = 0.0, y = 11.0, z = 0.0 }, level = 1 },
	{ config_id = 104016, gadget_id = 70220005, pos = { x = 1277.2, y = 263.3, z = 1232.4 }, rot = { x = 0.0, y = 18.9, z = 0.0 }, level = 1 },
	{ config_id = 104017, gadget_id = 70220005, pos = { x = 1273.2, y = 264.9, z = 1246.4 }, rot = { x = 0.0, y = 18.9, z = 0.0 }, level = 1 },
	{ config_id = 104019, gadget_id = 70300084, pos = { x = 1273.4, y = 262.3, z = 1226.3 }, rot = { x = 6.6, y = 113.1, z = 351.3 }, level = 1 },
	{ config_id = 104020, gadget_id = 70300084, pos = { x = 1268.3, y = 264.2, z = 1248.1 }, rot = { x = 359.2, y = 242.0, z = 358.4 }, level = 1 },
	{ config_id = 104021, gadget_id = 70300086, pos = { x = 1265.6, y = 265.1, z = 1237.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_104018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_104018", action = "action_EVENT_ANY_MONSTER_DIE_104018" }
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
		monsters = { 104001, 104002, 104004, 104005, 104006 },
		gadgets = { 104009, 104010, 104011, 104012, 104015, 104016, 104017, 104019, 104020, 104021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_104018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 104003, 104007, 104008 },
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
function condition_EVENT_ANY_MONSTER_DIE_104018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_104018(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101104, 2)
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1272, y=264, z=1238}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	return 0
end
