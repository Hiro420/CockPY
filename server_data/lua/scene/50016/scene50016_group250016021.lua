--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 83, monster_id = 20011201, pos = { x = 1082.3, y = 211.3, z = 364.5 }, rot = { x = 0.0, y = 103.9, z = 0.0 }, level = 1 },
	{ config_id = 84, monster_id = 20011201, pos = { x = 1082.8, y = 211.1, z = 363.0 }, rot = { x = 0.0, y = 62.1, z = 0.0 }, level = 1 },
	{ config_id = 85, monster_id = 20011201, pos = { x = 1083.5, y = 211.0, z = 365.4 }, rot = { x = 0.0, y = 139.3, z = 0.0 }, level = 1 },
	{ config_id = 86, monster_id = 20011201, pos = { x = 1121.6, y = 202.9, z = 351.6 }, rot = { x = 0.0, y = 321.8, z = 0.0 }, level = 1 },
	{ config_id = 87, monster_id = 20011201, pos = { x = 1121.1, y = 202.8, z = 357.3 }, rot = { x = 0.0, y = 217.5, z = 0.0 }, level = 1 },
	{ config_id = 88, monster_id = 20011301, pos = { x = 1116.6, y = 203.3, z = 350.6 }, rot = { x = 0.0, y = 26.4, z = 0.0 }, level = 1 },
	{ config_id = 89, monster_id = 20011201, pos = { x = 1125.6, y = 206.8, z = 379.0 }, rot = { x = 0.0, y = 206.1, z = 0.0 }, level = 1 },
	{ config_id = 90, monster_id = 20011201, pos = { x = 1144.5, y = 208.5, z = 340.6 }, rot = { x = 0.0, y = 281.6, z = 0.0 }, level = 1 },
	{ config_id = 91, monster_id = 20011201, pos = { x = 1113.6, y = 203.7, z = 357.9 }, rot = { x = 0.0, y = 154.4, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 92, gadget_id = 70900049, pos = { x = 1117.2, y = 203.2, z = 355.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_53", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53", action = "action_EVENT_GADGET_STATE_CHANGE_53", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_54", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "666" },
	{ name = "CHALLENGE_FAIL_56", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_56", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_57", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_57", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_58", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58", action = "action_EVENT_ANY_MONSTER_DIE_58", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_59", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_59", action = "action_EVENT_ANY_MONSTER_DIE_59", trigger_count = 0 }
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
	rand_suite = false,
	npcs = { }
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
		gadgets = { 92 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_53", "ANY_MONSTER_DIE_54", "CHALLENGE_FAIL_56", "CHALLENGE_SUCCESS_57" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 83, 84, 85 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_58" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 86, 87, 88 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_59" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 89, 90, 91 },
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
function condition_EVENT_GADGET_STATE_CHANGE_53(context, evt)
	if 92 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016021, 2)
	
	-- 创建编号为888（该挑战的识别id),挑战内容为2003的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 2003, 60, 1, 666, 9) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_56(context, evt)
	-- 改变指定group组250016021中， configid为92的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250016021, 92, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_57(context, evt)
	-- 改变指定group组250016021中， configid为92的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250016021, 92, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_58(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016021) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016021, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016021, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_59(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016021) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_59(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016021, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016021, 3)
	
	return 0
end
