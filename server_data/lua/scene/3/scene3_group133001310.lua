--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1349, monster_id = 21010101, pos = { x = 1865.3, y = 223.8, z = -1101.5 }, rot = { x = 0.0, y = 225.3, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1351, monster_id = 21010101, pos = { x = 1845.8, y = 225.2, z = -1099.1 }, rot = { x = 0.0, y = 204.6, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1352, monster_id = 21020201, pos = { x = 1861.0, y = 224.3, z = -1097.7 }, rot = { x = 0.0, y = 181.4, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true },
	{ config_id = 1353, monster_id = 21010501, pos = { x = 1864.9, y = 232.5, z = -1088.5 }, rot = { x = 0.0, y = 85.3, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 1354, monster_id = 21011001, pos = { x = 1826.2, y = 226.7, z = -1096.9 }, rot = { x = 0.0, y = 97.3, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 1355, monster_id = 21011001, pos = { x = 1823.1, y = 227.1, z = -1096.1 }, rot = { x = 0.0, y = 97.3, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 1356, monster_id = 21011001, pos = { x = 1823.7, y = 227.4, z = -1101.7 }, rot = { x = 0.0, y = 63.5, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 1357, monster_id = 21030101, pos = { x = 1892.2, y = 222.6, z = -1101.8 }, rot = { x = 0.0, y = 281.9, z = 0.0 }, level = 1, drop_tag = "丘丘萨满" },
	{ config_id = 1358, monster_id = 21030101, pos = { x = 1897.6, y = 222.2, z = -1101.2 }, rot = { x = 0.0, y = 256.4, z = 0.0 }, level = 1, drop_tag = "丘丘萨满" },
	{ config_id = 1359, monster_id = 21020101, pos = { x = 1889.3, y = 223.0, z = -1098.7 }, rot = { x = 0.0, y = 291.3, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3264, gadget_id = 70300090, pos = { x = 1864.0, y = 226.9, z = -1087.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3265, gadget_id = 70300101, pos = { x = 1863.4, y = 223.6, z = -1103.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3266, gadget_id = 70300101, pos = { x = 1844.3, y = 225.0, z = -1101.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3267, gadget_id = 70300086, pos = { x = 1860.3, y = 224.7, z = -1104.3 }, rot = { x = 84.1, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3268, gadget_id = 70300086, pos = { x = 1844.3, y = 225.7, z = -1103.8 }, rot = { x = 82.9, y = 282.4, z = 286.9 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_479", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_479", action = "action_EVENT_GADGET_CREATE_479" },
	{ name = "SPECIFIC_GADGET_HP_CHANGE_480", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "3266", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_480", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_480" },
	{ name = "SPECIFIC_GADGET_HP_CHANGE_481", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "3265", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_481", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_481" }
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
		monsters = { 1349, 1351, 1352 },
		gadgets = { 3264, 3265, 3266, 3267, 3268 },
		regions = { },
		triggers = { "GADGET_CREATE_479", "SPECIFIC_GADGET_HP_CHANGE_480", "SPECIFIC_GADGET_HP_CHANGE_481" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_479(context, evt)
	if 3264 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_479(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1353, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_480(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_480(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1843, y=226, z=-1099}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1354, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1355, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1356, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_481(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_481(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1843, y=226, z=-1099}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1359, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1357, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1358, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end
