--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20011001, pos = { x = 6.3, y = 0.1, z = -5.2 }, rot = { x = 0.0, y = 346.5, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 0 },
	{ config_id = 3002, monster_id = 20011001, pos = { x = -7.0, y = 0.1, z = -5.2 }, rot = { x = 0.0, y = 21.5, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 0 },
	{ config_id = 3003, monster_id = 20011001, pos = { x = -4.5, y = 0.1, z = -6.7 }, rot = { x = 0.0, y = 18.6, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 0 },
	{ config_id = 3004, monster_id = 20011001, pos = { x = 0.3, y = 0.1, z = -6.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 0 },
	{ config_id = 3005, monster_id = 20011001, pos = { x = 4.1, y = 0.1, z = -5.0 }, rot = { x = 0.0, y = 343.7, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 0 },
	{ config_id = 3006, monster_id = 20010501, pos = { x = -6.6, y = 0.1, z = -1.1 }, rot = { x = 0.0, y = 64.8, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 0 },
	{ config_id = 3007, monster_id = 20010501, pos = { x = 7.7, y = 0.1, z = -1.4 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 0 },
	{ config_id = 3008, monster_id = 20010501, pos = { x = 2.1, y = 0.1, z = 7.2 }, rot = { x = 0.0, y = 182.8, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 0 },
	{ config_id = 3009, monster_id = 20010501, pos = { x = -2.4, y = 0.1, z = 5.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 0 },
	{ config_id = 3010, monster_id = 20010501, pos = { x = -5.4, y = 0.1, z = 2.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 0 },
	{ config_id = 3011, monster_id = 20011001, pos = { x = 5.9, y = 0.1, z = 2.5 }, rot = { x = 0.0, y = 234.1, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 0 },
	{ config_id = 3012, monster_id = 20010501, pos = { x = 5.8, y = 0.1, z = -2.5 }, rot = { x = 0.0, y = 322.1, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 0 },
	{ config_id = 3013, monster_id = 20011001, pos = { x = -2.6, y = 0.2, z = -3.9 }, rot = { x = 0.0, y = 20.5, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 0 },
	{ config_id = 3014, monster_id = 20010501, pos = { x = -4.3, y = 0.1, z = 4.1 }, rot = { x = 0.0, y = 50.2, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 0 },
	{ config_id = 3015, monster_id = 20011001, pos = { x = -0.7, y = 0.1, z = 6.8 }, rot = { x = 0.0, y = 126.7, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 0 },
	{ config_id = 3017, monster_id = 20011001, pos = { x = -3.9, y = 0.1, z = 5.5 }, rot = { x = 0.0, y = 101.4, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 0 },
	{ config_id = 3018, monster_id = 20010501, pos = { x = 5.2, y = 0.1, z = 5.2 }, rot = { x = 0.0, y = 274.5, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 0 },
	{ config_id = 3019, monster_id = 20011001, pos = { x = -8.4, y = 0.1, z = 1.4 }, rot = { x = 0.0, y = 133.4, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 0 },
	{ config_id = 3020, monster_id = 20010501, pos = { x = -3.0, y = 0.1, z = 8.2 }, rot = { x = 0.0, y = 203.1, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 0 },
	{ config_id = 3022, monster_id = 20011101, pos = { x = 0.2, y = 0.1, z = -8.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true },
	{ config_id = 3023, monster_id = 20010601, pos = { x = -7.7, y = 0.1, z = -6.9 }, rot = { x = 0.0, y = 43.8, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true },
	{ config_id = 3024, monster_id = 20010701, pos = { x = 7.2, y = 0.1, z = -6.2 }, rot = { x = 0.0, y = 320.9, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true },
	{ config_id = 3029, monster_id = 20011001, pos = { x = 4.6, y = 0.1, z = 7.5 }, rot = { x = 0.0, y = 230.8, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3030, gadget_id = 70900205, pos = { x = 6.3, y = -1.4, z = 3.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "MONSTER_TIDE_DIE_3016", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_3016", action = "action_EVENT_MONSTER_TIDE_DIE_3016" },
	{ name = "CHALLENGE_FAIL_3021", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3021" },
	{ name = "ANY_MONSTER_LIVE_3031", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3031", action = "action_EVENT_ANY_MONSTER_LIVE_3031" },
	{ name = "CHALLENGE_SUCCESS_3035", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3035" },
	{ name = "CHALLENGE_FAIL_3036", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3036" }
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
		gadgets = { 3030 },
		regions = { },
		triggers = { "MONSTER_TIDE_DIE_3016", "CHALLENGE_FAIL_3021", "ANY_MONSTER_LIVE_3031", "CHALLENGE_SUCCESS_3035" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_3016(context, evt)
	if 30 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_3016(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3022, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3023, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3024, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3021(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230100003, suite = 1 }) then
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3031(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3031(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1000的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1000, 300, 230100003, 33, 0) then
		return -1
	end
	
	-- 爬塔三星计时（is_stop:  0:开始计时、1:暂停计时）
	if 0 ~= ScriptLib.TowerCountTimeStatus(context, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3035(context, evt)
	-- 改变指定group组230100001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230100001, 1002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 爬塔三星计时（is_stop:  0:开始计时、1:暂停计时）
	if 0 ~= ScriptLib.TowerCountTimeStatus(context, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3036(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
		ScriptLib.GoBackGroupSuite(context, 230100003)
	
	-- 改变指定group组230100002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230100002, 2001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 230100002, 2001, {7}) then
		return -1
	end
	
	return 0
end
