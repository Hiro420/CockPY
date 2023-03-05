--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 21030302, pos = { x = 0.0, y = 0.0, z = -10.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4002, monster_id = 21010402, pos = { x = -2.0, y = 0.0, z = 9.9 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4004, monster_id = 21010402, pos = { x = 2.0, y = 0.0, z = 10.0 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4005, monster_id = 23020101, pos = { x = 0.0, y = 0.0, z = -10.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4006, monster_id = 21010502, pos = { x = -2.0, y = 0.0, z = 10.0 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4008, monster_id = 21010502, pos = { x = 2.1, y = 0.0, z = 10.0 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 4009, monster_id = 21030303, pos = { x = 0.0, y = 0.0, z = -10.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4003, gadget_id = 70350031, pos = { x = 0.2, y = 0.0, z = 6.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4024, gadget_id = 70900205, pos = { x = 6.2, y = -1.2, z = 3.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_4025", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4025", action = "action_EVENT_ANY_MONSTER_LIVE_4025" },
	{ name = "ANY_MONSTER_DIE_4026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4026", action = "action_EVENT_ANY_MONSTER_DIE_4026" },
	{ name = "ANY_MONSTER_DIE_4027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4027", action = "action_EVENT_ANY_MONSTER_DIE_4027" },
	{ name = "CHALLENGE_SUCCESS_4029", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_4029" },
	{ name = "CHALLENGE_FAIL_4030", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4030" }
}

-- 变量
variables = {
	{ name = "monster_wave", value = 0, no_refresh = false }
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
		gadgets = { 4024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 4001, 4002, 4004 },
		gadgets = { 4003, 4024 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_4025", "ANY_MONSTER_DIE_4026", "CHALLENGE_SUCCESS_4029", "CHALLENGE_FAIL_4030" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 4006, 4008, 4009 },
		gadgets = { 4003, 4024 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4027", "CHALLENGE_SUCCESS_4029", "CHALLENGE_FAIL_4030" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 4005 },
		gadgets = { 4003, 4024 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_4029", "CHALLENGE_FAIL_4030" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4025(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4025(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为198的区域挑战，param1必须为时间
	-- 从231003001的变量TPL_TIME中取出对应值并开启挑战
	  local tpl_time = ScriptLib.GetGroupVariableValueByGroup(context, "TPL_TIME", 231003001)
	  if tpl_time == nil or tpl_time < 0 then
	    return -1
	  elseif tpl_time < 1 then
	    tpl_time = 0
	  end
	  if 0 ~= ScriptLib.ActiveChallenge(context, 2, 198, tpl_time, 231003004, 7, 0) then
	    return -1
	  end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	-- 改变指定group组231003004中， configid为4003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231003004, 4003, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4026(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231003004) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4026(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231003004, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4027(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231003004) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4027(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231003004, 4)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_4029(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 231003001) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4003 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4030(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 231003004, suite = 1 }) then
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		return -1
	end
	
	return 0
end
