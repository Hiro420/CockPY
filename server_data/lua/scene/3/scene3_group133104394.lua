--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 394001, monster_id = 20040101, pos = { x = 156.3, y = 207.4, z = 957.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 35, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 394002, gadget_id = 70210106, pos = { x = 159.0, y = 204.9, z = 954.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "无相之雷璃月", showcutscene = true, persistent = true, boss_chest = {monster_config_id=394001, world_resin=2, life_time=600, take_num=100} }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_394003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_394003", action = "action_EVENT_ANY_MONSTER_DIE_394003" }
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
		monsters = { 394001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_394003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_394003(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133104394) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_394003(context, evt)
	-- 创建id为394002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 394002 }) then
	  return -1
	end
	
	return 0
end
