--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 262001, monster_id = 21010301, pos = { x = 638.9, y = 222.4, z = -479.4 }, rot = { x = 0.0, y = 193.7, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 262002, monster_id = 21010301, pos = { x = 635.7, y = 222.0, z = -480.5 }, rot = { x = 0.0, y = 130.3, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 262003, monster_id = 21020201, pos = { x = 633.0, y = 221.4, z = -475.0 }, rot = { x = 0.0, y = 257.4, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 0 },
	{ config_id = 262004, monster_id = 21010301, pos = { x = 626.4, y = 221.6, z = -484.4 }, rot = { x = 0.0, y = 128.1, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 262005, monster_id = 21010301, pos = { x = 631.9, y = 222.0, z = -486.7 }, rot = { x = 0.0, y = 15.4, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 262006, monster_id = 21011001, pos = { x = 622.5, y = 220.8, z = -453.9 }, rot = { x = 0.0, y = 186.1, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 262007, monster_id = 21011001, pos = { x = 618.8, y = 220.4, z = -455.3 }, rot = { x = 0.0, y = 124.7, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 262008, monster_id = 21020301, pos = { x = 621.4, y = 220.8, z = -456.8 }, rot = { x = 0.0, y = 156.2, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 262011, monster_id = 21011001, pos = { x = 620.0, y = 220.6, z = -452.9 }, rot = { x = 0.0, y = 165.6, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 262009, gadget_id = 70300089, pos = { x = 638.0, y = 222.2, z = -481.9 }, rot = { x = 0.0, y = 99.9, z = 0.0 }, level = 19 },
	{ config_id = 262010, gadget_id = 70220013, pos = { x = 638.1, y = 221.8, z = -472.6 }, rot = { x = 0.0, y = 328.3, z = 0.0 }, level = 19 },
	{ config_id = 262012, gadget_id = 70300089, pos = { x = 628.3, y = 221.6, z = -485.4 }, rot = { x = 0.0, y = 99.9, z = 0.0 }, level = 19 },
	{ config_id = 262013, gadget_id = 70300089, pos = { x = 633.1, y = 221.9, z = -484.2 }, rot = { x = 0.0, y = 122.9, z = 0.0 }, level = 19 },
	{ config_id = 262014, gadget_id = 70220013, pos = { x = 641.7, y = 223.1, z = -484.8 }, rot = { x = 0.0, y = 328.3, z = 0.0 }, level = 19 },
	{ config_id = 262015, gadget_id = 70220013, pos = { x = 626.6, y = 221.3, z = -490.6 }, rot = { x = 0.0, y = 328.3, z = 0.0 }, level = 19 },
	{ config_id = 262016, gadget_id = 70220014, pos = { x = 625.7, y = 221.2, z = -489.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 262019, gadget_id = 70220014, pos = { x = 628.2, y = 221.6, z = -490.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 262020, gadget_id = 70220014, pos = { x = 642.2, y = 223.1, z = -483.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_262017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_262017", action = "action_EVENT_ANY_MONSTER_DIE_262017" },
	{ name = "ANY_MONSTER_LIVE_262018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_262018", action = "action_EVENT_ANY_MONSTER_LIVE_262018" }
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
		monsters = { 262001, 262002, 262003, 262004, 262005 },
		gadgets = { 262009, 262010, 262012, 262013, 262014, 262015, 262016, 262019, 262020 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_262017", "ANY_MONSTER_LIVE_262018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_262017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_262017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=626, y=221, z=-480}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 262007, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 262008, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 262006, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 262011, delay_time = 3 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_262018(context, evt)
	if 262008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_262018(context, evt)
	-- 通知groupid为133105262中,configid为：262008的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 262008, 133105262) then
	  return -1
	end
	
	-- 通知groupid为133105262中,configid为：262006的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 262006, 133105262) then
	  return -1
	end
	
	-- 通知groupid为133105262中,configid为：262007的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 262007, 133105262) then
	  return -1
	end
	
	return 0
end
