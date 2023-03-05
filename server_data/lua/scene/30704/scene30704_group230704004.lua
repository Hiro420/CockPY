--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 22010302, pos = { x = -0.1, y = 0.0, z = -10.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 4006, monster_id = 21010301, pos = { x = -6.8, y = 0.0, z = -8.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 4007, monster_id = 21010301, pos = { x = -10.0, y = 0.0, z = 0.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 4008, monster_id = 21010301, pos = { x = 10.0, y = 0.0, z = 0.0 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 4009, monster_id = 21010301, pos = { x = 6.9, y = 0.0, z = -9.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 4010, monster_id = 21020101, pos = { x = 0.0, y = 0.0, z = 10.0 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4002, gadget_id = 70900205, pos = { x = 6.2, y = -1.2, z = 3.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_4003", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4003", action = "action_EVENT_ANY_MONSTER_LIVE_4003" },
	{ name = "CHALLENGE_SUCCESS_4004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_4004" },
	{ name = "CHALLENGE_FAIL_4005", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4005" },
	{ name = "MONSTER_TIDE_DIE_4011", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "", condition = "condition_EVENT_MONSTER_TIDE_DIE_4011", action = "action_EVENT_MONSTER_TIDE_DIE_4011" },
	{ name = "MONSTER_TIDE_DIE_4013", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "", condition = "condition_EVENT_MONSTER_TIDE_DIE_4013", action = "action_EVENT_MONSTER_TIDE_DIE_4013" }
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
		gadgets = { 4002 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_4003", "CHALLENGE_SUCCESS_4004", "CHALLENGE_FAIL_4005", "MONSTER_TIDE_DIE_4011", "MONSTER_TIDE_DIE_4013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4003(context, evt)
	if 4007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4003(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为198的区域挑战，param1必须为时间
	-- 从230704001的变量TPL_TIME中取出对应值并开启挑战
	  local tpl_time = ScriptLib.GetGroupVariableValueByGroup(context, "TPL_TIME", 230704001)
	  if tpl_time == nil or tpl_time < 0 then
	    return -1
	  elseif tpl_time < 1 then
	    tpl_time = 0
	  end
	  if 0 ~= ScriptLib.ActiveChallenge(context, 2, 198, tpl_time, 230704004, 22, 0) then
	    return -1
	  end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_4004(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 230704001) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230704004, suite = 1 }) then
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_4011(context, evt)
	if 10 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_4011(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4010, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_4013(context, evt)
	if 14 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_4013(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4001, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end
