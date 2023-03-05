--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 437, monster_id = 21010101, pos = { x = 2038.9, y = 208.1, z = -59.7 }, rot = { x = 0.0, y = 103.6, z = 0.0 }, level = 1, drop_tag = "丘丘人", pose_id = 0 },
	{ config_id = 440, monster_id = 21010601, pos = { x = 2037.5, y = 204.8, z = -38.7 }, rot = { x = 0.0, y = 76.9, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 442, monster_id = 21010501, pos = { x = 2025.4, y = 210.6, z = -38.5 }, rot = { x = 0.0, y = 176.6, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 443, monster_id = 21020201, pos = { x = 2053.3, y = 203.0, z = -27.4 }, rot = { x = 0.0, y = 234.7, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 444, monster_id = 21030201, pos = { x = 2053.4, y = 203.2, z = -23.4 }, rot = { x = 0.0, y = 201.4, z = 0.0 }, level = 1, drop_tag = "丘丘萨满" },
	{ config_id = 445, monster_id = 21020101, pos = { x = 2016.8, y = 207.8, z = -67.8 }, rot = { x = 0.0, y = 55.4, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 446, monster_id = 21030101, pos = { x = 2012.3, y = 207.9, z = -69.9 }, rot = { x = 0.0, y = 73.5, z = 0.0 }, level = 1, drop_tag = "丘丘萨满" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 985, gadget_id = 70300101, pos = { x = 2041.0, y = 207.8, z = -61.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 986, gadget_id = 70300101, pos = { x = 2039.6, y = 204.3, z = -37.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 987, gadget_id = 70300084, pos = { x = 2051.0, y = 208.2, z = -55.0 }, rot = { x = 0.0, y = 330.3, z = 0.0 }, level = 1 },
	{ config_id = 988, gadget_id = 70300084, pos = { x = 2052.4, y = 208.1, z = -62.8 }, rot = { x = 0.0, y = 6.3, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "SPECIFIC_GADGET_HP_CHANGE_324", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "985", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_324", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_324" },
	{ name = "SPECIFIC_GADGET_HP_CHANGE_325", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "986", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_325", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_325" }
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
		monsters = { 437, 440, 442 },
		gadgets = { 985, 986, 987, 988 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_324", "SPECIFIC_GADGET_HP_CHANGE_325" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_324(context, evt)
	--[[判断指定configid的gadget的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_324(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2041, y=209, z=-59}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 445, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 446, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_325(context, evt)
	--[[判断指定configid的gadget的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_325(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2042, y=209, z=-36}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 443, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 444, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end
