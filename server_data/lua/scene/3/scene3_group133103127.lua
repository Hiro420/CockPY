--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 127001, monster_id = 20010501, pos = { x = 633.1, y = 200.7, z = 1123.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 127002, monster_id = 20010501, pos = { x = 634.6, y = 200.3, z = 1124.8 }, rot = { x = 0.0, y = 57.8, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 127003, monster_id = 20010501, pos = { x = 633.3, y = 199.9, z = 1127.7 }, rot = { x = 0.0, y = 11.5, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 127004, monster_id = 20010501, pos = { x = 630.8, y = 200.4, z = 1128.6 }, rot = { x = 0.0, y = 22.9, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 127005, monster_id = 20010501, pos = { x = 629.2, y = 201.3, z = 1126.1 }, rot = { x = 0.0, y = 178.5, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 127006, monster_id = 20010501, pos = { x = 630.5, y = 201.2, z = 1123.8 }, rot = { x = 0.0, y = 27.8, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 127007, monster_id = 20010701, pos = { x = 631.9, y = 200.5, z = 1125.7 }, rot = { x = 0.0, y = 202.8, z = 0.0 }, level = 24, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 127009, gadget_id = 70211011, pos = { x = 629.5, y = 201.6, z = 1122.8 }, rot = { x = 8.8, y = 45.1, z = 1.3 }, level = 24, drop_tag = "战斗中级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_127008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_127008", action = "action_EVENT_ANY_MONSTER_DIE_127008" }
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
		monsters = { 127001, 127002, 127003, 127004, 127005, 127006, 127007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_127008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 127009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_127008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_127008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103127, 2)
	
	return 0
end
