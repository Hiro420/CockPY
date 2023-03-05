--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 20011001, pos = { x = 9.9, y = 0.1, z = -8.3 }, rot = { x = 0.0, y = 312.9, z = 0.0 }, level = 1 },
	{ config_id = 5002, monster_id = 20011001, pos = { x = -11.8, y = 0.1, z = -7.8 }, rot = { x = 0.0, y = 52.2, z = 0.0 }, level = 1 },
	{ config_id = 5003, monster_id = 20011001, pos = { x = -5.7, y = 0.1, z = -8.7 }, rot = { x = 0.0, y = 18.6, z = 0.0 }, level = 1 },
	{ config_id = 5004, monster_id = 20011001, pos = { x = 5.2, y = 0.1, z = -9.1 }, rot = { x = 0.0, y = 339.5, z = 0.0 }, level = 1 },
	{ config_id = 5005, monster_id = 20011101, pos = { x = 0.0, y = 0.1, z = -11.3 }, rot = { x = 0.0, y = 358.7, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5006, monster_id = 20010801, pos = { x = -10.4, y = 0.1, z = 0.1 }, rot = { x = 0.0, y = 64.8, z = 0.0 }, level = 1 },
	{ config_id = 5007, monster_id = 20010801, pos = { x = 12.7, y = 0.1, z = 0.4 }, rot = { x = 0.0, y = 270.1, z = 0.0 }, level = 1 },
	{ config_id = 5008, monster_id = 20010901, pos = { x = 1.1, y = 0.1, z = 8.8 }, rot = { x = 0.0, y = 182.8, z = 0.0 }, level = 1 },
	{ config_id = 5009, monster_id = 20010801, pos = { x = 5.3, y = 0.1, z = -6.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5010, monster_id = 20010801, pos = { x = -5.0, y = 0.1, z = -6.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5011, monster_id = 20011101, pos = { x = 12.9, y = 0.1, z = 2.8 }, rot = { x = 0.0, y = 254.8, z = 0.0 }, level = 1 },
	{ config_id = 5012, monster_id = 20011001, pos = { x = 12.5, y = -0.1, z = -1.9 }, rot = { x = 0.0, y = 280.7, z = 0.0 }, level = 1 },
	{ config_id = 5013, monster_id = 20010901, pos = { x = -13.7, y = 0.1, z = 1.3 }, rot = { x = 0.0, y = 115.6, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5014, monster_id = 20010801, pos = { x = -12.1, y = 0.1, z = -4.0 }, rot = { x = 0.0, y = 50.2, z = 0.0 }, level = 1 },
	{ config_id = 5015, monster_id = 20010801, pos = { x = 0.1, y = 0.1, z = 13.8 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 5016, monster_id = 22010204, pos = { x = -0.5, y = 0.1, z = -13.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5018, monster_id = 20011001, pos = { x = 14.5, y = 0.0, z = -5.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5019, monster_id = 20011001, pos = { x = 8.2, y = 0.0, z = -3.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5020, monster_id = 20011001, pos = { x = 6.2, y = 0.0, z = -16.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5021, monster_id = 20011001, pos = { x = 2.5, y = 0.0, z = -7.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5022, monster_id = 20011001, pos = { x = 15.5, y = 0.0, z = -9.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5024, monster_id = 20010801, pos = { x = -1.3, y = 0.0, z = -6.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5031, monster_id = 20010801, pos = { x = -6.1, y = 0.0, z = -13.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5032, monster_id = 20010801, pos = { x = -8.3, y = 0.0, z = -4.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5033, monster_id = 20010801, pos = { x = -11.2, y = 0.0, z = 7.0 }, rot = { x = 0.0, y = 119.5, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 5034, monster_id = 20011001, pos = { x = 11.4, y = 0.1, z = 6.2 }, rot = { x = 0.0, y = 246.3, z = 0.0 }, level = 1 },
	{ config_id = 5035, monster_id = 20010801, pos = { x = -15.7, y = 0.0, z = -6.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5036, monster_id = 20010801, pos = { x = -7.0, y = 0.0, z = -1.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5037, monster_id = 21030101, pos = { x = 9.9, y = 0.0, z = -10.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5038, monster_id = 21010901, pos = { x = -9.1, y = 0.0, z = -9.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1031 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5017, gadget_id = 70350035, pos = { x = 0.0, y = 0.1, z = 0.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 5023, gadget_id = 70900205, pos = { x = 7.1, y = -1.3, z = 4.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_5025", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_5025", action = "action_EVENT_ANY_MONSTER_LIVE_5025" },
	{ name = "CHALLENGE_SUCCESS_5029", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5029" },
	{ name = "CHALLENGE_FAIL_5030", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5030" }
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
		gadgets = { 5017, 5023 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_5025", "CHALLENGE_SUCCESS_5029", "CHALLENGE_FAIL_5030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 5017, 5023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 5017, 5023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 5017, 5023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 5017, 5023 },
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
function condition_EVENT_ANY_MONSTER_LIVE_5025(context, evt)
	if 5001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_5025(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为188的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 188, 240602005, 30, 5017, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5029(context, evt)
	-- 改变指定group组240602007中， configid为7002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240602007, 7002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240602008中， configid为0的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240602008, 0, GadgetState.GearAction1) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5017 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5030(context, evt)
	-- 改变指定group组240602008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240602008, 8001, GadgetState.GearAction2) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240602005, suite = 1 }) then
			return -1
		end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240602008, 8001, {7}) then
		return -1
	end
	
	-- 改变指定group组240602007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240602007, 7001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240602007中， configid为7002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240602007, 7002, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
