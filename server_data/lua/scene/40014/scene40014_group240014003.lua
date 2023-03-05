--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 22010301, pos = { x = 533.0, y = -2.0, z = 253.6 }, rot = { x = 0.0, y = 178.0, z = 0.0 }, level = 1 },
	{ config_id = 3002, monster_id = 20010801, pos = { x = 528.0, y = -2.1, z = 240.9 }, rot = { x = 0.0, y = 178.5, z = 0.0 }, level = 1 },
	{ config_id = 3003, monster_id = 20010801, pos = { x = 538.4, y = -2.1, z = 241.0 }, rot = { x = 0.0, y = 181.7, z = 0.0 }, level = 1 },
	{ config_id = 3004, monster_id = 20010801, pos = { x = 527.8, y = -2.0, z = 246.1 }, rot = { x = 0.0, y = 149.4, z = 0.0 }, level = 1 },
	{ config_id = 3005, monster_id = 20010801, pos = { x = 538.2, y = -1.9, z = 245.8 }, rot = { x = 0.0, y = 152.1, z = 0.0 }, level = 1 },
	{ config_id = 3006, monster_id = 21010901, pos = { x = 526.5, y = -2.0, z = 253.1 }, rot = { x = 0.0, y = 184.3, z = 0.0 }, level = 1 },
	{ config_id = 3007, monster_id = 21010901, pos = { x = 539.7, y = -2.0, z = 253.3 }, rot = { x = 0.0, y = 186.0, z = 0.0 }, level = 1 }
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
	{ name = "CHALLENGE_FAIL_3008", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3008", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_3009", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3009", action = "action_EVENT_ANY_MONSTER_LIVE_3009", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_3010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3010", trigger_count = 0 }
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
		triggers = { "CHALLENGE_FAIL_3008", "ANY_MONSTER_LIVE_3009", "CHALLENGE_SUCCESS_3010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3001, 3002, 3003, 3004, 3005, 3006, 3007 },
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

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3008(context, evt)
	-- 改变指定group组240014001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240014001, 1001, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240014003, suite = 1 }) then
			return -1
		end
	
	-- 改变指定group组240014001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240014001, 1002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3009(context, evt)
	if 3002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3009(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为6的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 6, 240014003, 7, 5, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240014001, 2)
	
	-- 改变指定group组240014001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240014001, 1001, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
