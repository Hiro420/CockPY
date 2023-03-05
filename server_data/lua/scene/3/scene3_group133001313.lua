--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1372, monster_id = 20040101, pos = { x = 1306.4, y = 331.8, z = -1937.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 35, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3279, gadget_id = 70210106, pos = { x = 1306.0, y = 329.8, z = -1937.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, drop_tag = "无相之雷蒙德", showcutscene = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, boss_chest = {monster_config_id=1372, world_resin=2, life_time=600, take_num=100} }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_488", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_488", action = "action_EVENT_ANY_MONSTER_DIE_488" }
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
		monsters = { 1372 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_488" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_488(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_488(context, evt)
	-- 创建id为3279的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3279 }) then
	  return -1
	end
	
	return 0
end
