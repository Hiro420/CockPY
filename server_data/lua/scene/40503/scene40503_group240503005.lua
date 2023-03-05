--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 20010501, pos = { x = 7.1, y = 0.1, z = -8.4 }, rot = { x = 0.0, y = 346.5, z = 0.0 }, level = 1 },
	{ config_id = 5002, monster_id = 20010501, pos = { x = -6.2, y = 0.1, z = -8.4 }, rot = { x = 0.0, y = 21.5, z = 0.0 }, level = 1 },
	{ config_id = 5003, monster_id = 21010301, pos = { x = -5.7, y = 0.1, z = -13.3 }, rot = { x = 0.0, y = 18.6, z = 0.0 }, level = 1 },
	{ config_id = 5004, monster_id = 21010301, pos = { x = 0.8, y = 0.1, z = -14.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5005, monster_id = 21010301, pos = { x = 8.7, y = 0.1, z = -15.1 }, rot = { x = 0.0, y = 343.7, z = 0.0 }, level = 1 },
	{ config_id = 5006, monster_id = 20010501, pos = { x = -10.4, y = 0.1, z = -4.5 }, rot = { x = 0.0, y = 64.8, z = 0.0 }, level = 1 },
	{ config_id = 5007, monster_id = 20010501, pos = { x = 12.7, y = 0.1, z = -4.2 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1 },
	{ config_id = 5008, monster_id = 20010501, pos = { x = 1.1, y = 0.1, z = 4.2 }, rot = { x = 0.0, y = 182.8, z = 0.0 }, level = 1 },
	{ config_id = 5009, monster_id = 20010601, pos = { x = 5.3, y = 0.1, z = -10.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5010, monster_id = 20010701, pos = { x = -5.0, y = 0.1, z = -11.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5011, monster_id = 21010301, pos = { x = 12.9, y = 0.1, z = -1.7 }, rot = { x = 0.0, y = 315.3, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 5012, monster_id = 21010301, pos = { x = 12.4, y = 0.1, z = -11.5 }, rot = { x = 0.0, y = 322.1, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 5013, monster_id = 21010301, pos = { x = 0.4, y = 0.1, z = -13.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 5014, monster_id = 21010301, pos = { x = -12.1, y = 0.1, z = -8.5 }, rot = { x = 0.0, y = 50.2, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true, pose_id = 0 },
	{ config_id = 5015, monster_id = 21010301, pos = { x = -13.7, y = 0.1, z = -1.0 }, rot = { x = 0.0, y = 76.2, z = 0.0 }, level = 1, pose_id = 0 },
	{ config_id = 5017, monster_id = 20010501, pos = { x = -10.7, y = 0.1, z = -1.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5018, monster_id = 20010501, pos = { x = 10.4, y = 0.1, z = -4.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5019, monster_id = 20010501, pos = { x = -0.8, y = 0.1, z = 6.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5020, monster_id = 20010501, pos = { x = 5.4, y = 0.1, z = 4.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5029, monster_id = 21020101, pos = { x = 15.0, y = 0.0, z = 1.3 }, rot = { x = 0.0, y = 261.2, z = 0.0 }, level = 1 },
	{ config_id = 5030, monster_id = 20010701, pos = { x = 11.5, y = 0.1, z = -7.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5032, monster_id = 21010301, pos = { x = 4.4, y = 0.0, z = -15.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5033, monster_id = 21010301, pos = { x = -10.0, y = 0.0, z = -12.0 }, rot = { x = 0.0, y = 43.3, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5034, monster_id = 21010301, pos = { x = -14.9, y = 0.0, z = -4.4 }, rot = { x = 0.0, y = 84.5, z = 0.0 }, level = 1 },
	{ config_id = 5035, monster_id = 20010601, pos = { x = 5.3, y = 0.1, z = -10.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5036, monster_id = 21020201, pos = { x = 2.6, y = 0.0, z = -15.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5037, monster_id = 20010501, pos = { x = 9.1, y = 0.0, z = -11.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5038, monster_id = 20010501, pos = { x = -3.5, y = 0.0, z = -15.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5039, monster_id = 20010501, pos = { x = -9.6, y = 0.0, z = -5.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5040, monster_id = 20010501, pos = { x = -11.3, y = 0.0, z = 1.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5021, gadget_id = 70900205, pos = { x = 7.1, y = -1.4, z = -0.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5022, gadget_id = 70350035, pos = { x = 0.0, y = 0.0, z = 2.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_5023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_5023", action = "action_EVENT_ANY_MONSTER_LIVE_5023" },
	{ name = "MONSTER_TIDE_OVER_5024", event = EventType.EVENT_MONSTER_TIDE_OVER, source = "1", condition = "", action = "" },
	{ name = "CHALLENGE_SUCCESS_5027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5027" },
	{ name = "CHALLENGE_FAIL_5028", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5028" }
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
		gadgets = { 5021, 5022 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_5023", "MONSTER_TIDE_OVER_5024", "CHALLENGE_SUCCESS_5027", "CHALLENGE_FAIL_5028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 5021, 5022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 5021, 5022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 5021, 5022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 5021, 5022 },
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
function condition_EVENT_ANY_MONSTER_LIVE_5023(context, evt)
	if 5001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_5023(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为192的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 192, 240503005, 30, 5022, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5027(context, evt)
	-- 改变指定group组240503001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240503001, 1002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240503007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240503007, 7001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5028(context, evt)
	-- 改变指定group组240503007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240503007, 7001, GadgetState.GearAction2) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240503007, 7001, {7}) then
		return -1
	end
	
	-- 改变指定group组240503001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240503001, 1001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240503001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240503001, 1002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240503005, suite = 1 }) then
			return -1
		end
	
	return 0
end
