--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 562001, monster_id = 21020201, pos = { x = 1173.1, y = 201.6, z = 493.4 }, rot = { x = 353.9, y = 126.2, z = 354.8 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 562002, monster_id = 21010101, pos = { x = 1187.4, y = 201.1, z = 486.0 }, rot = { x = 6.1, y = 42.7, z = 356.3 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 },
	{ config_id = 562003, monster_id = 21010901, pos = { x = 1178.6, y = 202.3, z = 501.9 }, rot = { x = 355.9, y = 162.9, z = 358.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 562004, monster_id = 21020101, pos = { x = 1196.9, y = 198.1, z = 513.6 }, rot = { x = 356.8, y = 215.0, z = 0.4 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 562005, monster_id = 21010601, pos = { x = 1195.6, y = 198.1, z = 512.7 }, rot = { x = 0.9, y = 188.1, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 562006, monster_id = 21010601, pos = { x = 1198.2, y = 198.6, z = 512.3 }, rot = { x = 349.2, y = 187.4, z = 347.3 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 562008, monster_id = 21010101, pos = { x = 1176.4, y = 201.0, z = 489.6 }, rot = { x = 6.1, y = 217.2, z = 356.3 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 562007, gadget_id = 70300078, pos = { x = 1206.8, y = 200.3, z = 497.1 }, rot = { x = 352.9, y = 261.9, z = 7.2 }, level = 1 },
	{ config_id = 562009, gadget_id = 70300101, pos = { x = 1188.9, y = 200.7, z = 488.2 }, rot = { x = 359.5, y = 262.4, z = 356.5 }, level = 1 },
	{ config_id = 562010, gadget_id = 70300101, pos = { x = 1174.9, y = 200.6, z = 487.2 }, rot = { x = 0.3, y = 262.7, z = 2.7 }, level = 1 },
	{ config_id = 562011, gadget_id = 70300086, pos = { x = 1188.9, y = 201.1, z = 488.3 }, rot = { x = 357.5, y = 262.6, z = 1.2 }, level = 1 },
	{ config_id = 562012, gadget_id = 70300086, pos = { x = 1176.5, y = 200.7, z = 484.3 }, rot = { x = 51.8, y = 316.5, z = 63.4 }, level = 1 },
	{ config_id = 562013, gadget_id = 70300084, pos = { x = 1223.0, y = 200.1, z = 514.6 }, rot = { x = 0.9, y = 344.0, z = 1.1 }, level = 1 },
	{ config_id = 562014, gadget_id = 70300084, pos = { x = 1165.3, y = 200.6, z = 488.0 }, rot = { x = 358.8, y = 175.2, z = 355.5 }, level = 1 },
	{ config_id = 562015, gadget_id = 70300084, pos = { x = 1179.1, y = 200.4, z = 479.7 }, rot = { x = 2.9, y = 86.0, z = 356.8 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "SPECIFIC_GADGET_HP_CHANGE_562016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "562009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_562016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_562016" },
	{ name = "SPECIFIC_GADGET_HP_CHANGE_562017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "562010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_562017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_562017" }
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
	rand_suite = true
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
		monsters = { 562001, 562002, 562003, 562008 },
		gadgets = { 562007, 562009, 562010, 562011, 562012, 562013, 562014, 562015 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_562016", "SPECIFIC_GADGET_HP_CHANGE_562017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_562016(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_562016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1194, y=200, z=497}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 562004, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 562005, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 562006, delay_time = 2 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_562017(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_562017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1194, y=200, z=497}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 562004, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 562005, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 562006, delay_time = 2 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  return -1
	end
	
	return 0
end
