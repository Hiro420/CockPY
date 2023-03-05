--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 20011001, pos = { x = 9.9, y = 0.1, z = 7.1 }, rot = { x = 0.0, y = 226.2, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 6002, monster_id = 20011001, pos = { x = -9.6, y = 0.1, z = 7.1 }, rot = { x = 0.0, y = 123.8, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 6003, monster_id = 20011001, pos = { x = -11.8, y = 0.1, z = -9.6 }, rot = { x = 0.0, y = 51.5, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 6004, monster_id = 20011101, pos = { x = -0.1, y = 0.1, z = -11.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 6005, monster_id = 20011001, pos = { x = 9.6, y = 0.1, z = -9.8 }, rot = { x = 0.0, y = 312.4, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 6006, monster_id = 21010501, pos = { x = 2.5, y = 0.1, z = 12.1 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true, pose_id = 32 },
	{ config_id = 6007, monster_id = 21010501, pos = { x = -2.3, y = 0.1, z = 12.1 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true, pose_id = 32 },
	{ config_id = 6009, monster_id = 21010501, pos = { x = -11.9, y = 0.1, z = 2.2 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true, pose_id = 32 },
	{ config_id = 6010, monster_id = 21010501, pos = { x = -12.0, y = 0.1, z = -2.3 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true, pose_id = 32 },
	{ config_id = 6011, monster_id = 21010501, pos = { x = 12.0, y = 0.1, z = -2.1 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true, pose_id = 32 },
	{ config_id = 6012, monster_id = 21010501, pos = { x = 12.1, y = 0.1, z = 2.5 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true, pose_id = 32 },
	{ config_id = 6013, monster_id = 20011001, pos = { x = 5.1, y = 0.1, z = 9.6 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 6014, monster_id = 20011001, pos = { x = -4.7, y = 0.1, z = 9.8 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 6015, monster_id = 20011101, pos = { x = 0.1, y = 0.1, z = 9.9 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6008, gadget_id = 70900205, pos = { x = 6.2, y = -1.4, z = 3.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_6016", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6016", action = "action_EVENT_ANY_MONSTER_LIVE_6016" },
	{ name = "CHALLENGE_SUCCESS_6019", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6019" },
	{ name = "CHALLENGE_FAIL_6020", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6020" }
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
		gadgets = { 6008 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_6016", "CHALLENGE_SUCCESS_6019", "CHALLENGE_FAIL_6020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6016(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6016(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为197的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 197, 600, 230700006, 30, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6019(context, evt)
	-- 将剩余时间记录在触发此challenge的group变量TPL_TIME中
	    if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "TPL_TIME", evt.param2, 230700004) then
	      return -1
	    end
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 230700004) then
	  return -1
	end
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		return -1
	end
	
	-- 改变指定group组230700005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230700005, 5001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 230700005, 5001, {176}) then
		return -1
	end
	
	-- 改变指定group组230700004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230700004, 4001, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_6020(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230700006, suite = 1 }) then
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		return -1
	end
	
	return 0
end
