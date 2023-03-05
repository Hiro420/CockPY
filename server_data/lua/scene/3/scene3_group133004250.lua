--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 712, monster_id = 21010101, pos = { x = 2209.7, y = 210.6, z = -511.7 }, rot = { x = 0.0, y = 160.8, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 714, monster_id = 21010601, pos = { x = 2224.9, y = 203.5, z = -499.9 }, rot = { x = 0.0, y = 13.4, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 715, monster_id = 22010201, pos = { x = 2205.9, y = 210.2, z = -509.3 }, rot = { x = 0.0, y = 110.8, z = 0.0 }, level = 1, drop_tag = "深渊法师", pose_id = 9013 },
	{ config_id = 716, monster_id = 21010501, pos = { x = 2194.2, y = 215.2, z = -516.2 }, rot = { x = 0.0, y = 65.8, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 717, monster_id = 21010501, pos = { x = 2196.6, y = 215.6, z = -520.7 }, rot = { x = 0.0, y = 49.1, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 718, monster_id = 21010501, pos = { x = 2195.2, y = 215.3, z = -518.3 }, rot = { x = 0.0, y = 65.8, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 719, monster_id = 21020101, pos = { x = 2239.6, y = 203.2, z = -510.0 }, rot = { x = 0.0, y = 298.1, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 720, monster_id = 21030101, pos = { x = 2241.1, y = 203.0, z = -513.4 }, rot = { x = 0.0, y = 309.4, z = 0.0 }, level = 1, drop_tag = "丘丘萨满" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1446, gadget_id = 70300101, pos = { x = 2209.4, y = 210.4, z = -514.3 }, rot = { x = 0.0, y = 331.3, z = 0.0 }, level = 1 },
	{ config_id = 1447, gadget_id = 70300101, pos = { x = 2225.5, y = 203.0, z = -497.3 }, rot = { x = 0.0, y = 331.3, z = 0.0 }, level = 1 },
	{ config_id = 1448, gadget_id = 70300084, pos = { x = 2213.1, y = 210.5, z = -514.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1449, gadget_id = 70300084, pos = { x = 2208.4, y = 210.9, z = -520.3 }, rot = { x = 0.0, y = 77.8, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "SPECIFIC_GADGET_HP_CHANGE_309", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "1447", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_309", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_309" },
	{ name = "SPECIFIC_GADGET_HP_CHANGE_310", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "1446", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_310", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_310" }
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
		monsters = { 712, 714, 715 },
		gadgets = { 1446, 1447, 1448, 1449 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_309", "SPECIFIC_GADGET_HP_CHANGE_310" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_309(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_309(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2226, y=205, z=-498}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 719, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 720, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_310(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_310(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2208, y=211, z=-515}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 716, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 717, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 718, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end
