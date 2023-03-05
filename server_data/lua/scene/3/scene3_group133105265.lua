--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 265001, monster_id = 25010201, pos = { x = 875.8, y = 273.0, z = -206.0 }, rot = { x = 0.0, y = 349.1, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 265002, monster_id = 25010201, pos = { x = 878.4, y = 272.3, z = -200.3 }, rot = { x = 0.0, y = 268.4, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 265003, monster_id = 25030201, pos = { x = 874.1, y = 272.6, z = -201.8 }, rot = { x = 0.0, y = 297.3, z = 0.0 }, level = 2, drop_tag = "盗宝团", affix = { 1403 }, isElite = true },
	{ config_id = 265004, monster_id = 25010201, pos = { x = 870.3, y = 272.7, z = -200.9 }, rot = { x = 0.0, y = 54.2, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 265005, monster_id = 25020201, pos = { x = 866.9, y = 273.9, z = -205.9 }, rot = { x = 0.0, y = 39.6, z = 0.0 }, level = 1, drop_tag = "盗宝团", affix = { 1403 }, isElite = true },
	{ config_id = 265006, monster_id = 25040201, pos = { x = 861.9, y = 275.3, z = -206.6 }, rot = { x = 0.0, y = 44.3, z = 0.0 }, level = 2, drop_tag = "盗宝团" },
	{ config_id = 265007, monster_id = 25020201, pos = { x = 859.4, y = 275.6, z = -204.6 }, rot = { x = 0.0, y = 57.1, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 265008, monster_id = 25020201, pos = { x = 860.5, y = 276.0, z = -208.0 }, rot = { x = 0.0, y = 57.1, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 265009, monster_id = 25020201, pos = { x = 857.7, y = 276.5, z = -206.9 }, rot = { x = 0.0, y = 57.1, z = 0.0 }, level = 1, drop_tag = "盗宝团" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_265010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_265010", action = "action_EVENT_ANY_MONSTER_DIE_265010" }
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
		monsters = { 265001, 265002, 265003, 265004, 265005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_265010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 265006, 265007, 265008, 265009 },
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
function condition_EVENT_ANY_MONSTER_DIE_265010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_265010(context, evt)
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=869, y=272, z=-199}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105265, 2)
	
	return 0
end
