--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 408001, monster_id = 21020201, pos = { x = 106.3, y = 255.9, z = 197.6 }, rot = { x = 353.2, y = 257.9, z = 359.7 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 408002, monster_id = 21010201, pos = { x = 97.1, y = 255.7, z = 205.4 }, rot = { x = 5.6, y = 119.1, z = 356.1 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 408003, monster_id = 21011001, pos = { x = 105.9, y = 261.2, z = 188.1 }, rot = { x = 358.6, y = 359.0, z = 360.0 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 408004, monster_id = 21020101, pos = { x = 112.8, y = 252.7, z = 214.6 }, rot = { x = 341.3, y = 221.0, z = 20.2 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 408005, monster_id = 21010601, pos = { x = 113.7, y = 252.3, z = 213.3 }, rot = { x = 346.3, y = 243.6, z = 356.1 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 408006, monster_id = 21010601, pos = { x = 111.7, y = 253.2, z = 215.3 }, rot = { x = 350.9, y = 204.1, z = 17.6 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 408019, monster_id = 21010101, pos = { x = 95.4, y = 256.1, z = 192.7 }, rot = { x = 354.0, y = 200.7, z = 3.2 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 },
	{ config_id = 408020, monster_id = 21010201, pos = { x = 109.9, y = 256.0, z = 195.7 }, rot = { x = 358.2, y = 119.0, z = 5.1 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 408007, gadget_id = 70300078, pos = { x = 91.4, y = 256.5, z = 205.9 }, rot = { x = 355.6, y = 0.6, z = 349.4 }, level = 1 },
	{ config_id = 408008, gadget_id = 70300090, pos = { x = 106.0, y = 255.8, z = 188.4 }, rot = { x = 0.9, y = 1.4, z = 1.1 }, level = 1 },
	{ config_id = 408009, gadget_id = 70300101, pos = { x = 112.9, y = 255.5, z = 195.1 }, rot = { x = 2.6, y = 359.7, z = 353.7 }, level = 1 },
	{ config_id = 408010, gadget_id = 70300101, pos = { x = 94.4, y = 256.0, z = 189.2 }, rot = { x = 4.5, y = 0.1, z = 2.7 }, level = 1 },
	{ config_id = 408011, gadget_id = 70300086, pos = { x = 108.9, y = 254.0, z = 206.2 }, rot = { x = 6.2, y = 359.4, z = 355.5 }, level = 1 },
	{ config_id = 408012, gadget_id = 70300086, pos = { x = 105.1, y = 254.6, z = 212.1 }, rot = { x = 356.5, y = 0.3, z = 350.2 }, level = 1 },
	{ config_id = 408013, gadget_id = 70300084, pos = { x = 112.5, y = 255.9, z = 188.6 }, rot = { x = 2.1, y = 53.3, z = 2.9 }, level = 1 },
	{ config_id = 408014, gadget_id = 70300084, pos = { x = 112.7, y = 254.5, z = 203.1 }, rot = { x = 6.2, y = 322.0, z = 350.7 }, level = 1 },
	{ config_id = 408015, gadget_id = 70300084, pos = { x = 101.1, y = 255.7, z = 214.1 }, rot = { x = 349.0, y = 260.5, z = 8.9 }, level = 1 },
	{ config_id = 408018, gadget_id = 70300084, pos = { x = 84.3, y = 257.9, z = 193.7 }, rot = { x = 17.6, y = 135.8, z = 15.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "SPECIFIC_GADGET_HP_CHANGE_408016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "408009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_408016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_408016" },
	{ name = "SPECIFIC_GADGET_HP_CHANGE_408017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "408010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_408017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_408017" }
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
		monsters = { 408001, 408002, 408003, 408019, 408020 },
		gadgets = { 408007, 408008, 408009, 408010, 408011, 408012, 408013, 408014, 408015, 408018 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_408016", "SPECIFIC_GADGET_HP_CHANGE_408017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_408016(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_408016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=109, y=255, z=195}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 408004, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 408005, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 408006, delay_time = 2 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_408017(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_408017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=109, y=255, z=195}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 408004, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 408005, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 408006, delay_time = 2 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  return -1
	end
	
	return 0
end
