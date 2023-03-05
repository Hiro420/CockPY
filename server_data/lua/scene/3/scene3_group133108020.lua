--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 20001, monster_id = 20040301, pos = { x = 46.1, y = 201.6, z = -856.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 35, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 20002, gadget_id = 70210106, pos = { x = 46.2, y = 200.5, z = -856.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "无相之岩璃月", showcutscene = true, persistent = true, boss_chest = {monster_config_id=20001, world_resin=2, life_time=600, take_num=100} }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_20003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20003", action = "action_EVENT_ANY_MONSTER_DIE_20003" }
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
		-- description = suite_1,
		monsters = { 20001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_20003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20003(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133108020) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20003(context, evt)
	-- 创建id为20002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 20002 }) then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4002, 3, 1) then
	      return -1
	    end
	
	return 0
end
