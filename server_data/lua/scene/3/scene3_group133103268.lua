--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 268001, monster_id = 21020201, pos = { x = 929.8, y = 360.7, z = 1463.0 }, rot = { x = 0.0, y = 317.8, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 0 },
	{ config_id = 268002, monster_id = 21010301, pos = { x = 925.4, y = 360.9, z = 1465.9 }, rot = { x = 0.0, y = 20.1, z = 0.0 }, level = 1, drop_tag = "丘丘人", pose_id = 9011 },
	{ config_id = 268003, monster_id = 21011001, pos = { x = 918.0, y = 365.7, z = 1472.1 }, rot = { x = 0.0, y = 286.9, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", pose_id = 32 },
	{ config_id = 268004, monster_id = 21020101, pos = { x = 907.1, y = 363.8, z = 1467.7 }, rot = { x = 9.9, y = 89.5, z = 21.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 268005, monster_id = 21010601, pos = { x = 907.8, y = 362.6, z = 1470.5 }, rot = { x = 352.6, y = 131.4, z = 22.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 268006, monster_id = 21010601, pos = { x = 909.6, y = 362.2, z = 1470.8 }, rot = { x = 345.4, y = 151.5, z = 18.1 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 268020, monster_id = 21030301, pos = { x = 920.5, y = 366.1, z = 1459.5 }, rot = { x = 20.8, y = 18.3, z = 354.4 }, level = 1, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 268021, monster_id = 21010301, pos = { x = 934.7, y = 359.9, z = 1464.8 }, rot = { x = 0.0, y = 108.7, z = 0.0 }, level = 1, drop_tag = "丘丘人", pose_id = 9011 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 268008, gadget_id = 70300090, pos = { x = 918.4, y = 360.2, z = 1471.5 }, rot = { x = 5.7, y = 22.8, z = 0.0 }, level = 1 },
	{ config_id = 268009, gadget_id = 70300101, pos = { x = 937.9, y = 359.2, z = 1463.4 }, rot = { x = 8.6, y = 23.2, z = 351.2 }, level = 5 },
	{ config_id = 268010, gadget_id = 70300101, pos = { x = 926.7, y = 359.7, z = 1468.6 }, rot = { x = 5.9, y = 18.3, z = 4.8 }, level = 5 },
	{ config_id = 268011, gadget_id = 70300086, pos = { x = 932.3, y = 360.8, z = 1459.2 }, rot = { x = 8.6, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 268012, gadget_id = 70300086, pos = { x = 939.2, y = 358.1, z = 1468.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 268013, gadget_id = 70300084, pos = { x = 934.2, y = 360.7, z = 1456.7 }, rot = { x = 17.6, y = 67.4, z = 357.2 }, level = 1 },
	{ config_id = 268014, gadget_id = 70300084, pos = { x = 923.5, y = 358.4, z = 1478.0 }, rot = { x = 351.6, y = 254.2, z = 347.0 }, level = 1 },
	{ config_id = 268015, gadget_id = 70300084, pos = { x = 939.4, y = 357.8, z = 1473.7 }, rot = { x = 354.1, y = 328.2, z = 352.2 }, level = 1 },
	{ config_id = 268018, gadget_id = 70220013, pos = { x = 933.6, y = 358.6, z = 1475.8 }, rot = { x = 10.3, y = 41.2, z = 4.3 }, level = 1 },
	{ config_id = 268019, gadget_id = 70220013, pos = { x = 931.6, y = 358.6, z = 1476.2 }, rot = { x = 17.6, y = 16.4, z = 1.5 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "SPECIFIC_GADGET_HP_CHANGE_268016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "268009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_268016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_268016" },
	{ name = "SPECIFIC_GADGET_HP_CHANGE_268017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "268010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_268017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_268017" }
}

-- 变量
variables = {
	{ name = "ison", value = 0, no_refresh = false }
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
		monsters = { 268001, 268002, 268003, 268020, 268021 },
		gadgets = { 268008, 268009, 268010, 268011, 268012, 268013, 268014, 268015, 268018, 268019 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_268016", "SPECIFIC_GADGET_HP_CHANGE_268017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_268016(context, evt)
	--[[判断指定configid的gadget的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	-- 判断变量"ison"为1
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_268016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=927, y=360, z=1466}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 268004, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 268005, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 268006, delay_time = 2 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  return -1
	end
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_268017(context, evt)
	--[[判断指定configid的gadget的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	-- 判断变量"ison"为1
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_268017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=927, y=360, z=1466}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 268004, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 268005, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 268006, delay_time = 2 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  return -1
	end
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	return 0
end
