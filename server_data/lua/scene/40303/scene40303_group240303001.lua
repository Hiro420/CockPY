--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20011001, pos = { x = -7.0, y = 0.0, z = -8.2 }, rot = { x = 0.0, y = 25.2, z = 0.0 }, level = 1 },
	{ config_id = 1002, monster_id = 20011101, pos = { x = 7.1, y = 0.0, z = -9.3 }, rot = { x = 0.0, y = 320.8, z = 0.0 }, level = 1 },
	{ config_id = 1003, monster_id = 20011101, pos = { x = -0.6, y = 0.0, z = -8.7 }, rot = { x = 0.0, y = 0.3, z = 0.0 }, level = 1 },
	{ config_id = 1004, monster_id = 20011001, pos = { x = -11.4, y = 0.0, z = 1.2 }, rot = { x = 0.0, y = 118.0, z = 0.0 }, level = 1 },
	{ config_id = 1005, monster_id = 20011001, pos = { x = 8.9, y = 0.0, z = 1.8 }, rot = { x = 0.0, y = 257.9, z = 0.0 }, level = 1 },
	{ config_id = 1006, monster_id = 20011001, pos = { x = -8.8, y = 0.0, z = 8.5 }, rot = { x = 0.0, y = 145.8, z = 0.0 }, level = 1 },
	{ config_id = 1007, monster_id = 20011001, pos = { x = 6.4, y = 0.0, z = 11.1 }, rot = { x = 0.0, y = 207.3, z = 0.0 }, level = 1 },
	{ config_id = 1008, monster_id = 22010301, pos = { x = 1.6, y = 0.2, z = -5.7 }, rot = { x = 0.0, y = 349.8, z = 0.0 }, level = 1, affix = { 1009, 1012 }, isElite = true },
	{ config_id = 1009, monster_id = 20011101, pos = { x = -2.6, y = 0.2, z = -2.4 }, rot = { x = 0.0, y = 61.6, z = 0.0 }, level = 1 },
	{ config_id = 1013, monster_id = 21010901, pos = { x = 8.9, y = 0.1, z = -5.6 }, rot = { x = 0.0, y = 318.9, z = 0.0 }, level = 1 },
	{ config_id = 1014, monster_id = 20011001, pos = { x = -7.0, y = 0.1, z = 10.8 }, rot = { x = 0.0, y = 155.5, z = 0.0 }, level = 1 },
	{ config_id = 1015, monster_id = 21010901, pos = { x = -11.8, y = 0.1, z = -4.1 }, rot = { x = 0.0, y = 42.6, z = 0.0 }, level = 1 },
	{ config_id = 1016, monster_id = 20011001, pos = { x = 8.2, y = 0.1, z = 9.0 }, rot = { x = 0.0, y = 215.6, z = 0.0 }, level = 1 },
	{ config_id = 1017, monster_id = 20011101, pos = { x = -1.2, y = 0.1, z = -12.2 }, rot = { x = 0.0, y = 0.8, z = 0.0 }, level = 1 },
	{ config_id = 1018, monster_id = 20011001, pos = { x = 12.2, y = 0.1, z = 2.2 }, rot = { x = 0.0, y = 266.1, z = 0.0 }, level = 1 },
	{ config_id = 1019, monster_id = 21010901, pos = { x = -14.1, y = 0.1, z = 2.2 }, rot = { x = 0.0, y = 93.6, z = 0.0 }, level = 1 },
	{ config_id = 1020, monster_id = 20011001, pos = { x = -0.7, y = 0.0, z = 11.2 }, rot = { x = 0.0, y = 180.9, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1010, gadget_id = 70900205, pos = { x = -7.2, y = -1.2, z = -2.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
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
		gadgets = { 1010 },
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
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 161, 360, 240303001, 17, 0) then
		return -1
	end
	
	-- 删除指定group： 240303002 ；指定config：1；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240303002, 1, 7) then
		return -1
	end
	
	-- 改变指定group组240303002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240303002, 1, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_17(context, evt)
	-- 改变指定group组240303002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240303002, 1, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240303002, 1, {7}) then
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240303001, suite = 1 }) then
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240303007, suite = 1 }) then
			return -1
		end
	
	return 0
end
