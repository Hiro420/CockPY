--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1, monster_id = 20040201, pos = { x = 1745.2, y = 197.6, z = 280.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 35, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 887, gadget_id = 70210106, pos = { x = 1743.3, y = 197.8, z = 281.4 }, rot = { x = 0.0, y = 270.7, z = 0.0 }, level = 18, drop_tag = "无相之风璃月", showcutscene = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT, boss_chest = {monster_config_id=1, world_resin=2, life_time=600, take_num=100} }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_112", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_112", action = "action_EVENT_ANY_MONSTER_DIE_112", trigger_count = 0 }
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
		monsters = { 1 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_112" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_112(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133102006) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_112(context, evt)
	-- 创建id为887的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 887 }) then
	  return -1
	end
	
	return 0
end
