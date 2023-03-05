--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 298001, monster_id = 25020201, pos = { x = 711.9, y = 185.2, z = 1084.3 }, rot = { x = 0.0, y = 323.9, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 298002, monster_id = 25020201, pos = { x = 700.4, y = 185.8, z = 1082.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 298003, monster_id = 25010201, pos = { x = 698.8, y = 184.1, z = 1086.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 298004, monster_id = 25010201, pos = { x = 709.6, y = 184.0, z = 1091.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 298005, monster_id = 25030201, pos = { x = 704.7, y = 185.0, z = 1085.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 298006, monster_id = 25040201, pos = { x = 723.1, y = 184.5, z = 1095.0 }, rot = { x = 0.0, y = 259.3, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 298007, monster_id = 25020201, pos = { x = 726.4, y = 185.0, z = 1096.8 }, rot = { x = 0.0, y = 259.3, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 298008, monster_id = 25030202, pos = { x = 724.6, y = 185.2, z = 1090.7 }, rot = { x = 0.0, y = 259.3, z = 0.0 }, level = 1, drop_tag = "盗宝团" }
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
	{ name = "ANY_MONSTER_DIE_298014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_298014", action = "action_EVENT_ANY_MONSTER_DIE_298014" }
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
		monsters = { 298001, 298002, 298003, 298004, 298005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_298014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_298014(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_298014(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 298006, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 298007, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 298008, delay_time = 2 }) then
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=705, y=184, z=1088}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	return 0
end
