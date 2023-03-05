--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 404001, monster_id = 21011201, pos = { x = 188.2, y = 238.2, z = 108.4 }, rot = { x = 354.4, y = 21.2, z = 353.2 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 404002, monster_id = 21011201, pos = { x = 178.8, y = 238.3, z = 114.2 }, rot = { x = 356.1, y = 97.6, z = 15.3 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 404003, monster_id = 21011201, pos = { x = 194.8, y = 237.8, z = 108.6 }, rot = { x = 4.8, y = 321.8, z = 5.9 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 404006, monster_id = 20011301, pos = { x = 188.4, y = 239.9, z = 98.8 }, rot = { x = 12.0, y = 1.9, z = 4.3 }, level = 1, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 404007, monster_id = 21020301, pos = { x = 180.2, y = 238.8, z = 107.8 }, rot = { x = 2.9, y = 78.5, z = 8.3 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 404008, monster_id = 21020301, pos = { x = 184.7, y = 235.1, z = 131.9 }, rot = { x = 353.3, y = 190.6, z = 356.9 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 404009, monster_id = 21011201, pos = { x = 183.0, y = 235.2, z = 131.6 }, rot = { x = 353.5, y = 193.5, z = 356.6 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 404010, monster_id = 21011201, pos = { x = 186.6, y = 235.1, z = 131.3 }, rot = { x = 354.8, y = 193.9, z = 354.8 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 404011, monster_id = 21011201, pos = { x = 182.0, y = 235.4, z = 131.0 }, rot = { x = 352.9, y = 179.9, z = 358.2 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 404012, gadget_id = 70300089, pos = { x = 188.6, y = 237.5, z = 110.4 }, rot = { x = 3.7, y = 73.0, z = 8.0 }, level = 1, isOneoff = true },
	{ config_id = 404013, gadget_id = 70300089, pos = { x = 192.6, y = 237.7, z = 110.5 }, rot = { x = 15.7, y = 359.7, z = 357.3 }, level = 1, isOneoff = true },
	{ config_id = 404014, gadget_id = 70300089, pos = { x = 180.2, y = 238.1, z = 113.6 }, rot = { x = 8.7, y = 359.9, z = 358.8 }, level = 1, isOneoff = true },
	{ config_id = 404017, gadget_id = 70300102, pos = { x = 188.2, y = 239.4, z = 98.9 }, rot = { x = 0.7, y = 255.0, z = 356.4 }, level = 19 },
	{ config_id = 404018, gadget_id = 70300075, pos = { x = 190.8, y = 236.4, z = 119.3 }, rot = { x = 3.9, y = 288.1, z = 353.8 }, level = 19 },
	{ config_id = 404019, gadget_id = 70300075, pos = { x = 199.2, y = 238.5, z = 104.7 }, rot = { x = 4.8, y = 27.2, z = 8.8 }, level = 19 },
	{ config_id = 404020, gadget_id = 70220005, pos = { x = 193.2, y = 237.2, z = 115.3 }, rot = { x = 8.0, y = 0.5, z = 1.8 }, level = 1 },
	{ config_id = 404021, gadget_id = 70220005, pos = { x = 199.8, y = 238.3, z = 107.9 }, rot = { x = 6.2, y = 347.7, z = 3.2 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_404022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_404022", action = "action_EVENT_ANY_MONSTER_DIE_404022" }
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
		monsters = { 404001, 404002, 404003, 404006, 404007 },
		gadgets = { 404012, 404013, 404014, 404017, 404018, 404019, 404020, 404021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_404022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 404008, 404009, 404010, 404011 },
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
function condition_EVENT_ANY_MONSTER_DIE_404022(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_404022(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=183, y=238, z=108}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104404, 2)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	return 0
end
