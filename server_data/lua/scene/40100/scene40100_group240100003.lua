--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20011201, pos = { x = 5.0, y = 0.0, z = 8.5 }, rot = { x = 0.0, y = 226.1, z = 0.0 }, level = 1 },
	{ config_id = 3002, monster_id = 20011201, pos = { x = -6.4, y = 0.0, z = 7.9 }, rot = { x = 0.0, y = 135.4, z = 0.0 }, level = 1 },
	{ config_id = 3003, monster_id = 20011201, pos = { x = -8.4, y = 0.0, z = -2.0 }, rot = { x = 0.0, y = 42.1, z = 0.0 }, level = 1 },
	{ config_id = 3004, monster_id = 20011201, pos = { x = -3.3, y = 0.0, z = -8.6 }, rot = { x = 0.0, y = 31.1, z = 0.0 }, level = 1 },
	{ config_id = 3005, monster_id = 20011201, pos = { x = 6.7, y = 0.0, z = -2.0 }, rot = { x = 0.0, y = 300.2, z = 0.0 }, level = 1 },
	{ config_id = 3006, monster_id = 20011301, pos = { x = -0.2, y = 0.2, z = -4.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 4, affix = { 1006, 1009 }, isElite = true },
	{ config_id = 3008, monster_id = 20011201, pos = { x = 10.9, y = 0.1, z = -6.6 }, rot = { x = 0.0, y = 329.7, z = 0.0 }, level = 1 },
	{ config_id = 3009, monster_id = 20011201, pos = { x = 5.5, y = 0.1, z = -9.2 }, rot = { x = 0.0, y = 348.5, z = 0.0 }, level = 1 },
	{ config_id = 3010, monster_id = 20011201, pos = { x = -1.7, y = 0.1, z = -9.6 }, rot = { x = 0.0, y = 27.9, z = 0.0 }, level = 1 },
	{ config_id = 3011, monster_id = 20011201, pos = { x = -8.7, y = 0.1, z = -3.8 }, rot = { x = 0.0, y = 37.0, z = 0.0 }, level = 1 },
	{ config_id = 3012, monster_id = 20011201, pos = { x = 9.7, y = 0.1, z = -0.2 }, rot = { x = 0.0, y = 321.8, z = 0.0 }, level = 1 },
	{ config_id = 3014, monster_id = 20011201, pos = { x = -12.7, y = 0.1, z = -1.9 }, rot = { x = 0.0, y = 55.3, z = 0.0 }, level = 1 },
	{ config_id = 3015, monster_id = 20011201, pos = { x = 5.3, y = 0.4, z = -2.1 }, rot = { x = 0.0, y = 284.9, z = 0.0 }, level = 1 },
	{ config_id = 3016, monster_id = 20011201, pos = { x = -8.0, y = 0.2, z = 4.3 }, rot = { x = 0.0, y = 140.9, z = 0.0 }, level = 1 },
	{ config_id = 3019, monster_id = 20011201, pos = { x = -10.8, y = 0.1, z = 7.1 }, rot = { x = 0.0, y = 123.8, z = 0.0 }, level = 1 },
	{ config_id = 3020, monster_id = 20011201, pos = { x = 7.2, y = 0.1, z = 6.2 }, rot = { x = 0.0, y = 229.5, z = 0.0 }, level = 1 },
	{ config_id = 3021, monster_id = 20011201, pos = { x = -0.1, y = 0.1, z = 10.0 }, rot = { x = 0.0, y = 185.4, z = 0.0 }, level = 1 },
	{ config_id = 3022, monster_id = 20011201, pos = { x = -6.6, y = 0.0, z = -6.2 }, rot = { x = 0.0, y = 31.1, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3017, gadget_id = 70900205, pos = { x = -0.8, y = -0.7, z = 8.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_3", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3", action = "action_EVENT_ANY_MONSTER_LIVE_3" },
	{ name = "CHALLENGE_FAIL_4", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4" },
	{ name = "ANY_MONSTER_DIE_9", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9", action = "action_EVENT_ANY_MONSTER_DIE_9" },
	{ name = "ANY_MONSTER_DIE_10", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10", action = "action_EVENT_ANY_MONSTER_DIE_10" },
	{ name = "ANY_MONSTER_DIE_11", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11", action = "action_EVENT_ANY_MONSTER_DIE_11" },
	{ name = "ANY_MONSTER_DIE_12", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12", action = "action_EVENT_ANY_MONSTER_DIE_12" },
	{ name = "ANY_MONSTER_DIE_3007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3007", action = "action_EVENT_ANY_MONSTER_DIE_3007" },
	{ name = "ANY_MONSTER_DIE_3013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3013", action = "action_EVENT_ANY_MONSTER_DIE_3013" },
	{ name = "ANY_MONSTER_DIE_3018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3018", action = "action_EVENT_ANY_MONSTER_DIE_3018" }
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
	end_suite = 1,
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
		gadgets = { 3017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3008, 3009, 3010, 3011, 3012 },
		gadgets = { 3017 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3", "CHALLENGE_FAIL_4", "ANY_MONSTER_DIE_9", "ANY_MONSTER_DIE_10", "ANY_MONSTER_DIE_11", "ANY_MONSTER_DIE_12", "ANY_MONSTER_DIE_3007", "ANY_MONSTER_DIE_3013", "ANY_MONSTER_DIE_3018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3(context, evt)
	if 3008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为158的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 158, 240100003, 18, 40, 10) then
		return -1
	end
	
	-- 删除指定group： 240100001 ；指定config：1002；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240100001, 1002, 7) then
		return -1
	end
	
	-- 改变指定group组240100001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240100001, 1002, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240100001, 1002, {7}) then
		return -1
	end
	
	-- 改变指定group组240100001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240100001, 1002, GadgetState.Default) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240100009, suite = 2 }) then
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240100003, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9(context, evt)
	if 3008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3014, delay_time = 1 }) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10(context, evt)
	if 3009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3019, delay_time = 1 }) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11(context, evt)
	if 3010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3020, delay_time = 1 }) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_12(context, evt)
	if 3011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3021, delay_time = 1 }) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3007(context, evt)
	--判断死亡怪物的configid是否为 3012
	if evt.param1 ~= 3012 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3007(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3022, delay_time = 1 }) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3013(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240100003) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为0
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 0 then
			return false
	end
	
	-- 判断变量"C1"为5
	if ScriptLib.GetGroupVariableValue(context, "C1") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3013(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3003, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3004, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3005, delay_time = 0 }) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3018(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240100003) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为1
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3018(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3006, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3015, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3016, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
