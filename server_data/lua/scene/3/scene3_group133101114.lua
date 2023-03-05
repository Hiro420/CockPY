--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 114001, monster_id = 20010301, pos = { x = 1459.5, y = 231.0, z = 1224.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 114002, monster_id = 20010301, pos = { x = 1462.6, y = 231.0, z = 1227.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 114003, monster_id = 20010301, pos = { x = 1467.0, y = 231.0, z = 1228.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 114004, monster_id = 20010401, pos = { x = 1463.3, y = 231.0, z = 1225.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 114006, gadget_id = 70211001, pos = { x = 1463.0, y = 231.0, z = 1226.4 }, rot = { x = 0.0, y = 238.7, z = 0.0 }, level = 19, drop_tag = "战斗低级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_114005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_114005", action = "action_EVENT_ANY_MONSTER_DIE_114005" }
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
		monsters = { 114001, 114002, 114003, 114004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_114005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_114005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_114005(context, evt)
	-- 创建id为114006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 114006 }) then
	  return -1
	end
	
	return 0
end
