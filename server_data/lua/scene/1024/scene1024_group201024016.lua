--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 25, monster_id = 20040101, pos = { x = 134.2, y = -87.0, z = -200.9 }, rot = { x = 0.0, y = 271.5, z = 0.0 }, level = 1, affix = { 1006, 1021 }, isElite = true }
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
	{ name = "ANY_MONSTER_LIVE_17", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_17", action = "action_EVENT_ANY_MONSTER_LIVE_17" },
	{ name = "CHALLENGE_FAIL_18", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_18" },
	{ name = "CHALLENGE_SUCCESS_19", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_19" },
	{ name = "ANY_MONSTER_DIE_51", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51", action = "action_EVENT_ANY_MONSTER_DIE_51" }
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
		monsters = { 25 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_17", "CHALLENGE_FAIL_18", "CHALLENGE_SUCCESS_19", "ANY_MONSTER_DIE_51" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_17", "CHALLENGE_FAIL_18", "CHALLENGE_SUCCESS_19" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_17(context, evt)
	if 25 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_17(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为182的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 182, 360, 201024016, 1, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_18(context, evt)
	-- 改变指定group组201024010中， configid为107的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201024010, 107, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201024010, 107, {7}) then
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201024016, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_19(context, evt)
	-- 改变指定group组201024010中， configid为74的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201024010, 74, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51(context, evt)
	--判断死亡怪物的configid是否为 26
	if evt.param1 ~= 26 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51(context, evt)
	-- 延迟2秒后,向groupId为：201024019的对象,请求一次调用,并将string参数："Boss" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201024019, "Boss", 2) then
	  return -1
	end
	
	return 0
end
