--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 156, monster_id = 20010101, pos = { x = 2810.1, y = 207.5, z = 371.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_id = 1000100 },
	{ config_id = 157, monster_id = 20010101, pos = { x = 2816.8, y = 207.3, z = 372.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_id = 1000100 },
	{ config_id = 158, monster_id = 20010101, pos = { x = 2811.7, y = 207.9, z = 364.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_id = 1000100 }
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
	{ name = "CHALLENGE_SUCCESS_51", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_51", tlog_tag = "风龙_176_草史莱姆挑战_成功" },
	{ name = "CHALLENGE_FAIL_52", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_52", tlog_tag = "风龙_176_草史莱姆挑战_失败" },
	{ name = "ANY_MONSTER_LIVE_181", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_181", action = "action_EVENT_ANY_MONSTER_LIVE_181", trigger_count = 0 }
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
		monsters = { 156, 157, 158 },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_51", "CHALLENGE_FAIL_52", "ANY_MONSTER_LIVE_181" },
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
function action_EVENT_CHALLENGE_SUCCESS_51(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133007177, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_52(context, evt)
	-- 改变指定group组133007100中， configid为377的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133007100, 377, GadgetState.Default) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133007176, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_181(context, evt)
	if 156 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_181(context, evt)
	-- 创建编号为100（该挑战的识别id),挑战内容为148的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 100, 148, 30, 133007176, 3, 0) then
		return -1
	end
	
	return 0
end
