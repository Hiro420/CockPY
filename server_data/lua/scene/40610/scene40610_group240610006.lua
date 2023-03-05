--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 20011201, pos = { x = 6.5, y = 0.0, z = -3.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6002, monster_id = 20011201, pos = { x = 5.4, y = 0.0, z = -9.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6003, monster_id = 20011201, pos = { x = 0.8, y = 0.0, z = -6.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6004, monster_id = 20011201, pos = { x = -5.0, y = 0.0, z = -7.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6005, monster_id = 20011201, pos = { x = -8.7, y = 0.0, z = -7.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6006, monster_id = 20011201, pos = { x = -5.9, y = 0.0, z = -1.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6007, monster_id = 20011201, pos = { x = -10.3, y = 0.0, z = 6.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6008, monster_id = 20011201, pos = { x = -4.1, y = 0.0, z = 9.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6009, monster_id = 21010902, pos = { x = -9.6, y = 0.1, z = -13.5 }, rot = { x = 0.0, y = 42.3, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 6010, monster_id = 21010902, pos = { x = 9.5, y = 0.1, z = -13.9 }, rot = { x = 0.0, y = 336.0, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 6011, monster_id = 22010102, pos = { x = -0.3, y = 0.1, z = -12.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1028 }, isElite = true },
	{ config_id = 6012, monster_id = 20011201, pos = { x = 4.0, y = 0.0, z = -6.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6014, monster_id = 20011201, pos = { x = 10.4, y = 0.0, z = -11.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6015, monster_id = 20011201, pos = { x = 6.4, y = 0.1, z = -14.2 }, rot = { x = 0.0, y = 189.3, z = 0.0 }, level = 1 },
	{ config_id = 6017, monster_id = 20011201, pos = { x = -11.3, y = 0.0, z = -9.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6018, monster_id = 20011201, pos = { x = -6.4, y = 0.0, z = -8.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6019, monster_id = 20011201, pos = { x = -2.7, y = 0.0, z = -14.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6020, monster_id = 20011201, pos = { x = 8.0, y = 0.0, z = -8.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6021, monster_id = 20011201, pos = { x = 2.2, y = 0.0, z = -11.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6022, monster_id = 20011201, pos = { x = -3.6, y = 0.0, z = -11.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6023, monster_id = 20011201, pos = { x = -6.9, y = 0.0, z = -4.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6024, monster_id = 20011201, pos = { x = -9.4, y = 0.0, z = 3.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6025, monster_id = 20011201, pos = { x = 2.4, y = 0.0, z = 8.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6028, monster_id = 20011201, pos = { x = -5.6, y = 0.0, z = 14.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6029, monster_id = 20011201, pos = { x = 8.7, y = 0.0, z = 8.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6030, monster_id = 20011301, pos = { x = -9.4, y = 0.0, z = 0.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6031, monster_id = 20011301, pos = { x = 10.8, y = 0.0, z = -6.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6032, monster_id = 20011301, pos = { x = -6.0, y = 0.0, z = -15.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6033, monster_id = 20011301, pos = { x = -1.3, y = 0.0, z = -8.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 6034, monster_id = 21020201, pos = { x = 14.8, y = 0.0, z = 1.2 }, rot = { x = 0.0, y = 274.6, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6016, gadget_id = 70900205, pos = { x = 6.1, y = -1.4, z = 3.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_6013", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6013", action = "action_EVENT_ANY_MONSTER_LIVE_6013" },
	{ name = "CHALLENGE_SUCCESS_6026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6026" },
	{ name = "CHALLENGE_FAIL_6027", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6027" }
}

-- 变量
variables = {
	{ name = "suite2_create_count", value = 0, no_refresh = false },
	{ name = "suite2_status", value = 0, no_refresh = false },
	{ name = "suite3_create_count", value = 0, no_refresh = false },
	{ name = "suite3_status", value = 0, no_refresh = false },
	{ name = "suite4_create_count", value = 0, no_refresh = false },
	{ name = "suite4_status", value = 0, no_refresh = false }
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
		gadgets = { 6016 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_6013", "CHALLENGE_SUCCESS_6026", "CHALLENGE_FAIL_6027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6013(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6013(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为5的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 5, 30, 240610006, 30, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6026(context, evt)
	-- 改变指定group组240610004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240610004, 4002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240610006, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_6027(context, evt)
	-- 改变指定group组240610005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240610005, 5001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240610005, 5001, {7}) then
		return -1
	end
	
	-- 改变指定group组240610004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240610004, 4001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240610004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240610004, 4002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240610006, suite = 1 }) then
			return -1
		end
	
	return 0
end
