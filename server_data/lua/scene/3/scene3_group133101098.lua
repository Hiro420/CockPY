--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 98001, monster_id = 21020201, pos = { x = 1183.4, y = 242.8, z = 1152.3 }, rot = { x = 0.0, y = 73.9, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 98003, monster_id = 21011001, pos = { x = 1198.1, y = 250.1, z = 1139.1 }, rot = { x = 0.0, y = 323.8, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", pose_id = 32 },
	{ config_id = 98004, monster_id = 21010601, pos = { x = 1199.7, y = 245.7, z = 1148.2 }, rot = { x = 0.0, y = 108.7, z = 0.0 }, level = 1, drop_tag = "丘丘人", pose_id = 9011 },
	{ config_id = 98005, monster_id = 21010601, pos = { x = 1195.9, y = 245.3, z = 1160.8 }, rot = { x = 0.0, y = 187.7, z = 0.0 }, level = 1, drop_tag = "丘丘人", pose_id = 9010 },
	{ config_id = 98006, monster_id = 21010601, pos = { x = 1182.5, y = 243.8, z = 1155.0 }, rot = { x = 0.0, y = 117.0, z = 0.0 }, level = 1, drop_tag = "丘丘人", pose_id = 9010 },
	{ config_id = 98023, monster_id = 21020301, pos = { x = 1199.4, y = 245.9, z = 1163.1 }, rot = { x = 0.0, y = 183.5, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 98024, monster_id = 21010601, pos = { x = 1180.4, y = 242.5, z = 1145.6 }, rot = { x = 0.0, y = 70.9, z = 0.0 }, level = 1, drop_tag = "丘丘人", pose_id = 9011 },
	{ config_id = 98025, monster_id = 21030301, pos = { x = 1190.7, y = 244.4, z = 1142.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "丘丘萨满" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 98002, gadget_id = 70310001, pos = { x = 1190.6, y = 243.9, z = 1144.5 }, rot = { x = 9.7, y = 359.7, z = 356.4 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 98007, gadget_id = 70300089, pos = { x = 1193.4, y = 244.8, z = 1139.1 }, rot = { x = 0.0, y = 90.5, z = 0.0 }, level = 1 },
	{ config_id = 98008, gadget_id = 70300090, pos = { x = 1198.8, y = 244.6, z = 1138.4 }, rot = { x = 0.0, y = 110.2, z = 0.0 }, level = 1 },
	{ config_id = 98009, gadget_id = 70300101, pos = { x = 1183.6, y = 243.1, z = 1146.6 }, rot = { x = 0.0, y = 90.5, z = 0.0 }, level = 6 },
	{ config_id = 98010, gadget_id = 70300101, pos = { x = 1202.8, y = 245.6, z = 1147.9 }, rot = { x = 0.0, y = 90.5, z = 0.0 }, level = 6 },
	{ config_id = 98011, gadget_id = 70300086, pos = { x = 1194.2, y = 245.0, z = 1137.8 }, rot = { x = 0.0, y = 90.5, z = 0.0 }, level = 1 },
	{ config_id = 98012, gadget_id = 70300086, pos = { x = 1185.9, y = 244.4, z = 1138.0 }, rot = { x = 0.0, y = 90.5, z = 0.0 }, level = 1 },
	{ config_id = 98013, gadget_id = 70300084, pos = { x = 1173.8, y = 243.0, z = 1136.9 }, rot = { x = 345.6, y = 144.2, z = 359.6 }, level = 1 },
	{ config_id = 98014, gadget_id = 70300084, pos = { x = 1209.5, y = 247.1, z = 1150.0 }, rot = { x = 358.7, y = 318.0, z = 11.8 }, level = 1 },
	{ config_id = 98015, gadget_id = 70300084, pos = { x = 1208.7, y = 244.7, z = 1133.5 }, rot = { x = 6.1, y = 17.0, z = 355.4 }, level = 1 },
	{ config_id = 98018, gadget_id = 70220014, pos = { x = 1208.3, y = 246.4, z = 1146.3 }, rot = { x = 347.7, y = 359.5, z = 2.7 }, level = 1 },
	{ config_id = 98019, gadget_id = 70220014, pos = { x = 1189.6, y = 245.0, z = 1159.7 }, rot = { x = 342.6, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 98020, gadget_id = 70220013, pos = { x = 1188.2, y = 244.5, z = 1158.5 }, rot = { x = 342.6, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 98021, gadget_id = 70220013, pos = { x = 1191.0, y = 245.1, z = 1160.7 }, rot = { x = 352.3, y = 42.6, z = 342.7 }, level = 1 },
	{ config_id = 98022, gadget_id = 70300089, pos = { x = 1187.0, y = 244.2, z = 1139.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "SPECIFIC_GADGET_HP_CHANGE_98016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "98009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_98016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_98016" },
	{ name = "SPECIFIC_GADGET_HP_CHANGE_98017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "98010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_98017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_98017" }
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
		monsters = { 98001, 98003, 98004, 98024, 98025 },
		gadgets = { 98002, 98007, 98008, 98009, 98010, 98011, 98012, 98013, 98014, 98015, 98018, 98019, 98020, 98021, 98022 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_98016", "SPECIFIC_GADGET_HP_CHANGE_98017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_98016(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_98016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1192, y=244, z=1142}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 98023, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 98005, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 98006, delay_time = 2 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 98024, delay_time = 2 }) then
	  return -1
	end
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_98017(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_98017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1192, y=244, z=1142}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 98023, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 98005, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 98006, delay_time = 2 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 98024, delay_time = 2 }) then
	  return -1
	end
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	return 0
end
