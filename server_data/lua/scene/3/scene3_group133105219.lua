--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 219001, monster_id = 24010201, pos = { x = 333.1, y = 199.9, z = -176.5 }, rot = { x = 0.0, y = 34.8, z = 0.0 }, level = 19, drop_tag = "遗迹守卫", pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 219003, gadget_id = 70211021, pos = { x = 333.4, y = 199.8, z = -180.4 }, rot = { x = 0.0, y = 359.4, z = 0.0 }, level = 19, drop_tag = "战斗高级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 219004, gadget_id = 70310007, pos = { x = 344.9, y = 198.6, z = -176.8 }, rot = { x = 306.6, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 219005, gadget_id = 70310007, pos = { x = 328.1, y = 198.3, z = -164.3 }, rot = { x = 11.0, y = 76.4, z = 60.4 }, level = 19 },
	{ config_id = 219006, gadget_id = 70310007, pos = { x = 346.7, y = 199.2, z = -165.9 }, rot = { x = 80.3, y = 204.9, z = 48.3 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_219002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_219002", action = "action_EVENT_ANY_MONSTER_DIE_219002" }
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
		monsters = { 219001 },
		gadgets = { 219004, 219005, 219006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_219002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 219003 },
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
function condition_EVENT_ANY_MONSTER_DIE_219002(context, evt)
	if 219001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_219002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105219, 2)
	
	return 0
end
