--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 20001, monster_id = 20011201, pos = { x = -211.8, y = -8.3, z = -296.7 }, rot = { x = 0.0, y = 299.0, z = 0.0 }, level = 5 },
	{ config_id = 20002, monster_id = 20011201, pos = { x = -209.0, y = -8.3, z = -293.8 }, rot = { x = 0.0, y = 251.4, z = 0.0 }, level = 5 },
	{ config_id = 20003, monster_id = 20011201, pos = { x = -215.1, y = -8.3, z = -293.7 }, rot = { x = 0.0, y = 155.3, z = 0.0 }, level = 5 },
	{ config_id = 20004, monster_id = 20011201, pos = { x = -215.4, y = -8.3, z = -299.7 }, rot = { x = 0.0, y = 50.1, z = 0.0 }, level = 5 },
	{ config_id = 20005, monster_id = 20011201, pos = { x = -208.9, y = -8.3, z = -299.7 }, rot = { x = 0.0, y = 311.7, z = 0.0 }, level = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 20006, gadget_id = 70220018, pos = { x = -208.7, y = -14.8, z = -295.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 20007, gadget_id = 70220018, pos = { x = -208.7, y = -14.8, z = -293.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 20008, gadget_id = 70220018, pos = { x = -210.9, y = -14.8, z = -293.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 20009, gadget_id = 70220018, pos = { x = -210.9, y = -14.8, z = -295.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 20010, gadget_id = 70220018, pos = { x = -208.8, y = -14.8, z = -300.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 20011, gadget_id = 70220018, pos = { x = -208.7, y = -14.8, z = -297.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 20012, gadget_id = 70220018, pos = { x = -210.9, y = -14.8, z = -297.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 20013, gadget_id = 70220018, pos = { x = -210.9, y = -14.8, z = -299.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 20014, gadget_id = 70220018, pos = { x = -213.2, y = -14.8, z = -300.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 20015, gadget_id = 70220018, pos = { x = -213.2, y = -14.8, z = -297.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 20016, gadget_id = 70220018, pos = { x = -215.4, y = -14.8, z = -297.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 20017, gadget_id = 70220018, pos = { x = -215.4, y = -14.8, z = -299.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 20018, gadget_id = 70220018, pos = { x = -213.1, y = -14.8, z = -295.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 20019, gadget_id = 70220018, pos = { x = -213.1, y = -14.8, z = -293.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 20020, gadget_id = 70220018, pos = { x = -215.3, y = -14.8, z = -293.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 20021, gadget_id = 70220018, pos = { x = -215.3, y = -14.8, z = -295.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_51", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51", action = "action_EVENT_ANY_MONSTER_DIE_51", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_113", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_113", action = "action_EVENT_ANY_MONSTER_DIE_113", trigger_count = 0 }
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
		monsters = { 20001, 20002, 20003, 20004, 20005 },
		gadgets = { 20006, 20007, 20008, 20009, 20010, 20011, 20012, 20013, 20014, 20015, 20016, 20017, 20018, 20019, 20020, 20021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_113" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016016) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016017, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016020, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_113(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250016020) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_113(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250016031, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250016020, 2)
	
	return 0
end
