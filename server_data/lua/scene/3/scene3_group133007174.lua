--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 256, monster_id = 20011201, pos = { x = 2541.4, y = 217.6, z = -98.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_id = 1000100 },
	{ config_id = 257, monster_id = 20011201, pos = { x = 2537.8, y = 217.6, z = -106.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_id = 1000100 },
	{ config_id = 258, monster_id = 20011201, pos = { x = 2533.0, y = 217.6, z = -100.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_id = 1000100 }
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
	{ name = "CHALLENGE_SUCCESS_48", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "99", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_48", tlog_tag = "风龙_174_火史莱姆挑战_成功" },
	{ name = "CHALLENGE_FAIL_49", event = EventType.EVENT_CHALLENGE_FAIL, source = "99", condition = "", action = "action_EVENT_CHALLENGE_FAIL_49", tlog_tag = "风龙_174_火史莱姆挑战_失败" },
	{ name = "ANY_MONSTER_LIVE_54", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_54", action = "action_EVENT_ANY_MONSTER_LIVE_54", trigger_count = 0 }
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
		monsters = { 256, 257, 258 },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_48", "CHALLENGE_FAIL_49", "ANY_MONSTER_LIVE_54" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_48(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133007175, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_49(context, evt)
	-- 改变指定group组133007099中， configid为371的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133007099, 371, GadgetState.Default) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133007174, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_54(context, evt)
	if 256 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_54(context, evt)
	-- 创建编号为99（该挑战的识别id),挑战内容为151的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 99, 151, 30, 133007174, 3, 0) then
		return -1
	end
	
	return 0
end
