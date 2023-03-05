--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 427001, monster_id = 20010101, pos = { x = 897.1, y = 209.1, z = 639.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 427002, monster_id = 20010101, pos = { x = 902.6, y = 208.7, z = 636.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 427003, monster_id = 20010101, pos = { x = 906.5, y = 209.0, z = 639.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 427004, gadget_id = 70211001, pos = { x = 903.1, y = 209.5, z = 645.2 }, rot = { x = 3.3, y = 186.7, z = 2.2 }, level = 19, drop_tag = "战斗低级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_427005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_427005", action = "action_EVENT_ANY_MONSTER_DIE_427005" }
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
		monsters = { 427001, 427002, 427003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_427005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_427005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_427005(context, evt)
	-- 创建id为427004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 427004 }) then
	  return -1
	end
	
	return 0
end
