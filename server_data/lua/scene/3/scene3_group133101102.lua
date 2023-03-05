--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 102001, monster_id = 25020201, pos = { x = 1277.5, y = 231.7, z = 1126.7 }, rot = { x = 0.0, y = 56.2, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 102002, monster_id = 25020201, pos = { x = 1277.2, y = 232.8, z = 1132.4 }, rot = { x = 0.0, y = 84.7, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 102003, monster_id = 25030201, pos = { x = 1282.0, y = 232.8, z = 1133.5 }, rot = { x = 0.0, y = 107.9, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 102004, monster_id = 25010201, pos = { x = 1286.9, y = 232.0, z = 1132.2 }, rot = { x = 0.0, y = 107.9, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 102005, monster_id = 25010201, pos = { x = 1284.6, y = 233.1, z = 1135.9 }, rot = { x = 0.0, y = 107.9, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 102006, monster_id = 25010201, pos = { x = 1303.8, y = 224.7, z = 1118.4 }, rot = { x = 0.0, y = 287.2, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 102007, monster_id = 25030201, pos = { x = 1302.0, y = 225.9, z = 1121.5 }, rot = { x = 0.0, y = 287.2, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 102008, monster_id = 25040201, pos = { x = 1300.8, y = 225.9, z = 1118.6 }, rot = { x = 0.0, y = 287.2, z = 0.0 }, level = 1, drop_tag = "盗宝团" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 102013, gadget_id = 70310006, pos = { x = 1280.6, y = 232.4, z = 1131.5 }, rot = { x = 0.0, y = 107.9, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_102014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_102014", action = "action_EVENT_ANY_MONSTER_DIE_102014" }
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
		monsters = { 102001, 102002, 102003, 102004, 102005 },
		gadgets = { 102013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_102014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_102014(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_102014(context, evt)
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 102006, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 102007, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 102008, delay_time = 3 }) then
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1352, y=213, z=1086}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	return 0
end
