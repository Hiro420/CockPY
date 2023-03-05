--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1245, monster_id = 21020201, pos = { x = 1558.4, y = 293.4, z = -1180.3 }, rot = { x = 0.0, y = 357.3, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 1282, monster_id = 21010101, pos = { x = 1554.0, y = 292.0, z = -1167.7 }, rot = { x = 0.0, y = 227.2, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1287, monster_id = 21020101, pos = { x = 1528.0, y = 293.1, z = -1186.6 }, rot = { x = 0.0, y = 51.8, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 0 },
	{ config_id = 1288, monster_id = 21010601, pos = { x = 1523.0, y = 293.7, z = -1187.7 }, rot = { x = 0.0, y = 71.6, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1289, monster_id = 21010601, pos = { x = 1522.9, y = 293.0, z = -1193.9 }, rot = { x = 0.0, y = 47.2, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1290, monster_id = 21010901, pos = { x = 1547.1, y = 297.8, z = -1160.1 }, rot = { x = 0.0, y = 230.3, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3191, gadget_id = 70300078, pos = { x = 1547.7, y = 292.8, z = -1182.9 }, rot = { x = 3.3, y = 56.4, z = 1.0 }, level = 1 },
	{ config_id = 3192, gadget_id = 70300090, pos = { x = 1547.1, y = 292.3, z = -1159.8 }, rot = { x = 0.0, y = 57.9, z = 0.0 }, level = 1 },
	{ config_id = 3197, gadget_id = 70300101, pos = { x = 1552.1, y = 291.6, z = -1169.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3198, gadget_id = 70300101, pos = { x = 1541.1, y = 292.1, z = -1179.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3199, gadget_id = 70300086, pos = { x = 1560.4, y = 292.5, z = -1172.7 }, rot = { x = 354.3, y = 333.1, z = 78.9 }, level = 1 },
	{ config_id = 3200, gadget_id = 70300086, pos = { x = 1542.7, y = 292.6, z = -1177.0 }, rot = { x = 346.1, y = 334.7, z = 87.8 }, level = 1 },
	{ config_id = 3201, gadget_id = 70300084, pos = { x = 1567.4, y = 293.3, z = -1183.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3202, gadget_id = 70300084, pos = { x = 1564.9, y = 292.5, z = -1176.9 }, rot = { x = 0.0, y = 324.2, z = 0.0 }, level = 1 },
	{ config_id = 3203, gadget_id = 70300084, pos = { x = 1545.4, y = 292.5, z = -1184.4 }, rot = { x = 0.0, y = 143.3, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "SPECIFIC_GADGET_HP_CHANGE_497", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "3197", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_497", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_497" },
	{ name = "SPECIFIC_GADGET_HP_CHANGE_498", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "3198", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_498", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_498" }
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
		monsters = { 1245, 1282, 1290 },
		gadgets = { 3191, 3192, 3197, 3198, 3199, 3200, 3201, 3202, 3203 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_497", "SPECIFIC_GADGET_HP_CHANGE_498" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_497(context, evt)
	--[[判断指定configid的gadget的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	-- 判断剩余怪物数量是否是1
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_497(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1550, y=292, z=-1179}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1287, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1289, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1288, delay_time = 2 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_498(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_498(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1542, y=292, z=-1173}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1287, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1289, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1288, delay_time = 2 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  return -1
	end
	
	return 0
end
