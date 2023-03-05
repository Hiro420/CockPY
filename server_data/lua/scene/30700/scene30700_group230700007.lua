--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 20011001, pos = { x = 9.9, y = 0.1, z = 7.1 }, rot = { x = 0.0, y = 226.2, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 7002, monster_id = 20011001, pos = { x = -9.6, y = 0.1, z = 7.1 }, rot = { x = 0.0, y = 123.8, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 7003, monster_id = 20011001, pos = { x = -11.8, y = 0.1, z = -9.6 }, rot = { x = 0.0, y = 51.5, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 7004, monster_id = 20011101, pos = { x = -0.1, y = 0.1, z = -11.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 7005, monster_id = 20011001, pos = { x = 9.6, y = 0.1, z = -9.8 }, rot = { x = 0.0, y = 312.4, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 7006, monster_id = 21011001, pos = { x = 2.5, y = 0.1, z = 12.1 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true, pose_id = 32 },
	{ config_id = 7007, monster_id = 21011001, pos = { x = -2.3, y = 0.1, z = 12.1 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true, pose_id = 32 },
	{ config_id = 7012, monster_id = 21011001, pos = { x = -12.0, y = 0.1, z = -2.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true, pose_id = 32 },
	{ config_id = 7013, monster_id = 21011001, pos = { x = -12.0, y = 0.1, z = 2.2 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true, pose_id = 32 },
	{ config_id = 7014, monster_id = 21011001, pos = { x = 12.0, y = 0.1, z = -2.0 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true, pose_id = 32 },
	{ config_id = 7015, monster_id = 21011001, pos = { x = 12.1, y = 0.1, z = 2.4 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true, pose_id = 32 },
	{ config_id = 7016, monster_id = 20011001, pos = { x = -4.7, y = 0.1, z = 9.8 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 7017, monster_id = 20011001, pos = { x = 5.0, y = 0.1, z = 9.7 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true },
	{ config_id = 7018, monster_id = 20011101, pos = { x = 0.2, y = 0.1, z = 9.7 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1211 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7008, gadget_id = 70900205, pos = { x = 6.2, y = -1.4, z = 3.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_7009", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_7009", action = "action_EVENT_ANY_MONSTER_LIVE_7009" },
	{ name = "CHALLENGE_SUCCESS_7010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "" },
	{ name = "CHALLENGE_FAIL_7011", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_7011" }
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
		gadgets = { 7008 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_7009", "CHALLENGE_SUCCESS_7010", "CHALLENGE_FAIL_7011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_7009(context, evt)
	if 7001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_7009(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为198的区域挑战，param1必须为时间
	-- 从230700004的变量TPL_TIME中取出对应值并开启挑战
	  local tpl_time = ScriptLib.GetGroupVariableValueByGroup(context, "TPL_TIME", 230700004)
	  if tpl_time == nil or tpl_time < 0 then
	    return -1
	  elseif tpl_time < 1 then
	    tpl_time = 0
	  end
	  if 0 ~= ScriptLib.ActiveChallenge(context, 2, 198, tpl_time, 230700007, 30, 0) then
	    return -1
	  end
	
	return 0
end

-- 触发条件

-- 触发操作

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_7011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230700007, suite = 1 }) then
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		return -1
	end
	
	return 0
end
