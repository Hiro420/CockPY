--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20010501, pos = { x = 7.1, y = 0.1, z = -6.3 }, rot = { x = 0.0, y = 346.5, z = 0.0 }, level = 1 },
	{ config_id = 3002, monster_id = 20010501, pos = { x = -6.1, y = 0.1, z = -6.3 }, rot = { x = 0.0, y = 21.5, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 3003, monster_id = 21010301, pos = { x = -5.7, y = 0.1, z = -11.2 }, rot = { x = 0.0, y = 18.6, z = 0.0 }, level = 1 },
	{ config_id = 3004, monster_id = 21010301, pos = { x = 0.8, y = 0.1, z = -12.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3005, monster_id = 21010301, pos = { x = 8.7, y = 0.1, z = -13.0 }, rot = { x = 0.0, y = 343.7, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 3006, monster_id = 20010501, pos = { x = -10.4, y = 0.1, z = -2.4 }, rot = { x = 0.0, y = 64.8, z = 0.0 }, level = 1 },
	{ config_id = 3007, monster_id = 20010501, pos = { x = 12.7, y = 0.1, z = -2.1 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1 },
	{ config_id = 3008, monster_id = 20010501, pos = { x = 1.1, y = 0.1, z = 6.3 }, rot = { x = 0.0, y = 182.8, z = 0.0 }, level = 1 },
	{ config_id = 3009, monster_id = 20010601, pos = { x = 5.3, y = 0.1, z = -8.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3010, monster_id = 20010701, pos = { x = -5.0, y = 0.1, z = -8.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3011, monster_id = 21010301, pos = { x = 12.9, y = 0.1, z = 0.4 }, rot = { x = 0.0, y = 315.3, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 3012, monster_id = 21010301, pos = { x = 12.4, y = 0.1, z = -9.4 }, rot = { x = 0.0, y = 322.1, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 3013, monster_id = 21010301, pos = { x = 0.4, y = 0.1, z = -11.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 3014, monster_id = 21010301, pos = { x = -12.1, y = 0.1, z = -6.4 }, rot = { x = 0.0, y = 50.2, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 3015, monster_id = 21010301, pos = { x = -13.6, y = 0.1, z = 1.1 }, rot = { x = 0.0, y = 76.2, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 3016, monster_id = 21020101, pos = { x = 1.0, y = 0.1, z = -7.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 3017, monster_id = 20010501, pos = { x = -10.6, y = 0.1, z = 0.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3018, monster_id = 20010501, pos = { x = 10.4, y = 0.1, z = -2.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3019, monster_id = 20010501, pos = { x = -0.8, y = 0.1, z = 8.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3020, monster_id = 20010501, pos = { x = 5.4, y = 0.1, z = 6.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3021, gadget_id = 70900205, pos = { x = 7.1, y = -1.3, z = 1.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3028, gadget_id = 70350035, pos = { x = 0.0, y = 0.0, z = 0.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_3022", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3022", action = "action_EVENT_ANY_MONSTER_LIVE_3022" },
	{ name = "MONSTER_TIDE_OVER_3023", event = EventType.EVENT_MONSTER_TIDE_OVER, source = "1", condition = "", action = "action_EVENT_MONSTER_TIDE_OVER_3023" },
	{ name = "CHALLENGE_SUCCESS_3026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3026" },
	{ name = "CHALLENGE_FAIL_3027", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3027" }
}

-- 变量
variables = {
	{ name = "Key", value = 0, no_refresh = false }
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
		gadgets = { 3021, 3028 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3022", "MONSTER_TIDE_OVER_3023", "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 3021, 3028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 3021, 3028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 3021, 3028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 3021, 3028 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3022(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3022(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为192的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 192, 240500003, 20, 3028, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_MONSTER_TIDE_OVER_3023(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3017, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3018, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3019, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3020, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3016, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3026(context, evt)
	-- 改变指定group组240500001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240500001, 1002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240500005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240500005, 5001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3027(context, evt)
	-- 改变指定group组240500005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240500005, 5001, GadgetState.GearAction2) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240500005, 5001, {7}) then
		return -1
	end
	
	-- 改变指定group组240500001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240500001, 1001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240500001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240500001, 1002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240500003, suite = 1 }) then
			return -1
		end
	
	return 0
end
