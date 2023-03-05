--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 77, monster_id = 20011201, pos = { x = 142.0, y = 1.1, z = 4.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 78, monster_id = 20011201, pos = { x = 147.4, y = 1.1, z = -7.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 79, monster_id = 21030201, pos = { x = 137.0, y = 1.1, z = -6.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_58", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58", action = "action_EVENT_ANY_MONSTER_DIE_58", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_59", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_59", action = "action_EVENT_ANY_MONSTER_DIE_59", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_60", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_60", action = "action_EVENT_ANY_MONSTER_DIE_60", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_63", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_63", action = "action_EVENT_ANY_MONSTER_LIVE_63" },
	{ name = "CHALLENGE_SUCCESS_64", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "37", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_64", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_65", event = EventType.EVENT_CHALLENGE_FAIL, source = "37", condition = "", action = "action_EVENT_CHALLENGE_FAIL_65", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_66", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_66", action = "action_EVENT_ANY_MONSTER_LIVE_66", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_67", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_67", action = "action_EVENT_ANY_MONSTER_LIVE_67", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_68", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_68", action = "action_EVENT_ANY_MONSTER_LIVE_68", trigger_count = 0 }
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
	suite = 2,
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
		monsters = { 77, 78, 79 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_58", "ANY_MONSTER_DIE_59", "ANY_MONSTER_DIE_60", "ANY_MONSTER_LIVE_63", "CHALLENGE_SUCCESS_64", "CHALLENGE_FAIL_65", "ANY_MONSTER_LIVE_66", "ANY_MONSTER_LIVE_67", "ANY_MONSTER_LIVE_68" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_58(context, evt)
	if 77 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58(context, evt)
	-- 延迟5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 77, delay_time = 5 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_59(context, evt)
	if 78 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_59(context, evt)
	-- 延迟5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 78, delay_time = 5 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_60(context, evt)
	if 79 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_60(context, evt)
	-- 延迟10秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 79, delay_time = 10 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_63(context, evt)
	if 77 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_63(context, evt)
	-- 创建编号为37（该挑战的识别id),挑战内容为152的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 37, 152, 60, 220000037, 5, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_64(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220000036, 91, {24}) then
		return -1
	end
	
	-- 改变指定group组220000036中， configid为91的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220000036, 91, GadgetState.Default) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000037, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_65(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220000036, 91, {24}) then
		return -1
	end
	
	-- 改变指定group组220000036中， configid为91的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220000036, 91, GadgetState.Default) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000037, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_66(context, evt)
	if 79 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_66(context, evt)
	-- 通知groupid为220000037中,configid为：79的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 79, 220000037) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_67(context, evt)
	if 77 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_67(context, evt)
	-- 通知groupid为220000037中,configid为：77的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 77, 220000037) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_68(context, evt)
	if 78 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_68(context, evt)
	-- 通知groupid为220000037中,configid为：78的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 78, 220000037) then
	  return -1
	end
	
	return 0
end
