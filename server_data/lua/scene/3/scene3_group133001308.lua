--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1328, monster_id = 21010101, pos = { x = 1979.2, y = 214.6, z = -1466.0 }, rot = { x = 0.0, y = 241.3, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1330, monster_id = 21010501, pos = { x = 1987.3, y = 219.9, z = -1462.3 }, rot = { x = 0.0, y = 335.2, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 1331, monster_id = 21010601, pos = { x = 1996.5, y = 221.6, z = -1490.1 }, rot = { x = 0.0, y = 54.1, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1332, monster_id = 21010501, pos = { x = 1987.3, y = 226.6, z = -1494.1 }, rot = { x = 0.0, y = 339.6, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 1333, monster_id = 21020201, pos = { x = 1981.5, y = 215.9, z = -1477.0 }, rot = { x = 0.0, y = 5.1, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401 },
	{ config_id = 1334, monster_id = 21030301, pos = { x = 2000.3, y = 221.3, z = -1516.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "丘丘萨满" },
	{ config_id = 1335, monster_id = 21010701, pos = { x = 1998.6, y = 221.4, z = -1512.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1336, monster_id = 21010701, pos = { x = 2002.4, y = 221.4, z = -1509.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1337, monster_id = 21020101, pos = { x = 1964.6, y = 205.0, z = -1430.1 }, rot = { x = 0.0, y = 133.7, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 1338, monster_id = 21030101, pos = { x = 1960.3, y = 203.8, z = -1427.7 }, rot = { x = 0.0, y = 127.8, z = 0.0 }, level = 1, drop_tag = "丘丘萨满" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3249, gadget_id = 70300090, pos = { x = 1988.1, y = 214.4, z = -1463.3 }, rot = { x = 0.0, y = 338.6, z = 0.0 }, level = 1 },
	{ config_id = 3250, gadget_id = 70300101, pos = { x = 1977.5, y = 214.4, z = -1468.1 }, rot = { x = 0.0, y = 336.5, z = 0.0 }, level = 1 },
	{ config_id = 3251, gadget_id = 70300101, pos = { x = 1999.0, y = 221.2, z = -1490.0 }, rot = { x = 0.0, y = 336.5, z = 0.0 }, level = 1 },
	{ config_id = 3252, gadget_id = 70300090, pos = { x = 1987.7, y = 221.1, z = -1495.2 }, rot = { x = 0.0, y = 337.4, z = 0.0 }, level = 1 },
	{ config_id = 3256, gadget_id = 70310001, pos = { x = 2005.5, y = 221.8, z = -1484.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3258, gadget_id = 70310001, pos = { x = 1980.1, y = 221.6, z = -1494.8 }, rot = { x = 0.0, y = 316.5, z = 0.0 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_473", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_473", action = "action_EVENT_GADGET_CREATE_473" },
	{ name = "GADGET_CREATE_474", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_474", action = "action_EVENT_GADGET_CREATE_474" },
	{ name = "SPECIFIC_GADGET_HP_CHANGE_475", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "3250", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_475", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_475" },
	{ name = "SPECIFIC_GADGET_HP_CHANGE_476", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "3251", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_476", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_476" }
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
		monsters = { 1328, 1330, 1331, 1332, 1333 },
		gadgets = { 3249, 3250, 3251, 3252, 3256, 3258 },
		regions = { },
		triggers = { "GADGET_CREATE_473", "GADGET_CREATE_474", "SPECIFIC_GADGET_HP_CHANGE_475", "SPECIFIC_GADGET_HP_CHANGE_476" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_473(context, evt)
	if 3249 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_473(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1330, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_474(context, evt)
	if 3252 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_474(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1332, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_475(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_475(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1976, y=245, z=-1467}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1337, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1338, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_476(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_476(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1997, y=245, z=-1490}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1335, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1336, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1334, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end
