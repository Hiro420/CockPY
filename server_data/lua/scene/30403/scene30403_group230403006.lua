--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 20011301, pos = { x = 6.2, y = 0.0, z = -4.9 }, rot = { x = 0.0, y = 346.5, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true },
	{ config_id = 6002, monster_id = 20010901, pos = { x = -7.0, y = 0.0, z = -4.9 }, rot = { x = 0.0, y = 21.5, z = 0.0 }, level = 1, affix = { 1029, 1201 }, isElite = true },
	{ config_id = 6003, monster_id = 20011301, pos = { x = -6.6, y = 0.0, z = -9.8 }, rot = { x = 0.0, y = 18.6, z = 0.0 }, level = 1, affix = { 1028, 1201 }, isElite = true },
	{ config_id = 6004, monster_id = 20010901, pos = { x = -0.1, y = 0.0, z = -11.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true },
	{ config_id = 6005, monster_id = 20011301, pos = { x = 7.8, y = 0.0, z = -11.6 }, rot = { x = 0.0, y = 343.7, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true },
	{ config_id = 6006, monster_id = 20010901, pos = { x = -11.3, y = 0.0, z = -1.0 }, rot = { x = 0.0, y = 64.8, z = 0.0 }, level = 1, affix = { 1201 }, isElite = true },
	{ config_id = 6020, monster_id = 22010101, pos = { x = 0.1, y = 0.0, z = -7.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1028, 1201 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6024, gadget_id = 70900205, pos = { x = 6.2, y = -1.4, z = 3.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_6026", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6026", action = "action_EVENT_ANY_MONSTER_LIVE_6026" },
	{ name = "CHALLENGE_SUCCESS_6027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6027" },
	{ name = "CHALLENGE_FAIL_6028", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6028" }
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
		gadgets = { 6024 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_6026", "CHALLENGE_SUCCESS_6027", "CHALLENGE_FAIL_6028" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6026(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6026(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1033的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1033, 300, 230403006, 7, 0) then
		return -1
	end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
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
function action_EVENT_CHALLENGE_SUCCESS_6027(context, evt)
	-- 改变指定group组230403004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230403004, 4002, GadgetState.GearStart) then
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
function action_EVENT_CHALLENGE_FAIL_6028(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
		ScriptLib.GoBackGroupSuite(context, 230403006)
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		return -1
	end
	
	return 0
end
