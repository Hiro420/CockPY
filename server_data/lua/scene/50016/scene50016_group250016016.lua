--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 61, monster_id = 20011301, pos = { x = -131.1, y = -8.3, z = -301.4 }, rot = { x = 0.0, y = 299.0, z = 0.0 }, level = 5 },
	{ config_id = 62, monster_id = 20011201, pos = { x = -128.2, y = -8.3, z = -298.5 }, rot = { x = 0.0, y = 251.4, z = 0.0 }, level = 5 },
	{ config_id = 63, monster_id = 20011201, pos = { x = -134.3, y = -8.3, z = -298.3 }, rot = { x = 0.0, y = 155.3, z = 0.0 }, level = 5 },
	{ config_id = 64, monster_id = 20011201, pos = { x = -134.6, y = -8.3, z = -304.4 }, rot = { x = 0.0, y = 50.1, z = 0.0 }, level = 5 },
	{ config_id = 65, monster_id = 20011201, pos = { x = -128.2, y = -8.3, z = -304.4 }, rot = { x = 0.0, y = 311.7, z = 0.0 }, level = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 44, gadget_id = 70220018, pos = { x = -128.0, y = -14.8, z = -300.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 45, gadget_id = 70220018, pos = { x = -128.0, y = -14.8, z = -298.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 46, gadget_id = 70220018, pos = { x = -130.2, y = -14.8, z = -298.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 47, gadget_id = 70220018, pos = { x = -130.1, y = -14.8, z = -300.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 48, gadget_id = 70220018, pos = { x = -128.0, y = -14.8, z = -304.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 49, gadget_id = 70220018, pos = { x = -128.0, y = -14.8, z = -302.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 50, gadget_id = 70220018, pos = { x = -130.2, y = -14.8, z = -302.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 51, gadget_id = 70220018, pos = { x = -130.2, y = -14.8, z = -304.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 52, gadget_id = 70220018, pos = { x = -132.4, y = -14.8, z = -304.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 53, gadget_id = 70220018, pos = { x = -132.4, y = -14.8, z = -302.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 54, gadget_id = 70220018, pos = { x = -134.6, y = -14.8, z = -302.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 55, gadget_id = 70220018, pos = { x = -134.6, y = -14.8, z = -304.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 56, gadget_id = 70220018, pos = { x = -132.3, y = -14.8, z = -300.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 57, gadget_id = 70220018, pos = { x = -132.3, y = -14.8, z = -298.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 58, gadget_id = 70220018, pos = { x = -134.5, y = -14.8, z = -298.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 59, gadget_id = 70220018, pos = { x = -134.5, y = -14.8, z = -300.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_40", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_40", action = "action_EVENT_ANY_MONSTER_DIE_40", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_107", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_107", action = "action_EVENT_ANY_MONSTER_DIE_107", trigger_count = 0 }
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
		monsters = { 61, 62, 63, 64, 65 },
		gadgets = { 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_107" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_40(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016016) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_40(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016013, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016016, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_107(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016016) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_107(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016030, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016016, 2)
	
	return 0
end
