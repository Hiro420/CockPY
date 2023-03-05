--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 55001, monster_id = 24010101, pos = { x = -326.4, y = 200.3, z = -718.7 }, rot = { x = 0.0, y = 285.8, z = 0.0 }, level = 34, drop_tag = "遗迹守卫", pose_id = 101 },
	{ config_id = 55002, monster_id = 24010101, pos = { x = -358.9, y = 201.2, z = -694.6 }, rot = { x = 0.0, y = 157.6, z = 0.0 }, level = 34, drop_tag = "遗迹守卫", pose_id = 101 },
	{ config_id = 55003, monster_id = 24010101, pos = { x = -376.6, y = 202.1, z = -697.6 }, rot = { x = 0.0, y = 184.2, z = 0.0 }, level = 34, drop_tag = "遗迹守卫", pose_id = 101 },
	{ config_id = 55004, monster_id = 24010101, pos = { x = -360.7, y = 201.2, z = -718.2 }, rot = { x = 0.0, y = 56.3, z = 0.0 }, level = 34, drop_tag = "遗迹守卫", pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 55005, gadget_id = 70310007, pos = { x = -341.3, y = 200.9, z = -730.9 }, rot = { x = 0.0, y = 19.6, z = 0.0 }, level = 32 },
	{ config_id = 55006, gadget_id = 70310007, pos = { x = -336.4, y = 198.4, z = -701.1 }, rot = { x = 51.8, y = 19.6, z = 22.5 }, level = 32 },
	{ config_id = 55007, gadget_id = 70310007, pos = { x = -358.2, y = 201.4, z = -740.2 }, rot = { x = 45.4, y = 334.5, z = 61.2 }, level = 32 },
	{ config_id = 55008, gadget_id = 70310007, pos = { x = -368.5, y = 200.5, z = -710.4 }, rot = { x = 317.4, y = 82.1, z = 1.1 }, level = 32 },
	{ config_id = 55009, gadget_id = 70310007, pos = { x = -366.5, y = 201.4, z = -681.1 }, rot = { x = 45.4, y = 334.5, z = 61.2 }, level = 32 },
	{ config_id = 55010, gadget_id = 70211011, pos = { x = -359.1, y = 200.8, z = -717.0 }, rot = { x = 4.0, y = 63.6, z = 356.0 }, level = 32, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true },
	{ config_id = 55011, gadget_id = 70211031, pos = { x = -353.0, y = 200.5, z = -716.5 }, rot = { x = 1.1, y = 13.9, z = 359.3 }, level = 32, drop_tag = "战斗超级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_55012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_55012", action = "action_EVENT_ANY_MONSTER_DIE_55012" }
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
		monsters = { 55001, 55002, 55003, 55004 },
		gadgets = { 55005, 55006, 55007, 55008, 55009, 55010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_55012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 55011 },
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
function condition_EVENT_ANY_MONSTER_DIE_55012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_55012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108055, 2)
	
	return 0
end
