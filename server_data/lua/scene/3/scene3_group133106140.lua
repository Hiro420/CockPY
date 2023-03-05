--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 140001, monster_id = 20010101, pos = { x = -158.6, y = 216.0, z = 1039.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "史莱姆" },
	{ config_id = 140002, monster_id = 20010101, pos = { x = -156.3, y = 216.6, z = 1037.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "史莱姆" },
	{ config_id = 140003, monster_id = 20010201, pos = { x = -158.2, y = 216.3, z = 1037.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "史莱姆" },
	{ config_id = 140004, monster_id = 20010101, pos = { x = -158.0, y = 216.4, z = 1035.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "史莱姆" },
	{ config_id = 140005, monster_id = 20010101, pos = { x = -160.3, y = 215.8, z = 1036.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 140007, gadget_id = 70211011, pos = { x = -154.5, y = 216.9, z = 1034.1 }, rot = { x = 0.0, y = 312.7, z = 0.0 }, level = 32, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_140006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_140006", action = "action_EVENT_ANY_MONSTER_DIE_140006" }
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
		monsters = { 140001, 140002, 140003, 140004, 140005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_140006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_140006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_140006(context, evt)
	-- 创建id为140007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 140007 }) then
	  return -1
	end
	
	return 0
end
