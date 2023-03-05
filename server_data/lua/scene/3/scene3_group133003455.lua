--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1668, monster_id = 21010601, pos = { x = 2429.0, y = 206.0, z = -1258.1 }, rot = { x = 0.0, y = 68.0, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1670, monster_id = 21010601, pos = { x = 2435.5, y = 207.3, z = -1277.3 }, rot = { x = 0.0, y = 219.5, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1671, monster_id = 21010501, pos = { x = 2442.3, y = 212.2, z = -1263.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 1672, monster_id = 21020201, pos = { x = 2429.7, y = 206.8, z = -1276.7 }, rot = { x = 0.0, y = 128.2, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 1673, monster_id = 21010301, pos = { x = 2413.9, y = 208.6, z = -1281.0 }, rot = { x = 0.0, y = 58.0, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1674, monster_id = 21010301, pos = { x = 2415.7, y = 208.6, z = -1283.2 }, rot = { x = 0.0, y = 58.0, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1675, monster_id = 21010301, pos = { x = 2416.0, y = 208.6, z = -1280.8 }, rot = { x = 0.0, y = 70.7, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1676, monster_id = 21030101, pos = { x = 2412.0, y = 208.6, z = -1283.0 }, rot = { x = 0.0, y = 70.7, z = 0.0 }, level = 1, drop_tag = "丘丘萨满" },
	{ config_id = 1677, monster_id = 21020101, pos = { x = 2448.5, y = 209.5, z = -1283.7 }, rot = { x = 0.0, y = 279.4, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 1678, monster_id = 21011001, pos = { x = 2452.9, y = 209.9, z = -1285.4 }, rot = { x = 0.0, y = 272.7, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 1679, monster_id = 21011001, pos = { x = 2453.8, y = 210.1, z = -1281.8 }, rot = { x = 0.0, y = 269.1, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4285, gadget_id = 70300090, pos = { x = 2442.4, y = 206.4, z = -1264.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4286, gadget_id = 70300101, pos = { x = 2431.2, y = 205.6, z = -1256.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4287, gadget_id = 70300101, pos = { x = 2434.3, y = 206.9, z = -1279.6 }, rot = { x = 0.0, y = 321.0, z = 0.0 }, level = 1 },
	{ config_id = 4288, gadget_id = 70300086, pos = { x = 2433.8, y = 207.2, z = -1278.0 }, rot = { x = 282.2, y = 279.7, z = 87.4 }, level = 1 },
	{ config_id = 4289, gadget_id = 70300086, pos = { x = 2434.0, y = 206.0, z = -1260.0 }, rot = { x = 276.1, y = 25.1, z = 80.1 }, level = 1 },
	{ config_id = 4292, gadget_id = 70310001, pos = { x = 2420.6, y = 206.0, z = -1255.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4293, gadget_id = 70310001, pos = { x = 2419.1, y = 208.6, z = -1276.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4294, gadget_id = 70310001, pos = { x = 2421.5, y = 208.6, z = -1282.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4295, gadget_id = 70310001, pos = { x = 2448.7, y = 205.4, z = -1250.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4296, gadget_id = 70310001, pos = { x = 2439.8, y = 205.6, z = -1239.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4297, gadget_id = 70310001, pos = { x = 2409.2, y = 208.6, z = -1277.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4298, gadget_id = 70310001, pos = { x = 2417.4, y = 208.6, z = -1289.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4299, gadget_id = 70310001, pos = { x = 2441.7, y = 208.1, z = -1278.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4300, gadget_id = 70310001, pos = { x = 2436.8, y = 207.4, z = -1287.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4301, gadget_id = 70220013, pos = { x = 2407.5, y = 208.6, z = -1279.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4302, gadget_id = 70220013, pos = { x = 2406.9, y = 208.6, z = -1281.4 }, rot = { x = 0.0, y = 34.4, z = 0.0 }, level = 1 },
	{ config_id = 4303, gadget_id = 70220013, pos = { x = 2415.5, y = 208.6, z = -1289.6 }, rot = { x = 0.0, y = 34.4, z = 0.0 }, level = 1 },
	{ config_id = 4304, gadget_id = 70220014, pos = { x = 2421.1, y = 205.9, z = -1257.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4305, gadget_id = 70220014, pos = { x = 2420.2, y = 206.7, z = -1274.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4306, gadget_id = 70220014, pos = { x = 2420.2, y = 206.7, z = -1273.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_577", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_577", action = "action_EVENT_GADGET_CREATE_577" },
	{ name = "SPECIFIC_GADGET_HP_CHANGE_578", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "4286", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_578", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_578" },
	{ name = "SPECIFIC_GADGET_HP_CHANGE_579", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "4287", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_579", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_579" }
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
		monsters = { 1668, 1670, 1672 },
		gadgets = { 4285, 4286, 4287, 4288, 4289, 4292, 4293, 4294, 4295, 4296, 4297, 4298, 4299, 4300, 4301, 4302, 4303, 4304, 4305, 4306 },
		regions = { },
		triggers = { "GADGET_CREATE_577", "SPECIFIC_GADGET_HP_CHANGE_578", "SPECIFIC_GADGET_HP_CHANGE_579" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_577(context, evt)
	if 4285 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_577(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1671, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_578(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_578(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2431, y=200, z=-1258}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1673, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1674, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1675, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1676, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_579(context, evt)
	--[[判断指定configid的gadget的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_579(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2435, y=200, z=-1278}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1677, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1678, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1679, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end
