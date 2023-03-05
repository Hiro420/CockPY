--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 401001, monster_id = 20010101, pos = { x = 743.5, y = 208.3, z = 636.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 401002, monster_id = 20010101, pos = { x = 745.3, y = 208.2, z = 634.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 401003, monster_id = 20010101, pos = { x = 744.2, y = 207.6, z = 630.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 401006, monster_id = 20010201, pos = { x = 741.5, y = 207.6, z = 633.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 401005, gadget_id = 70211001, pos = { x = 743.3, y = 207.8, z = 633.9 }, rot = { x = 356.4, y = 116.4, z = 351.3 }, level = 19, drop_tag = "战斗低级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_401004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_401004", action = "action_EVENT_ANY_MONSTER_DIE_401004", trigger_count = 0 }
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
		monsters = { 401001, 401002, 401003, 401006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_401004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_401004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_401004(context, evt)
	-- 创建id为401005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 401005 }) then
	  return -1
	end
	
	return 0
end
