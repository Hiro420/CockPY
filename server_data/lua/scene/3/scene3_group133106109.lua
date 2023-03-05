--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 109002, monster_id = 20011301, pos = { x = -476.8, y = 183.3, z = 894.2 }, rot = { x = 0.0, y = 331.6, z = 0.0 }, level = 30, drop_tag = "史莱姆" },
	{ config_id = 109003, monster_id = 20011201, pos = { x = -477.9, y = 180.9, z = 895.3 }, rot = { x = 0.0, y = 112.8, z = 0.0 }, level = 30, drop_tag = "史莱姆" },
	{ config_id = 109004, monster_id = 20011201, pos = { x = -477.6, y = 180.9, z = 893.1 }, rot = { x = 0.0, y = 37.5, z = 0.0 }, level = 30, drop_tag = "史莱姆" },
	{ config_id = 109005, monster_id = 20011201, pos = { x = -475.9, y = 180.9, z = 895.1 }, rot = { x = 0.0, y = 254.1, z = 0.0 }, level = 30, drop_tag = "史莱姆" },
	{ config_id = 109006, monster_id = 20011201, pos = { x = -475.7, y = 180.9, z = 892.9 }, rot = { x = 0.0, y = 322.9, z = 0.0 }, level = 30, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 109001, gadget_id = 70300107, pos = { x = -476.7, y = 180.9, z = 894.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 109009, gadget_id = 70211011, pos = { x = -472.7, y = 180.7, z = 891.5 }, rot = { x = 8.1, y = 309.9, z = 353.7 }, level = 32, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_109007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_109007", action = "action_EVENT_GADGET_STATE_CHANGE_109007" },
	{ name = "ANY_MONSTER_DIE_109008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_109008", action = "action_EVENT_ANY_MONSTER_DIE_109008" }
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
		gadgets = { 109001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_109007", "ANY_MONSTER_DIE_109008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 109002, 109003, 109004, 109005, 109006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 109009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_109007(context, evt)
	if 109001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_109007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106109, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_109008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133106109) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_109008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106109, 3)
	
	return 0
end
