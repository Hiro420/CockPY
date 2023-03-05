--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 21020101, pos = { x = 348.4, y = -19.3, z = 336.9 }, rot = { x = 0.0, y = 348.3, z = 0.0 }, level = 1, disableWander = true, affix = { 1001, 1002 }, isElite = true },
	{ config_id = 5002, monster_id = 21020101, pos = { x = 338.2, y = -19.3, z = 336.9 }, rot = { x = 0.0, y = 16.1, z = 0.0 }, level = 1, disableWander = true, affix = { 1001, 1002 }, isElite = true },
	{ config_id = 5003, monster_id = 21030101, pos = { x = 346.1, y = -19.3, z = 334.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 5004, monster_id = 21030101, pos = { x = 339.4, y = -19.3, z = 334.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true }
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
	{ name = "ANY_MONSTER_LIVE_12", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_12", action = "action_EVENT_ANY_MONSTER_LIVE_12" },
	{ name = "CHALLENGE_FAIL_13", event = EventType.EVENT_CHALLENGE_FAIL, source = "1002", condition = "", action = "action_EVENT_CHALLENGE_FAIL_13" },
	{ name = "CHALLENGE_SUCCESS_14", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1002", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_14" }
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
	end_suite = 1,
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 5001, 5002, 5003, 5004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_12", "CHALLENGE_FAIL_13", "CHALLENGE_SUCCESS_14" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_12(context, evt)
	if 5002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_12(context, evt)
	-- 创建编号为1002（该挑战的识别id),挑战内容为120的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1002, 120, 60, 250006005, 4, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_13(context, evt)
	-- 改变指定group组250006004中， configid为15的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250006004, 15, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250006004, 15, {104}) then
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250006005, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_14(context, evt)
	-- 改变指定group组250006001中， configid为12的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250006001, 12, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组250006001中， configid为13的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250006001, 13, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
