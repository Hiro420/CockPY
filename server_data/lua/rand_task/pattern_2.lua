--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4, monster_id = 21010701, pos = { x = -1.5, y = 0.0, z = -2.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 5, monster_id = 21010701, pos = { x = 1.3, y = 0.2, z = 1.8 }, rot = { x = 0.0, y = 229.5, z = 0.0 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 2, shape = RegionShape.SPHERE, radius = 5, pos = { x = 0.0, y = 0.0, z = 0.1 } },
	{ config_id = 6, shape = RegionShape.SPHERE, radius = 3.48, pos = { x = -0.2, y = 0.0, z = -1.3 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_2", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2", action = "action_EVENT_ANY_MONSTER_LIVE_2" },
	{ name = "ANY_MONSTER_DIE_6", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6", action = "action_EVENT_ANY_MONSTER_DIE_6" }
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
	rand_suite = false,
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
		monsters = { 4, 5 },
		gadgets = { },
		regions = { 2, 6 },
		triggers = { "ANY_MONSTER_LIVE_2", "ANY_MONSTER_DIE_6" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_2(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2(context, evt)
	local group_id = ScriptLib.GetContextGroupId(context)
	
	-- 通知groupid为139999003中,configid为：4的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 4, group_id) then
	  return -1
	end
	
	-- 通知groupid为139999003中,configid为：5的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 5, group_id) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 2, true)
	
	
	return 0
end
