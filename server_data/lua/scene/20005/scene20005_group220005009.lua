--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9001, monster_id = 20010901, pos = { x = -290.1, y = 31.8, z = 170.9 }, rot = { x = 0.0, y = 242.8, z = 0.0 }, level = 1, disableWander = true, affix = { 1006, 1007, 1008, 1010, 1014, 1018, 1022 }, isElite = true },
	{ config_id = 9002, monster_id = 20010801, pos = { x = -295.7, y = 32.5, z = 166.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1023 }, isElite = true },
	{ config_id = 9004, monster_id = 20010801, pos = { x = -292.8, y = 32.5, z = 178.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1023 }, isElite = true },
	{ config_id = 9005, monster_id = 20010801, pos = { x = -296.3, y = 32.5, z = 175.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1023 }, isElite = true },
	{ config_id = 9008, monster_id = 20010801, pos = { x = -284.6, y = 32.5, z = 162.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1023 }, isElite = true },
	{ config_id = 9009, monster_id = 20010801, pos = { x = -283.1, y = 32.6, z = 164.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1023 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9018, gadget_id = 70210005, pos = { x = -299.5, y = 31.5, z = 170.5 }, rot = { x = 0.0, y = 90.5, z = 0.0 }, level = 1, chest_drop_id = 18001200, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_9003", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_9003", action = "action_EVENT_ANY_MONSTER_LIVE_9003", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_9006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9006", action = "action_EVENT_ANY_MONSTER_DIE_9006" },
	{ name = "SPECIFIC_MONSTER_HP_CHANGE_9007", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "9001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_9007", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_9007", trigger_count = 0 },
	{ name = "SPECIFIC_MONSTER_HP_CHANGE_9010", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "9001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_9010", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_9010" },
	{ name = "ANY_MONSTER_DIE_9011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9011", action = "action_EVENT_ANY_MONSTER_DIE_9011" },
	{ name = "CHALLENGE_FAIL_9012", event = EventType.EVENT_CHALLENGE_FAIL, source = "1002", condition = "", action = "action_EVENT_CHALLENGE_FAIL_9012", trigger_count = 0 },
	{ name = "MONSTER_BATTLE_9013", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_9013", action = "action_EVENT_MONSTER_BATTLE_9013" },
	{ name = "TIMER_EVENT_9014", event = EventType.EVENT_TIMER_EVENT, source = "delayshow", condition = "condition_EVENT_TIMER_EVENT_9014", action = "action_EVENT_TIMER_EVENT_9014" },
	{ name = "TIMER_EVENT_9015", event = EventType.EVENT_TIMER_EVENT, source = "delayshow1", condition = "condition_EVENT_TIMER_EVENT_9015", action = "action_EVENT_TIMER_EVENT_9015" },
	{ name = "TIMER_EVENT_9016", event = EventType.EVENT_TIMER_EVENT, source = "delayshow2", condition = "condition_EVENT_TIMER_EVENT_9016", action = "action_EVENT_TIMER_EVENT_9016" },
	{ name = "TIMER_EVENT_9017", event = EventType.EVENT_TIMER_EVENT, source = "delayshow3", condition = "condition_EVENT_TIMER_EVENT_9017", action = "action_EVENT_TIMER_EVENT_9017" }
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
		monsters = { 9001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_9003", "ANY_MONSTER_DIE_9006", "SPECIFIC_MONSTER_HP_CHANGE_9007", "SPECIFIC_MONSTER_HP_CHANGE_9010", "MONSTER_BATTLE_9013", "TIMER_EVENT_9014", "TIMER_EVENT_9015", "TIMER_EVENT_9016", "TIMER_EVENT_9017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 9018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_9003(context, evt)
	if 9002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_9003(context, evt)
	-- 通知groupid为220005009中,configid为：9002的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 9002, 220005009) then
	  return -1
	end
	
	-- 通知groupid为220005009中,configid为：9004的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 9004, 220005009) then
	  return -1
	end
	
	-- 通知groupid为220005009中,configid为：9005的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 9005, 220005009) then
	  return -1
	end
	
	-- 通知groupid为220005009中,configid为：9008的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 9008, 220005009) then
	  return -1
	end
	
	-- 通知groupid为220005009中,configid为：9009的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 9009, 220005009) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9006(context, evt)
	if 9001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9006(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220005009, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
			return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220005011, suite = 1 }) then
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "22000501") then
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220005009, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_9007(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_9007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220005011, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_9010(context, evt)
	--[[判断指定configid的怪物的血量小于%80时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 80 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_9010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 9002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 9004, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 9008, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 9009, delay_time = 0 }) then
	  return -1
	end
	
	-- 调用提示id为 200050301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200050301) then
		return -1
	end
	
	-- 延迟8秒后,向groupId为：220005009的对象,请求一次调用,并将string参数："delayshow" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220005009, "delayshow", 8) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9011(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9011(context, evt)
	--解锁configid 为 9001 的怪物的血量
	if 0 ~= ScriptLib.UnlockMonsterHp(context, 9001) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_9012(context, evt)
	-- 将group 220005009 中config id为 9001 的怪物血量设为 70 %（血量百分比不能填0，如果掉血，则走通用的掉血流程，如果加血，直接设置新的血量）。
	if 0 ~= ScriptLib.SetGadgetHp(context, 220005009, 9001, 70) then
			return -1
		end
	
	-- 调用提示id为 1105001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1105001) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_9013(context, evt)
	if 9001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_9013(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220005010, monsters = {}, gadgets = {10010} }) then
			return -1
		end
	
	-- 调用提示id为 200050301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200050401) then
		return -1
	end
	
	-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220005005, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_9014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) < 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_9014(context, evt)
	-- 调用提示id为 200050301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200050301) then
		return -1
	end
	
	-- 延迟12秒后,向groupId为：220005009的对象,请求一次调用,并将string参数："delayshow1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220005009, "delayshow1", 12) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_9015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) < 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_9015(context, evt)
	-- 调用提示id为 200050301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200050301) then
		return -1
	end
	
	-- 延迟12秒后,向groupId为：220005009的对象,请求一次调用,并将string参数："delayshow2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220005009, "delayshow2", 12) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_9016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) < 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_9016(context, evt)
	-- 调用提示id为 200050301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200050301) then
		return -1
	end
	
	-- 延迟12秒后,向groupId为：220005009的对象,请求一次调用,并将string参数："delayshow3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220005009, "delayshow3", 12) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_9017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) < 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_9017(context, evt)
	-- 调用提示id为 200050301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200050301) then
		return -1
	end
	
	return 0
end
