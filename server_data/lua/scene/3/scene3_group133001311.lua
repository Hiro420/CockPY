--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1360, monster_id = 21020201, pos = { x = 1611.8, y = 251.6, z = -1343.0 }, rot = { x = 0.0, y = 105.2, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401 },
	{ config_id = 1362, monster_id = 21010601, pos = { x = 1622.2, y = 251.5, z = -1359.0 }, rot = { x = 0.0, y = 287.6, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1363, monster_id = 21010601, pos = { x = 1625.3, y = 248.0, z = -1329.6 }, rot = { x = 0.0, y = 344.7, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1365, monster_id = 21010501, pos = { x = 1632.4, y = 259.0, z = -1344.5 }, rot = { x = 0.0, y = 183.4, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", pose_id = 9003 },
	{ config_id = 1366, monster_id = 21010301, pos = { x = 1632.9, y = 252.8, z = -1370.4 }, rot = { x = 0.0, y = 329.0, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1367, monster_id = 21010301, pos = { x = 1637.6, y = 253.0, z = -1369.9 }, rot = { x = 0.0, y = 329.0, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1368, monster_id = 21030101, pos = { x = 1633.4, y = 253.0, z = -1374.5 }, rot = { x = 0.0, y = 329.0, z = 0.0 }, level = 1, drop_tag = "丘丘萨满" },
	{ config_id = 1369, monster_id = 21020101, pos = { x = 1642.4, y = 245.7, z = -1313.5 }, rot = { x = 0.0, y = 210.3, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 1370, monster_id = 21010901, pos = { x = 1642.4, y = 245.9, z = -1308.9 }, rot = { x = 0.0, y = 186.8, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3269, gadget_id = 70300090, pos = { x = 1633.5, y = 253.5, z = -1343.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3270, gadget_id = 70300101, pos = { x = 1619.7, y = 251.0, z = -1357.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3271, gadget_id = 70300101, pos = { x = 1623.8, y = 247.8, z = -1327.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3273, gadget_id = 70300086, pos = { x = 1623.7, y = 248.3, z = -1325.7 }, rot = { x = 69.5, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3274, gadget_id = 70300086, pos = { x = 1625.6, y = 251.6, z = -1359.1 }, rot = { x = 343.9, y = 332.0, z = 67.9 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "SPECIFIC_GADGET_HP_CHANGE_482", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "3270", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_482", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_482" },
	{ name = "SPECIFIC_GADGET_HP_CHANGE_483", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "3271", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_483", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_483" },
	{ name = "GADGET_CREATE_484", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_484", action = "action_EVENT_GADGET_CREATE_484" }
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
		monsters = { 1360, 1362, 1363 },
		gadgets = { 3269, 3270, 3271, 3273, 3274 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_482", "SPECIFIC_GADGET_HP_CHANGE_483", "GADGET_CREATE_484" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_482(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_482(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1619, y=251, z=-1356}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1366, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1367, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1368, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_483(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_483(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1619, y=251, z=-1356}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1369, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1370, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_484(context, evt)
	if 3269 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_484(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1365, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end
