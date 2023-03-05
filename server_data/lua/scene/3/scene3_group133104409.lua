--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 409001, monster_id = 21020201, pos = { x = 560.1, y = 204.0, z = 166.2 }, rot = { x = 358.5, y = 318.0, z = 353.0 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 409002, monster_id = 21010101, pos = { x = 554.3, y = 204.1, z = 171.2 }, rot = { x = 8.8, y = 66.7, z = 6.8 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 },
	{ config_id = 409003, monster_id = 21010901, pos = { x = 546.0, y = 210.5, z = 159.2 }, rot = { x = 1.0, y = 24.2, z = 0.2 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 409004, monster_id = 21020101, pos = { x = 575.1, y = 200.4, z = 148.3 }, rot = { x = 350.7, y = 300.6, z = 1.7 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 409005, monster_id = 21010601, pos = { x = 575.6, y = 200.4, z = 150.3 }, rot = { x = 359.3, y = 307.7, z = 359.5 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 409006, monster_id = 21010601, pos = { x = 573.8, y = 200.4, z = 147.4 }, rot = { x = 0.0, y = 298.3, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 409018, monster_id = 21010101, pos = { x = 558.3, y = 203.9, z = 156.2 }, rot = { x = 356.6, y = 166.7, z = 5.5 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 409007, gadget_id = 70300078, pos = { x = 560.0, y = 203.0, z = 176.8 }, rot = { x = 3.6, y = 359.9, z = 358.2 }, level = 1 },
	{ config_id = 409008, gadget_id = 70300090, pos = { x = 545.9, y = 205.0, z = 159.2 }, rot = { x = 359.2, y = 359.4, z = 0.5 }, level = 1 },
	{ config_id = 409009, gadget_id = 70300101, pos = { x = 558.2, y = 202.9, z = 153.2 }, rot = { x = 359.0, y = 0.8, z = 359.7 }, level = 1 },
	{ config_id = 409010, gadget_id = 70300101, pos = { x = 556.9, y = 203.0, z = 173.1 }, rot = { x = 359.7, y = 359.8, z = 357.2 }, level = 1 },
	{ config_id = 409011, gadget_id = 70300086, pos = { x = 557.5, y = 204.0, z = 169.4 }, rot = { x = 58.6, y = 351.7, z = 260.8 }, level = 1 },
	{ config_id = 409012, gadget_id = 70300086, pos = { x = 558.3, y = 203.3, z = 153.1 }, rot = { x = 359.6, y = 1.2, z = 2.4 }, level = 1 },
	{ config_id = 409013, gadget_id = 70300084, pos = { x = 566.8, y = 202.8, z = 163.7 }, rot = { x = 2.4, y = 29.8, z = 347.1 }, level = 1 },
	{ config_id = 409014, gadget_id = 70300084, pos = { x = 542.8, y = 202.8, z = 175.9 }, rot = { x = 354.5, y = 219.7, z = 348.6 }, level = 1 },
	{ config_id = 409015, gadget_id = 70300084, pos = { x = 562.3, y = 202.7, z = 185.8 }, rot = { x = 5.6, y = 297.1, z = 358.6 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "SPECIFIC_GADGET_HP_CHANGE_409016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "409009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_409016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_409016" },
	{ name = "SPECIFIC_GADGET_HP_CHANGE_409017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "409010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_409017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_409017" }
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
		monsters = { 409001, 409002, 409003, 409018 },
		gadgets = { 409007, 409008, 409009, 409010, 409011, 409012, 409013, 409014, 409015 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_409016", "SPECIFIC_GADGET_HP_CHANGE_409017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_409016(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_409016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=559, y=203, z=173}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 409004, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 409005, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 409006, delay_time = 2 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_409017(context, evt)
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
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_409017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=559, y=203, z=173}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 409004, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 409005, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 409006, delay_time = 2 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  return -1
	end
	
	return 0
end
