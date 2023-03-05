--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 21010902, pos = { x = 3.5, y = 0.2, z = -10.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5003, monster_id = 21010902, pos = { x = -3.5, y = 0.2, z = -10.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5004, monster_id = 20011001, pos = { x = 8.7, y = 0.4, z = -6.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5006, monster_id = 20011001, pos = { x = -11.5, y = 0.2, z = 3.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 5007, monster_id = 20011001, pos = { x = -8.1, y = 0.4, z = -6.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5008, monster_id = 20011001, pos = { x = -11.3, y = 0.1, z = -1.8 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5009, monster_id = 20011001, pos = { x = 12.5, y = 0.2, z = -3.2 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 5010, monster_id = 20011101, pos = { x = 13.4, y = 0.2, z = 0.0 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 5011, monster_id = 20011101, pos = { x = -12.4, y = 0.2, z = 0.1 }, rot = { x = 0.0, y = 91.1, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5012, monster_id = 20011001, pos = { x = 0.0, y = 0.2, z = 10.2 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5013, monster_id = 21030102, pos = { x = 0.0, y = 0.2, z = -12.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1029 }, isElite = true },
	{ config_id = 5014, monster_id = 20011001, pos = { x = 6.8, y = 0.4, z = 6.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5016, monster_id = 20011001, pos = { x = -6.5, y = 0.4, z = 5.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5018, monster_id = 20011001, pos = { x = 12.5, y = 0.2, z = 3.5 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 5020, monster_id = 20011001, pos = { x = 0.1, y = 0.4, z = -7.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5027, monster_id = 21010902, pos = { x = 3.5, y = 0.2, z = -10.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5028, monster_id = 21010902, pos = { x = -3.5, y = 0.2, z = -10.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5029, monster_id = 20011001, pos = { x = 8.7, y = 0.4, z = -6.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5030, monster_id = 20011001, pos = { x = -11.5, y = 0.2, z = 3.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 5035, monster_id = 20011001, pos = { x = -8.1, y = 0.4, z = -6.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5040, monster_id = 20011001, pos = { x = -11.3, y = 0.2, z = -1.8 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5041, monster_id = 20011001, pos = { x = 12.5, y = 0.2, z = -3.2 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 5042, monster_id = 20011101, pos = { x = 13.4, y = 0.2, z = 0.0 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 5043, monster_id = 20011101, pos = { x = -12.4, y = 0.2, z = 0.1 }, rot = { x = 0.0, y = 91.1, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5044, monster_id = 20011001, pos = { x = 0.0, y = 0.2, z = 10.2 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5045, monster_id = 21030102, pos = { x = 0.0, y = 0.2, z = -12.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1029 }, isElite = true },
	{ config_id = 5046, monster_id = 20011001, pos = { x = 6.8, y = 0.4, z = 6.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5047, monster_id = 20011001, pos = { x = -6.5, y = 0.4, z = 5.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5048, monster_id = 20011001, pos = { x = 12.5, y = 0.2, z = 3.5 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 5049, monster_id = 20011001, pos = { x = 0.1, y = 0.4, z = -7.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5002, gadget_id = 70350035, pos = { x = 0.0, y = 0.1, z = 0.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5015, gadget_id = 70900205, pos = { x = 7.4, y = -1.3, z = 2.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_5021", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_5021", action = "action_EVENT_ANY_MONSTER_LIVE_5021" },
	{ name = "CHALLENGE_SUCCESS_5025", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5025" },
	{ name = "CHALLENGE_FAIL_5026", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5026" }
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
		gadgets = { 5002, 5015 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_5021", "CHALLENGE_SUCCESS_5025", "CHALLENGE_FAIL_5026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 5015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 5015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 5015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 5015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { },
		gadgets = { 5015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { },
		gadgets = { 5015 },
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
function condition_EVENT_ANY_MONSTER_LIVE_5021(context, evt)
	if 5006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_5021(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为187的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.StartChallenge(context, 1, 187, {300,240605005,5002,0,15}) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5025(context, evt)
	-- 停止编号为1的怪物潮，end_type为1则是成功停止，0是失败停止（一般就是1）
	if 0 ~= ScriptLib.EndMonsterTide(context, 240605005, 1, 1) then
		return -1
	end
	
	-- 改变指定group组240605004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240605004, 4002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240605005, suite = 7 }) then
			return -1
		end
	
	-- 改变指定group组240605007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240605007, 7001, GadgetState.GearAction1) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5026(context, evt)
	-- 改变指定group组240605007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240605007, 7001, GadgetState.GearAction2) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240605007, 7001, {7}) then
		return -1
	end
	
	-- 改变指定group组240605004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240605004, 4001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240605004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240605004, 4002, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240605005, suite = 1 }) then
			return -1
		end
	
	return 0
end
