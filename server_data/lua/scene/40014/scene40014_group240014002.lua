--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 20011001, pos = { x = 526.0, y = -1.9, z = 245.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2002, monster_id = 20011001, pos = { x = 538.6, y = -2.0, z = 235.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2003, monster_id = 20010801, pos = { x = 527.0, y = -2.0, z = 234.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2004, monster_id = 20010801, pos = { x = 538.7, y = -2.0, z = 245.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2005, monster_id = 20011001, pos = { x = 526.0, y = -2.0, z = 242.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2006, monster_id = 20011001, pos = { x = 538.6, y = -2.0, z = 238.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2007, monster_id = 20011001, pos = { x = 526.6, y = -2.0, z = 238.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2008, monster_id = 20010801, pos = { x = 538.8, y = -2.0, z = 242.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2009, monster_id = 20010801, pos = { x = 530.3, y = -2.0, z = 245.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2010, monster_id = 20011101, pos = { x = 535.4, y = -2.1, z = 245.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2011, monster_id = 20011001, pos = { x = 533.0, y = -2.0, z = 233.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2012, monster_id = 20010801, pos = { x = 526.1, y = -2.0, z = 245.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2013, monster_id = 20010801, pos = { x = 538.6, y = -2.0, z = 245.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2014, monster_id = 20011001, pos = { x = 527.3, y = -2.0, z = 235.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2015, monster_id = 20011001, pos = { x = 538.2, y = -2.0, z = 235.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2016, monster_id = 20010801, pos = { x = 526.5, y = -2.0, z = 242.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2017, monster_id = 20010801, pos = { x = 538.6, y = -2.0, z = 238.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2018, monster_id = 20011001, pos = { x = 527.1, y = -2.0, z = 238.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2019, monster_id = 20011001, pos = { x = 538.5, y = -2.0, z = 241.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2020, monster_id = 20010901, pos = { x = 533.4, y = -2.0, z = 233.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_2021", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2021", action = "action_EVENT_ANY_MONSTER_LIVE_2021", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_2022", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2022", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_2023", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2023", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_2021", "CHALLENGE_FAIL_2022", "CHALLENGE_SUCCESS_2023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020 },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_LIVE_2021(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2021(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为5的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 5, 15, 240014002, 30, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2022(context, evt)
	-- 改变指定group组240014001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240014001, 1002, GadgetState.Default) then
			return -1
		end 
	
	-- 改变指定group组240014001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240014001, 1001, GadgetState.GearStart) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240014002, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2023(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为7，场上怪物最少3只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 240014003, {3002,3003,3004,3005,3006,3007,3001}, 7, 3, 5) then
		return -1
	end
	
	return 0
end
