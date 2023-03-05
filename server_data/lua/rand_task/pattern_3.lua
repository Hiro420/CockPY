--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6, monster_id = 21010301, pos = { x = 1.4, y = 0.1, z = 0.7 }, rot = { x = 0.0, y = 305.5, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 7, monster_id = 21010301, pos = { x = -1.7, y = 0.1, z = -2.1 }, rot = { x = 0.0, y = 356.9, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9010 },
	{ config_id = 8, monster_id = 21010301, pos = { x = 1.1, y = 0.2, z = -1.8 }, rot = { x = 0.0, y = 327.7, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2, gadget_id = 70300055, pos = { x = -1.3, y = 1.2, z = 1.0 }, rot = { x = 0.0, y = 323.2, z = 0.0 }, level = 5, route_id = 54, born_type = GadgetBornType.GROUND }
}

-- 区域
regions = {
	{ config_id = 4, shape = RegionShape.SPHERE, radius = 3.48, pos = { x = -1.0, y = 0.1, z = 1.9 } },
	{ config_id = 5, shape = RegionShape.SPHERE, radius = 5, pos = { x = -0.5, y = 0.1, z = 1.7 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_4", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4", action = "action_EVENT_ANY_MONSTER_DIE_4" },
	{ name = "ANY_GADGET_DIE_5", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5", action = "action_EVENT_ANY_GADGET_DIE_5" }
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
	rand_suite = true,
	npcs = { }
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 0,
		-- description = ,
		monsters = { 6, 7, 8 },
		gadgets = { 2 },
		regions = { 4, 5 },
		triggers = { "ANY_MONSTER_DIE_4", "ANY_GADGET_DIE_5" },
		rand_weight = 100
	},
	{
		-- suite_id = 1,
		-- description = suite_2,
		monsters = { 6, 7, 8 },
		gadgets = { 2 },
		regions = { 4, 5 },
		triggers = { "ANY_MONSTER_DIE_4", "ANY_GADGET_DIE_5" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 3, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 3, false)
	
	
	return 0
end
