--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 381, monster_id = 20011001, pos = { x = 2300.3, y = 230.2, z = -50.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_id = 1000100 },
	{ config_id = 382, monster_id = 20011001, pos = { x = 2296.7, y = 231.1, z = -59.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_id = 1000100 },
	{ config_id = 383, monster_id = 20011001, pos = { x = 2291.9, y = 230.6, z = -52.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_id = 1000100 }
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
	{ name = "CHALLENGE_SUCCESS_244", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "217", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_244", tlog_tag = "风龙_218_水史莱姆挑战_成功" },
	{ name = "CHALLENGE_FAIL_245", event = EventType.EVENT_CHALLENGE_FAIL, source = "217", condition = "", action = "action_EVENT_CHALLENGE_FAIL_245", tlog_tag = "风龙_218_水史莱姆挑战_失败" },
	{ name = "ANY_MONSTER_LIVE_246", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_246", action = "action_EVENT_ANY_MONSTER_LIVE_246", trigger_count = 0, tlog_tag = "风龙_218_水史莱姆挑战_开始" }
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
		monsters = { 381, 382, 383 },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_244", "CHALLENGE_FAIL_245", "ANY_MONSTER_LIVE_246" },
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
function action_EVENT_CHALLENGE_SUCCESS_244(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133007219, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_245(context, evt)
	-- 改变指定group组133007217中， configid为951的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133007217, 951, GadgetState.Default) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133007218, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_246(context, evt)
	if 381 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_246(context, evt)
	-- 创建编号为217（该挑战的识别id),挑战内容为156的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 217, 156, 30, 133007218, 3, 0) then
		return -1
	end
	
	return 0
end
