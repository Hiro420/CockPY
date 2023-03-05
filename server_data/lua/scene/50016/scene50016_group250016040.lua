--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 40003, monster_id = 21010201, pos = { x = -365.7, y = -11.0, z = -217.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20 },
	{ config_id = 40004, monster_id = 21010201, pos = { x = -366.6, y = -11.0, z = -214.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20 },
	{ config_id = 40005, monster_id = 21010201, pos = { x = -365.4, y = -11.0, z = -211.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20 },
	{ config_id = 40006, monster_id = 21010201, pos = { x = -368.4, y = -11.0, z = -211.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20 },
	{ config_id = 40007, monster_id = 21010201, pos = { x = -369.3, y = -11.0, z = -216.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20 },
	{ config_id = 40008, monster_id = 21020101, pos = { x = -363.5, y = -11.0, z = -214.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20 },
	{ config_id = 40009, monster_id = 21020301, pos = { x = -376.8, y = -11.0, z = -214.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20 },
	{ config_id = 40010, monster_id = 21010501, pos = { x = -376.5, y = -11.0, z = -220.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20 },
	{ config_id = 40011, monster_id = 21010501, pos = { x = -377.6, y = -11.0, z = -218.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20 },
	{ config_id = 40012, monster_id = 21010501, pos = { x = -380.7, y = -11.0, z = -216.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20 },
	{ config_id = 40013, monster_id = 21010501, pos = { x = -377.9, y = -11.0, z = -209.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20 },
	{ config_id = 40014, monster_id = 21010501, pos = { x = -379.6, y = -11.0, z = -211.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20 },
	{ config_id = 40015, monster_id = 21010501, pos = { x = -376.0, y = -11.0, z = -207.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 40001, gadget_id = 70300101, pos = { x = -368.6, y = -11.0, z = -221.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 40002, gadget_id = 70300101, pos = { x = -368.6, y = -11.0, z = -207.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "SPECIFIC_GADGET_HP_CHANGE_40016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "40001", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_40016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_40016" },
	{ name = "SPECIFIC_GADGET_HP_CHANGE_40017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "40002", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_40017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_40017" }
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
	rand_suite = false,
	npcs = { }
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
		monsters = { 40003, 40004, 40005, 40006, 40007, 40008 },
		gadgets = { 40001, 40002 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_40016", "SPECIFIC_GADGET_HP_CHANGE_40017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_40016(context, evt)
	--[[判断指定configid的gadget的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) < 2 then
		return false
	end
	
	-- 判断变量"ison"为0
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_40016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-371, y=-11, z=-215}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40009, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40010, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40011, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40012, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40013, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40014, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40015, delay_time = 2 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_40017(context, evt)
	--[[判断指定configid的gadget的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	-- 判断变量"ison"为0
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_40017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-371, y=-11, z=-215}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40009, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40010, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40011, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40012, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40013, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40014, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 40015, delay_time = 2 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  return -1
	end
	
	return 0
end
