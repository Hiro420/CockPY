--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20011001, pos = { x = 3.1, y = 0.0, z = 6.7 }, rot = { x = 0.0, y = 198.0, z = 0.0 }, level = 1 },
	{ config_id = 1002, monster_id = 20011001, pos = { x = 7.4, y = 0.0, z = -1.8 }, rot = { x = 0.0, y = 293.2, z = 0.0 }, level = 1 },
	{ config_id = 1003, monster_id = 20011001, pos = { x = 7.5, y = 0.0, z = -5.4 }, rot = { x = 0.0, y = 322.8, z = 0.0 }, level = 1 },
	{ config_id = 1009, monster_id = 22010301, pos = { x = 1.6, y = 0.2, z = -5.7 }, rot = { x = 0.0, y = 349.8, z = 0.0 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 1010, monster_id = 20011001, pos = { x = -2.6, y = 0.2, z = -2.4 }, rot = { x = 0.0, y = 61.6, z = 0.0 }, level = 1 },
	{ config_id = 1015, monster_id = 20011001, pos = { x = 4.0, y = 0.1, z = -7.1 }, rot = { x = 0.0, y = 344.6, z = 0.0 }, level = 1 },
	{ config_id = 1016, monster_id = 20011001, pos = { x = -3.1, y = 0.1, z = 9.4 }, rot = { x = 0.0, y = 155.5, z = 0.0 }, level = 1 },
	{ config_id = 1017, monster_id = 20011001, pos = { x = -6.0, y = 0.1, z = -3.7 }, rot = { x = 0.0, y = 70.4, z = 0.0 }, level = 1 },
	{ config_id = 1018, monster_id = 20011001, pos = { x = 5.3, y = 0.1, z = 7.0 }, rot = { x = 0.0, y = 215.6, z = 0.0 }, level = 1 },
	{ config_id = 1019, monster_id = 20011001, pos = { x = -7.7, y = 0.1, z = 2.2 }, rot = { x = 0.0, y = 96.4, z = 0.0 }, level = 1 },
	{ config_id = 1020, monster_id = 20011001, pos = { x = 6.4, y = 0.1, z = 3.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1021, monster_id = 20011001, pos = { x = -1.2, y = 0.1, z = -6.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1022, monster_id = 20011101, pos = { x = -6.2, y = 0.3, z = 6.5 }, rot = { x = 0.0, y = 145.4, z = 0.0 }, level = 1, affix = { 1006, 1009 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1011, gadget_id = 70900205, pos = { x = 8.4, y = -1.5, z = 0.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_1", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1", action = "action_EVENT_ANY_MONSTER_LIVE_1" },
	{ name = "CHALLENGE_FAIL_17", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_17" }
}

-- 变量
variables = {
	{ name = "Key", value = 0, no_refresh = false },
	{ name = "C1", value = 0, no_refresh = false }
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
		gadgets = { 1011 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_1", "CHALLENGE_FAIL_17" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_1(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_1(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为161的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 161, 200, 240300001, 13, 0) then
		return -1
	end
	
	-- 删除指定group： 240300002 ；指定config：1；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240300002, 1, 7) then
		return -1
	end
	
	-- 改变指定group组240300002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240300002, 1, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_17(context, evt)
	-- 改变指定group组240300002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240300002, 1, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240300002, 1, {7}) then
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240300001, suite = 1 }) then
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240300007, suite = 1 }) then
			return -1
		end
	
	return 0
end
