--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 20011001, pos = { x = 10.2, y = 0.2, z = -9.6 }, rot = { x = 0.0, y = 327.6, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true },
	{ config_id = 4002, monster_id = 20011001, pos = { x = -8.5, y = 0.2, z = -9.3 }, rot = { x = 0.0, y = 27.7, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true },
	{ config_id = 4003, monster_id = 20011001, pos = { x = 0.6, y = 0.2, z = -10.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true },
	{ config_id = 4004, monster_id = 21010201, pos = { x = -12.7, y = 0.2, z = -6.1 }, rot = { x = 0.0, y = 33.8, z = 0.0 }, level = 1, affix = { 1031, 1201 }, isElite = true },
	{ config_id = 4005, monster_id = 21010201, pos = { x = 13.3, y = 0.2, z = -5.1 }, rot = { x = 0.0, y = 306.6, z = 0.0 }, level = 1, affix = { 1031, 1201 }, isElite = true },
	{ config_id = 4006, monster_id = 21011001, pos = { x = -14.9, y = 0.2, z = -6.6 }, rot = { x = 0.0, y = 51.8, z = 0.0 }, level = 1, affix = { 1031, 1201 }, isElite = true, pose_id = 32 },
	{ config_id = 4007, monster_id = 21010201, pos = { x = 9.7, y = 0.2, z = -8.2 }, rot = { x = 0.0, y = 342.7, z = 0.0 }, level = 1, affix = { 1031, 1201 }, isElite = true },
	{ config_id = 4008, monster_id = 21010201, pos = { x = 0.2, y = 0.2, z = -10.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true },
	{ config_id = 4009, monster_id = 21010201, pos = { x = -8.3, y = 0.2, z = -9.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true },
	{ config_id = 4010, monster_id = 20011101, pos = { x = 8.7, y = 0.2, z = -12.8 }, rot = { x = 0.0, y = 335.6, z = 0.0 }, level = 1, affix = { 1031, 1201 }, isElite = true },
	{ config_id = 4011, monster_id = 20011101, pos = { x = -6.6, y = 0.2, z = -10.4 }, rot = { x = 0.0, y = 29.5, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true },
	{ config_id = 4012, monster_id = 21010301, pos = { x = 5.4, y = 0.2, z = -5.8 }, rot = { x = 0.0, y = 344.4, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true },
	{ config_id = 4013, monster_id = 21010201, pos = { x = -0.5, y = 0.2, z = -7.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true },
	{ config_id = 4014, monster_id = 21010301, pos = { x = -7.8, y = 0.2, z = -4.6 }, rot = { x = 0.0, y = 21.1, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true },
	{ config_id = 4015, monster_id = 21030103, pos = { x = 0.4, y = 0.2, z = -14.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true },
	{ config_id = 4016, monster_id = 21010201, pos = { x = 9.9, y = 0.2, z = -4.5 }, rot = { x = 0.0, y = 322.0, z = 0.0 }, level = 1, affix = { 1031, 1201 }, isElite = true },
	{ config_id = 4017, monster_id = 21011001, pos = { x = 13.4, y = 0.2, z = -10.1 }, rot = { x = 0.0, y = 338.7, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4018, gadget_id = 70900205, pos = { x = 7.2, y = -1.2, z = 1.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4019, gadget_id = 70350035, pos = { x = 0.2, y = 0.0, z = 2.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_4020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4020", action = "action_EVENT_ANY_MONSTER_DIE_4020" },
	{ name = "ANY_MONSTER_DIE_4021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4021", action = "action_EVENT_ANY_MONSTER_DIE_4021" },
	{ name = "ANY_MONSTER_DIE_4022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4022", action = "action_EVENT_ANY_MONSTER_DIE_4022" },
	{ name = "ANY_MONSTER_LIVE_4023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4023", action = "action_EVENT_ANY_MONSTER_LIVE_4023" },
	{ name = "CHALLENGE_FAIL_4024", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4024" },
	{ name = "CHALLENGE_SUCCESS_4025", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_4025" }
}

-- 变量
variables = {
	{ name = "Key", value = 0, no_refresh = false }
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
		gadgets = { 4018, 4019 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_4024", "CHALLENGE_SUCCESS_4025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 4001, 4002, 4003, 4004, 4005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4020", "ANY_MONSTER_LIVE_4023", "CHALLENGE_FAIL_4024", "CHALLENGE_SUCCESS_4025" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 4012, 4013, 4014, 4015, 4016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4022", "CHALLENGE_FAIL_4024", "CHALLENGE_SUCCESS_4025" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 4006, 4007, 4008, 4009, 4017 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4021", "CHALLENGE_FAIL_4024", "CHALLENGE_SUCCESS_4025" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 4010, 4011 },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_FAIL_4024", "CHALLENGE_SUCCESS_4025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4020(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230201004, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4021(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4021(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230201004, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4022(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4022(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230201004, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4023(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4023(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1011的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1011, 230201004, 17, 4019, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4024(context, evt)
	-- 改变指定group组230201005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230201005, 5001, GadgetState.GearAction2) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230201004, suite = 1 }) then
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_4025(context, evt)
	-- 改变指定group组230201005中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230201005, 3001, GadgetState.GearAction1) then
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230201004, monsters = {}, gadgets = {4019} }) then
			return -1
		end
	
	return 0
end
