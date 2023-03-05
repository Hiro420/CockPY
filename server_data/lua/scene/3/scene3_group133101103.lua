--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 103001, monster_id = 25020201, pos = { x = 1117.2, y = 283.6, z = 1376.6 }, rot = { x = 0.0, y = 232.1, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 103002, monster_id = 25020201, pos = { x = 1118.5, y = 283.6, z = 1372.1 }, rot = { x = 0.0, y = 260.6, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 103003, monster_id = 25010201, pos = { x = 1111.9, y = 282.0, z = 1371.6 }, rot = { x = 0.0, y = 283.8, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 103004, monster_id = 25010201, pos = { x = 1111.7, y = 282.6, z = 1378.5 }, rot = { x = 0.0, y = 283.8, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 103005, monster_id = 25040201, pos = { x = 1114.8, y = 283.2, z = 1377.0 }, rot = { x = 0.0, y = 283.8, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 103006, monster_id = 25010201, pos = { x = 1103.4, y = 283.0, z = 1390.8 }, rot = { x = 0.0, y = 171.8, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 103007, monster_id = 25020201, pos = { x = 1106.9, y = 283.7, z = 1392.6 }, rot = { x = 0.0, y = 171.8, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 103008, monster_id = 25030201, pos = { x = 1105.6, y = 283.1, z = 1389.7 }, rot = { x = 0.0, y = 171.8, z = 0.0 }, level = 1, drop_tag = "盗宝团" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 103011, gadget_id = 70310006, pos = { x = 1116.2, y = 283.2, z = 1373.1 }, rot = { x = 0.0, y = 283.8, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_103012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_103012", action = "action_EVENT_ANY_MONSTER_DIE_103012" }
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
		monsters = { 103001, 103002, 103003, 103004, 103005 },
		gadgets = { 103011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_103012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_103012(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_103012(context, evt)
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 103006, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 103007, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 103008, delay_time = 3 }) then
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1115, y=282, z=1373}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	return 0
end
