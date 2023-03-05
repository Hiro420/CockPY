--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2002, monster_id = 20011201, pos = { x = 4.0, y = 0.0, z = -14.3 }, rot = { x = 0.0, y = 353.2, z = 0.0 }, level = 5, affix = { 1010, 1018 }, isElite = true },
	{ config_id = 2003, monster_id = 20011401, pos = { x = 5.4, y = 0.0, z = 13.8 }, rot = { x = 0.0, y = 184.3, z = 0.0 }, level = 5, affix = { 1010, 1018 }, isElite = true },
	{ config_id = 2004, monster_id = 20011201, pos = { x = -6.4, y = 0.0, z = -14.5 }, rot = { x = 0.0, y = 28.2, z = 0.0 }, level = 5, affix = { 1010, 1018 }, isElite = true },
	{ config_id = 2006, monster_id = 21010501, pos = { x = 4.8, y = 0.0, z = -15.1 }, rot = { x = 0.0, y = 357.5, z = 0.0 }, level = 5, affix = { 1019 }, isElite = true },
	{ config_id = 2007, monster_id = 21010501, pos = { x = -5.6, y = 0.0, z = -15.3 }, rot = { x = 0.0, y = 2.9, z = 0.0 }, level = 5, affix = { 1019 }, isElite = true },
	{ config_id = 2008, monster_id = 20011401, pos = { x = -5.0, y = 0.0, z = 13.6 }, rot = { x = 0.0, y = 149.0, z = 0.0 }, level = 5, affix = { 1010, 1018 }, isElite = true },
	{ config_id = 2009, monster_id = 22010101, pos = { x = -0.2, y = 0.0, z = -15.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5, affix = { 1018 }, isElite = true },
	{ config_id = 2010, monster_id = 20011501, pos = { x = 0.2, y = 0.0, z = 15.1 }, rot = { x = 0.0, y = 185.8, z = 0.0 }, level = 5, affix = { 1011, 1019 }, isElite = true },
	{ config_id = 2011, monster_id = 20011401, pos = { x = 4.3, y = 0.0, z = -16.2 }, rot = { x = 0.0, y = 353.2, z = 0.0 }, level = 5, affix = { 1010, 1018 }, isElite = true },
	{ config_id = 2012, monster_id = 22010201, pos = { x = 0.2, y = 0.0, z = 18.0 }, rot = { x = 0.0, y = 185.9, z = 0.0 }, level = 5, affix = { 1018 }, isElite = true },
	{ config_id = 2013, monster_id = 21010901, pos = { x = 3.7, y = 0.0, z = 15.8 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 5, affix = { 1019 }, isElite = true },
	{ config_id = 2014, monster_id = 21010901, pos = { x = -3.5, y = 0.0, z = 15.6 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 5, affix = { 1019 }, isElite = true },
	{ config_id = 2016, monster_id = 20011401, pos = { x = -7.7, y = 0.0, z = -16.4 }, rot = { x = 0.0, y = 28.2, z = 0.0 }, level = 5, affix = { 1010, 1018 }, isElite = true },
	{ config_id = 2019, monster_id = 20011301, pos = { x = -0.2, y = 0.0, z = -16.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5, affix = { 1011, 1019 }, isElite = true },
	{ config_id = 2021, monster_id = 20010801, pos = { x = 4.2, y = 0.0, z = 12.8 }, rot = { x = 0.0, y = 197.3, z = 0.0 }, level = 5, affix = { 1010, 1018 }, isElite = true },
	{ config_id = 2022, monster_id = 20010801, pos = { x = -4.2, y = 0.0, z = 12.2 }, rot = { x = 0.0, y = 160.8, z = 0.0 }, level = 5, affix = { 1010, 1018 }, isElite = true },
	{ config_id = 2023, monster_id = 20010901, pos = { x = 0.1, y = 0.0, z = 13.7 }, rot = { x = 0.0, y = 185.8, z = 0.0 }, level = 5, affix = { 1011, 1019 }, isElite = true },
	{ config_id = 2024, monster_id = 20011501, pos = { x = -0.2, y = 0.0, z = -18.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 5, affix = { 1011, 1019 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2018, gadget_id = 70900205, pos = { x = -8.1, y = -2.0, z = -2.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2020, gadget_id = 70900291, pos = { x = -15.7, y = 0.0, z = 4.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2027, gadget_id = 70350023, pos = { x = 0.1, y = 0.0, z = 0.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_2001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2001", action = "action_EVENT_ANY_MONSTER_DIE_2001" },
	{ name = "ANY_MONSTER_LIVE_2005", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2005", action = "action_EVENT_ANY_MONSTER_LIVE_2005" },
	{ name = "ANY_MONSTER_DIE_2015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2015", action = "action_EVENT_ANY_MONSTER_DIE_2015" },
	{ name = "CHALLENGE_SUCCESS_2017", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2017" },
	{ name = "CHALLENGE_FAIL_2025", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2025" },
	{ name = "SELECT_OPTION_2028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2028", action = "action_EVENT_SELECT_OPTION_2028" }
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
		gadgets = { 2018, 2027 },
		regions = { },
		triggers = { "SELECT_OPTION_2028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 2002, 2004, 2019, 2021, 2022, 2023 },
		gadgets = { 2018, 2020 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2001", "ANY_MONSTER_LIVE_2005", "ANY_MONSTER_DIE_2015", "CHALLENGE_SUCCESS_2017", "CHALLENGE_FAIL_2025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2001(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250018002) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2001(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2010, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2024, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2003, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2008, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2011, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2016, delay_time = 1 }) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_2005(context, evt)
	if 2002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2005(context, evt)
	-- 创建编号为101（该挑战的识别id),挑战内容为10的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 10, 250018002, 18, 2027, 0) then
		return -1
	end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2015(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250018002) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2015(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2006, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2007, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2009, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2013, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2014, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2012, delay_time = 1 }) then
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
function action_EVENT_CHALLENGE_SUCCESS_2017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250018002, suite = 1 }) then
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250018003, suite = 1 }) then
			return -1
		end
	
	-- 改变指定group组250018002中， configid为2027的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250018002, 2027, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2025(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250018003, suite = 1 }) then
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250018002, suite = 1 }) then
			return -1
		end
	
	-- 改变指定group组250018002中， configid为2027的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250018002, 2027, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250018002, 2027, {104}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2028(context, evt)
	if 2027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2028(context, evt)
	-- 删除指定group： 250018002 ；指定config：2027；物件身上指定option：104；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250018002, 2027, 104) then
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250018003, suite = 2 }) then
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250018002, 2)
	
	-- 将configid为 2027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2027, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
