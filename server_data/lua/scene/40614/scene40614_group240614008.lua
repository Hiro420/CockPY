--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 21010601, pos = { x = 5.5, y = 0.2, z = -10.1 }, rot = { x = 0.0, y = 342.7, z = 0.0 }, level = 1 },
	{ config_id = 8002, monster_id = 21010601, pos = { x = -5.4, y = 0.2, z = -10.3 }, rot = { x = 0.0, y = 18.8, z = 0.0 }, level = 1 },
	{ config_id = 8003, monster_id = 21011201, pos = { x = 13.1, y = 0.2, z = -2.4 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 8004, monster_id = 21010502, pos = { x = 0.4, y = 0.0, z = 12.3 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 8005, monster_id = 21011201, pos = { x = 12.9, y = 0.2, z = 2.7 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 8006, monster_id = 21010601, pos = { x = -12.4, y = 0.2, z = 2.7 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 8007, monster_id = 21010601, pos = { x = -12.4, y = 0.2, z = -2.4 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 8008, monster_id = 21020301, pos = { x = 0.1, y = 0.2, z = -12.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 8009, monster_id = 21010502, pos = { x = -0.1, y = 0.0, z = -10.8 }, rot = { x = 0.0, y = 357.4, z = 0.0 }, level = 1 },
	{ config_id = 8013, monster_id = 20011201, pos = { x = 6.1, y = 0.0, z = 7.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 8014, monster_id = 20011201, pos = { x = 9.1, y = 0.0, z = 1.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 8015, monster_id = 20011201, pos = { x = 6.1, y = 0.0, z = -4.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 8016, monster_id = 20011201, pos = { x = -6.8, y = 0.0, z = -7.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 8017, monster_id = 20011201, pos = { x = -9.2, y = 0.0, z = -0.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 8018, monster_id = 20011201, pos = { x = -6.1, y = 0.0, z = 8.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 8019, monster_id = 20011201, pos = { x = 9.9, y = 0.0, z = -4.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 8020, monster_id = 20011201, pos = { x = 5.1, y = 0.0, z = -8.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 8021, monster_id = 20011201, pos = { x = -3.1, y = 0.0, z = -8.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 8022, monster_id = 20011201, pos = { x = -8.3, y = 0.0, z = -3.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 8023, monster_id = 20011201, pos = { x = -10.6, y = 0.0, z = 6.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 8024, monster_id = 20011201, pos = { x = -5.6, y = 0.0, z = 10.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 8025, monster_id = 20011201, pos = { x = 5.3, y = 0.0, z = 10.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 8026, monster_id = 20011201, pos = { x = 10.4, y = 0.0, z = 5.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 8027, monster_id = 21011201, pos = { x = -10.5, y = 0.0, z = -6.4 }, rot = { x = 0.0, y = 39.6, z = 0.0 }, level = 1 },
	{ config_id = 8028, monster_id = 21011201, pos = { x = 11.6, y = 0.0, z = -7.9 }, rot = { x = 0.0, y = 309.0, z = 0.0 }, level = 1 },
	{ config_id = 8029, monster_id = 21010601, pos = { x = -3.9, y = 0.2, z = 11.1 }, rot = { x = 0.0, y = 166.5, z = 0.0 }, level = 1, affix = { 1019 }, isElite = true },
	{ config_id = 8030, monster_id = 21010601, pos = { x = 7.0, y = 0.2, z = 10.6 }, rot = { x = 0.0, y = 202.5, z = 0.0 }, level = 1, affix = { 1019 }, isElite = true },
	{ config_id = 8036, monster_id = 21020301, pos = { x = 1.7, y = 0.2, z = 12.7 }, rot = { x = 0.0, y = 183.7, z = 0.0 }, level = 1, affix = { 1019 }, isElite = true },
	{ config_id = 8037, monster_id = 21011201, pos = { x = 11.9, y = 0.0, z = 6.4 }, rot = { x = 0.0, y = 223.4, z = 0.0 }, level = 1 },
	{ config_id = 8038, monster_id = 21011201, pos = { x = -10.1, y = 0.0, z = 9.3 }, rot = { x = 0.0, y = 132.7, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8032, gadget_id = 70900205, pos = { x = 7.4, y = -1.3, z = 4.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CHALLENGE_SUCCESS_8011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_8011" },
	{ name = "ANY_MONSTER_LIVE_8033", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_8033", action = "action_EVENT_ANY_MONSTER_LIVE_8033" },
	{ name = "CHALLENGE_FAIL_8035", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_8035" }
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
		gadgets = { 8032 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_8011", "ANY_MONSTER_LIVE_8033", "CHALLENGE_FAIL_8035" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_8011(context, evt)
	-- 改变指定group组240614004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240614004, 4002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240614008, suite = 1 }) then
			return -1
		end
	
	-- 将configid为 5016 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5016, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_8033(context, evt)
	if 8013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_8033(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为2的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 2, 360, 240614008, 30, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_8035(context, evt)
	-- 改变指定group组240614006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240614006, 6001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240614006, 6001, {7}) then
		return -1
	end
	
	-- 改变指定group组240614004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240614004, 4001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240614004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240614004, 4002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240614008, suite = 1 }) then
			return -1
		end
	
	return 0
end
