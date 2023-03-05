--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 344001, monster_id = 20011301, pos = { x = 599.7, y = 300.5, z = 1377.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 344002, monster_id = 20011201, pos = { x = 592.8, y = 300.2, z = 1377.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 344003, monster_id = 20011201, pos = { x = 607.1, y = 301.0, z = 1377.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 344004, monster_id = 20011201, pos = { x = 596.3, y = 300.0, z = 1383.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 344005, monster_id = 20011201, pos = { x = 602.7, y = 300.1, z = 1383.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 344006, monster_id = 20011201, pos = { x = 596.0, y = 301.0, z = 1371.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 344007, monster_id = 20011201, pos = { x = 603.2, y = 301.3, z = 1371.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 344008, gadget_id = 70211011, pos = { x = 601.5, y = 300.6, z = 1377.6 }, rot = { x = 5.1, y = 0.2, z = 3.5 }, level = 24, drop_tag = "战斗中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_344009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_344009", action = "action_EVENT_ANY_MONSTER_DIE_344009" }
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
		monsters = { 344001, 344002, 344003, 344004, 344005, 344006, 344007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_344009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 344008 },
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
function condition_EVENT_ANY_MONSTER_DIE_344009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_344009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103344, 2)
	
	return 0
end
