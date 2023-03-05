--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 20011401, pos = { x = 11.2, y = -0.1, z = -6.8 }, rot = { x = 0.0, y = 324.8, z = 0.0 }, level = 1 },
	{ config_id = 2002, monster_id = 20011401, pos = { x = 8.9, y = -0.1, z = 9.0 }, rot = { x = 0.0, y = 231.1, z = 0.0 }, level = 1 },
	{ config_id = 2003, monster_id = 20011401, pos = { x = -10.1, y = -0.1, z = 9.3 }, rot = { x = 0.0, y = 129.7, z = 0.0 }, level = 1 },
	{ config_id = 2004, monster_id = 20011401, pos = { x = -13.4, y = -0.1, z = -6.8 }, rot = { x = 0.0, y = 58.7, z = 0.0 }, level = 1 },
	{ config_id = 2005, monster_id = 20011401, pos = { x = 0.0, y = -0.1, z = -11.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2006, monster_id = 20011401, pos = { x = -0.1, y = -0.1, z = 11.0 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 2007, monster_id = 20011401, pos = { x = 12.5, y = -0.2, z = -8.0 }, rot = { x = 0.0, y = 324.8, z = 0.0 }, level = 1 },
	{ config_id = 2008, monster_id = 21011201, pos = { x = 10.2, y = 0.0, z = 10.1 }, rot = { x = 0.0, y = 233.1, z = 0.0 }, level = 1 },
	{ config_id = 2009, monster_id = 21011201, pos = { x = -11.3, y = 0.1, z = 10.3 }, rot = { x = 0.0, y = 127.9, z = 0.0 }, level = 1 },
	{ config_id = 2010, monster_id = 20011401, pos = { x = -14.5, y = 0.2, z = -7.3 }, rot = { x = 0.0, y = 58.7, z = 0.0 }, level = 1 },
	{ config_id = 2011, monster_id = 21010402, pos = { x = -2.0, y = 0.0, z = 11.4 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 2012, monster_id = 21011201, pos = { x = -0.1, y = -0.1, z = 11.0 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 2013, monster_id = 21020301, pos = { x = 0.0, y = -0.1, z = -13.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2016, monster_id = 21011201, pos = { x = 12.5, y = -0.2, z = -8.0 }, rot = { x = 0.0, y = 324.8, z = 0.0 }, level = 1 },
	{ config_id = 2017, monster_id = 21011201, pos = { x = 10.2, y = 0.0, z = 10.1 }, rot = { x = 0.0, y = 233.1, z = 0.0 }, level = 1 },
	{ config_id = 2018, monster_id = 21011201, pos = { x = -11.3, y = 0.1, z = 10.3 }, rot = { x = 0.0, y = 127.9, z = 0.0 }, level = 1 },
	{ config_id = 2019, monster_id = 21011201, pos = { x = -14.5, y = 0.2, z = -7.3 }, rot = { x = 0.0, y = 58.7, z = 0.0 }, level = 1 },
	{ config_id = 2020, monster_id = 21011201, pos = { x = 0.0, y = 0.0, z = -12.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2021, monster_id = 21011201, pos = { x = -0.1, y = -0.1, z = 11.0 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 2029, monster_id = 20011401, pos = { x = 11.5, y = 0.2, z = -7.1 }, rot = { x = 0.0, y = 319.6, z = 0.0 }, level = 1 },
	{ config_id = 2030, monster_id = 21010402, pos = { x = 2.1, y = 0.0, z = 11.1 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 2032, monster_id = 21030401, pos = { x = -0.1, y = -0.1, z = 11.4 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2022, gadget_id = 70900205, pos = { x = 5.7, y = -1.9, z = 6.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_2023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2023", action = "action_EVENT_ANY_MONSTER_LIVE_2023" },
	{ name = "CHALLENGE_SUCCESS_2024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2024" },
	{ name = "CHALLENGE_FAIL_2025", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2025" },
	{ name = "ANY_MONSTER_DIE_2026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2026", action = "action_EVENT_ANY_MONSTER_DIE_2026", trigger_count = 15 },
	{ name = "ANY_MONSTER_DIE_2027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2027", action = "action_EVENT_ANY_MONSTER_DIE_2027", trigger_count = 15 },
	{ name = "ANY_MONSTER_DIE_2028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2028", action = "action_EVENT_ANY_MONSTER_DIE_2028", trigger_count = 15 }
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
		gadgets = { 2022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 2001, 2002, 2003, 2004, 2005, 2006 },
		gadgets = { 2022 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_2023", "CHALLENGE_SUCCESS_2024", "CHALLENGE_FAIL_2025", "ANY_MONSTER_DIE_2027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 2007, 2008, 2009, 2010, 2012, 2029 },
		gadgets = { 2022 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_2024", "CHALLENGE_FAIL_2025", "ANY_MONSTER_DIE_2026" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 2016, 2017, 2018, 2019, 2020, 2021 },
		gadgets = { 2022 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_2024", "CHALLENGE_FAIL_2025", "ANY_MONSTER_DIE_2028" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 2011, 2013, 2030, 2032 },
		gadgets = { 2022 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_2024", "CHALLENGE_FAIL_2025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_2023(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2023(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为2的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 2, 360, 240702002, 22, 0) then
		return -1
	end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2024(context, evt)
	-- 改变指定group组240702001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240702001, 1002, GadgetState.GearStop) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240702003, suite = 1 }) then
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240702002, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2025(context, evt)
	-- 改变指定group组240702001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240702001, 1001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240702001, 1001, {7}) then
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240702003, suite = 1 }) then
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240702002, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2026(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240702002) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2026(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240702002, 4)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2027(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240702002) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2027(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240702002, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2028(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240702002) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为3
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2028(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240702002, 5)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end
