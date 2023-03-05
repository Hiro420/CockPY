--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1, monster_id = 22010201, pos = { x = 460.7, y = -31.5, z = 14.2 }, rot = { x = 0.0, y = 85.2, z = 0.0 }, level = 1, disableWander = true, affix = { 1007 }, isElite = true },
	{ config_id = 30, monster_id = 20010601, pos = { x = 453.0, y = -31.6, z = 13.7 }, rot = { x = 0.0, y = 267.7, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 192, gadget_id = 70900201, pos = { x = 462.9, y = -30.1, z = 12.2 }, rot = { x = 0.0, y = 89.9, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_20", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20", action = "action_EVENT_ANY_MONSTER_DIE_20" },
	{ name = "CHALLENGE_SUCCESS_27", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_27" },
	{ name = "CHALLENGE_FAIL_28", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_28" },
	{ name = "ANY_MONSTER_LIVE_37", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_37", action = "action_EVENT_ANY_MONSTER_LIVE_37" },
	{ name = "SPECIFIC_MONSTER_HP_CHANGE_38", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "1", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_38", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_38" },
	{ name = "ANY_MONSTER_DIE_41", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_41", action = "action_EVENT_ANY_MONSTER_DIE_41", trigger_count = 0 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_20", "CHALLENGE_SUCCESS_27", "CHALLENGE_FAIL_28", "ANY_MONSTER_LIVE_37", "SPECIFIC_MONSTER_HP_CHANGE_38", "ANY_MONSTER_DIE_41" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20(context, evt)
	-- 改变指定group组220010009中， configid为71的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220010009, 71, GadgetState.Default) then
			return -1
		end 
	
	-- 改变指定group组220010009中， configid为74的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220010009, 74, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_27(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220010008, suite = 1 }) then
			return -1
		end
	
	-- 改变指定group组220010010中， configid为88的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220010010, 88, GadgetState.GearStart) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220010010, 88, {7}) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（463，-30，12），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=463, y=-30, z=12}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 改变指定group组220010010中， configid为76的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220010010, 76, GadgetState.Default) then
			return -1
		end 
	
	-- 创建id为192的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 192 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_28(context, evt)
	-- 改变指定group组220010010中， configid为76的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220010010, 76, GadgetState.GearStart) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220010010, 76, {12}) then
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220010008, suite = 1 }) then
			return -1
		end
	
	-- 触发镜头注目，注目位置为坐标（446，-30，14），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=446, y=-30, z=14}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_37(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_37(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为173的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 173, 90, 220010008, 1, 0) then
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "LisaKey1") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_38(context, evt)
	--[[判断指定configid的怪物的血量小于%70时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 70 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_38(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 30, delay_time = 0 }) then
	  return -1
	end
	
	-- 通知groupid为220010008中,configid为：30的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 30, 220010008) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_41(context, evt)
	if 30 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_41(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 30, delay_time = 2 }) then
	  return -1
	end
	
	-- 通知groupid为220010008中,configid为：30的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 30, 220010008) then
	  return -1
	end
	
	return 0
end
