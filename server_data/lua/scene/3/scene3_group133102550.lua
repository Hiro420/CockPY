--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 550001, monster_id = 21020201, pos = { x = 1313.7, y = 200.8, z = 502.2 }, rot = { x = 0.0, y = 343.8, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 550002, monster_id = 21010101, pos = { x = 1323.8, y = 200.5, z = 523.9 }, rot = { x = 0.0, y = 184.3, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 },
	{ config_id = 550003, monster_id = 21011001, pos = { x = 1300.4, y = 205.9, z = 504.6 }, rot = { x = 0.0, y = 73.4, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 550004, monster_id = 21020101, pos = { x = 1310.3, y = 201.0, z = 482.6 }, rot = { x = 0.0, y = 16.1, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 550005, monster_id = 21010601, pos = { x = 1308.6, y = 200.9, z = 482.9 }, rot = { x = 0.0, y = 39.3, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 550006, monster_id = 21010601, pos = { x = 1312.0, y = 201.2, z = 484.0 }, rot = { x = 0.0, y = 354.8, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 550018, monster_id = 21010101, pos = { x = 1303.3, y = 200.5, z = 524.0 }, rot = { x = 0.0, y = 293.0, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 550007, gadget_id = 70300078, pos = { x = 1300.3, y = 200.4, z = 512.5 }, rot = { x = 0.0, y = 1.0, z = 0.0 }, level = 1 },
	{ config_id = 550008, gadget_id = 70300090, pos = { x = 1300.2, y = 200.5, z = 504.1 }, rot = { x = 0.4, y = 338.6, z = 356.0 }, level = 1 },
	{ config_id = 550009, gadget_id = 70300101, pos = { x = 1300.4, y = 200.0, z = 524.7 }, rot = { x = 0.0, y = 1.0, z = 0.0 }, level = 1 },
	{ config_id = 550010, gadget_id = 70300101, pos = { x = 1322.0, y = 200.0, z = 521.7 }, rot = { x = 0.0, y = 1.0, z = 0.0 }, level = 1 },
	{ config_id = 550011, gadget_id = 70300086, pos = { x = 1291.9, y = 199.5, z = 524.6 }, rot = { x = 285.4, y = 305.3, z = 336.7 }, level = 1 },
	{ config_id = 550012, gadget_id = 70300086, pos = { x = 1322.1, y = 200.2, z = 521.7 }, rot = { x = 0.0, y = 1.0, z = 0.0 }, level = 1 },
	{ config_id = 550013, gadget_id = 70300083, pos = { x = 1316.1, y = 201.6, z = 493.1 }, rot = { x = 5.6, y = 359.6, z = 12.7 }, level = 1 },
	{ config_id = 550014, gadget_id = 70300083, pos = { x = 1304.5, y = 200.0, z = 494.4 }, rot = { x = 359.5, y = 202.9, z = 358.3 }, level = 1 },
	{ config_id = 550015, gadget_id = 70300083, pos = { x = 1329.1, y = 200.5, z = 539.2 }, rot = { x = 1.5, y = 25.1, z = 3.1 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "SPECIFIC_GADGET_HP_CHANGE_550016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "550009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_550016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_550016" },
	{ name = "SPECIFIC_GADGET_HP_CHANGE_550017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "550010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_550017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_550017" }
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
		monsters = { 550001, 550002, 550003, 550018 },
		gadgets = { 550007, 550008, 550009, 550010, 550011, 550012, 550013, 550014, 550015 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_550016", "SPECIFIC_GADGET_HP_CHANGE_550017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_550016(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_550016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1321, y=200, z=522}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550004, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550005, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550006, delay_time = 2 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_550017(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_550017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1321, y=200, z=522}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550004, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550005, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550006, delay_time = 2 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  return -1
	end
	
	return 0
end
