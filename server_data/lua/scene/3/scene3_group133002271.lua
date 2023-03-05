--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 994, monster_id = 20040301, pos = { x = 1874.9, y = 250.3, z = -993.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 35, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2281, gadget_id = 70210106, pos = { x = 1874.4, y = 248.8, z = -992.6 }, rot = { x = 0.0, y = 0.0, z = 356.5 }, level = 5, drop_tag = "无相之岩蒙德", showcutscene = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, boss_chest = {monster_config_id=994, world_resin=2, life_time=600, take_num=100} }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_352", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_352", action = "action_EVENT_ANY_MONSTER_DIE_352" }
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
		monsters = { 994 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_352" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_352(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_352(context, evt)
	-- 创建id为2281的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2281 }) then
	  return -1
	end
	
	return 0
end
