--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 103, monster_id = 20010101, pos = { x = 1496.6, y = 220.2, z = 579.9 }, rot = { x = 0.0, y = 276.1, z = 0.0 }, level = 1 },
	{ config_id = 104, monster_id = 20010101, pos = { x = 1497.6, y = 220.3, z = 578.1 }, rot = { x = 0.0, y = 288.3, z = 0.0 }, level = 1 },
	{ config_id = 105, monster_id = 20010101, pos = { x = 1497.3, y = 220.3, z = 581.2 }, rot = { x = 0.0, y = 266.1, z = 0.0 }, level = 1 },
	{ config_id = 106, monster_id = 20011501, pos = { x = 1502.0, y = 220.4, z = 576.7 }, rot = { x = 0.0, y = 321.8, z = 0.0 }, level = 1 },
	{ config_id = 107, monster_id = 20011501, pos = { x = 1501.5, y = 220.4, z = 582.4 }, rot = { x = 0.0, y = 217.5, z = 0.0 }, level = 1 },
	{ config_id = 108, monster_id = 20011501, pos = { x = 1497.0, y = 220.2, z = 575.7 }, rot = { x = 0.0, y = 26.4, z = 0.0 }, level = 1 },
	{ config_id = 109, monster_id = 21011001, pos = { x = 1507.8, y = 226.8, z = 566.3 }, rot = { x = 0.0, y = 308.3, z = 0.0 }, level = 1 },
	{ config_id = 110, monster_id = 21011001, pos = { x = 1509.5, y = 225.7, z = 587.8 }, rot = { x = 0.0, y = 209.1, z = 0.0 }, level = 1 },
	{ config_id = 111, monster_id = 21011001, pos = { x = 1486.3, y = 224.1, z = 590.0 }, rot = { x = 0.0, y = 160.0, z = 0.0 }, level = 1 },
	{ config_id = 112, monster_id = 21011001, pos = { x = 1488.2, y = 225.3, z = 568.5 }, rot = { x = 0.0, y = 36.3, z = 0.0 }, level = 1 },
	{ config_id = 113, monster_id = 23030101, pos = { x = 1496.8, y = 220.2, z = 579.5 }, rot = { x = 0.0, y = 320.5, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 94, gadget_id = 70900007, pos = { x = 1498.6, y = 220.3, z = 579.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 95, gadget_id = 70300090, pos = { x = 1510.2, y = 220.2, z = 588.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 96, gadget_id = 70300090, pos = { x = 1508.4, y = 221.3, z = 565.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 97, gadget_id = 70300090, pos = { x = 1485.8, y = 218.6, z = 590.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 98, gadget_id = 70300090, pos = { x = 1487.9, y = 219.8, z = 568.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_66", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66", action = "action_EVENT_GADGET_STATE_CHANGE_66", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_67", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "666" },
	{ name = "CHALLENGE_FAIL_68", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_68", trigger_count = 0 },
	{ name = "CHALLENGE_SUCCESS_69", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_69", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_70", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_70", action = "action_EVENT_ANY_MONSTER_DIE_70", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_71", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_71", action = "action_EVENT_ANY_MONSTER_DIE_71", trigger_count = 0 }
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
		gadgets = { 94, 95, 96, 97, 98 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_66", "ANY_MONSTER_DIE_67", "CHALLENGE_FAIL_68", "CHALLENGE_SUCCESS_69" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 103, 104, 105 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_70" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 106, 107, 108 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_71" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 109, 110, 111, 112, 113 },
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
function condition_EVENT_GADGET_STATE_CHANGE_66(context, evt)
	if 94 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016023, 2)
	
	-- 创建编号为888（该挑战的识别id),挑战内容为2003的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 2003, 90, 1, 666, 10) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_68(context, evt)
	-- 改变指定group组250016023中， configid为92的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250016023, 92, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_69(context, evt)
	-- 改变指定group组250016023中， configid为92的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250016023, 92, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_70(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016023) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_70(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016023, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016023, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_71(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016023) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_71(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016023, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016023, 3)
	
	return 0
end
