--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 18001, monster_id = 21010501, pos = { x = -202.2, y = -8.0, z = -291.5 }, rot = { x = 0.0, y = 299.0, z = 0.0 }, level = 5 },
	{ config_id = 18002, monster_id = 21010501, pos = { x = -202.6, y = -8.0, z = -292.9 }, rot = { x = 0.0, y = 251.4, z = 0.0 }, level = 5 },
	{ config_id = 18003, monster_id = 21010501, pos = { x = -220.3, y = -8.0, z = -283.7 }, rot = { x = 0.0, y = 155.3, z = 0.0 }, level = 5 },
	{ config_id = 18004, monster_id = 21010501, pos = { x = -219.0, y = -8.0, z = -283.1 }, rot = { x = 0.0, y = 135.6, z = 0.0 }, level = 5 },
	{ config_id = 18005, monster_id = 21010501, pos = { x = -218.5, y = -8.0, z = -303.3 }, rot = { x = 0.0, y = 52.3, z = 0.0 }, level = 5 },
	{ config_id = 18006, monster_id = 21010501, pos = { x = -219.5, y = -8.0, z = -302.1 }, rot = { x = 0.0, y = 30.7, z = 0.0 }, level = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 18007, gadget_id = 70220018, pos = { x = -201.3, y = -14.5, z = -293.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 18008, gadget_id = 70220018, pos = { x = -201.3, y = -14.5, z = -291.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 18009, gadget_id = 70220018, pos = { x = -203.5, y = -14.5, z = -291.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 18010, gadget_id = 70220018, pos = { x = -203.4, y = -14.5, z = -293.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 18011, gadget_id = 70220018, pos = { x = -218.4, y = -14.5, z = -284.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 18012, gadget_id = 70220018, pos = { x = -218.4, y = -14.5, z = -282.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 18013, gadget_id = 70220018, pos = { x = -220.6, y = -14.5, z = -282.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 18014, gadget_id = 70220018, pos = { x = -220.6, y = -14.5, z = -284.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 18015, gadget_id = 70220018, pos = { x = -218.0, y = -14.5, z = -304.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 18016, gadget_id = 70220018, pos = { x = -218.0, y = -14.5, z = -301.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 18017, gadget_id = 70220018, pos = { x = -220.2, y = -14.5, z = -301.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 18018, gadget_id = 70220018, pos = { x = -220.2, y = -14.5, z = -304.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_49", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49", action = "action_EVENT_ANY_MONSTER_DIE_49", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_111", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_111", action = "action_EVENT_ANY_MONSTER_DIE_111", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 18001, 18002, 18003, 18004, 18005, 18006 },
		gadgets = { 18007, 18008, 18009, 18010, 18011, 18012, 18013, 18014, 18015, 18016, 18017, 18018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_111" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_49(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016018) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_49(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016017, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016018, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_111(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016018) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_111(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016031, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016018, 2)
	
	return 0
end
