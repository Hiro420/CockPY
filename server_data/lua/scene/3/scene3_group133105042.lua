--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 109, monster_id = 25010201, pos = { x = 877.6, y = 272.5, z = -201.8 }, rot = { x = 0.0, y = 341.8, z = 0.0 }, level = 24, drop_tag = "盗宝团" },
	{ config_id = 110, monster_id = 25020202, pos = { x = 865.4, y = 274.1, z = -205.2 }, rot = { x = 0.0, y = 42.2, z = 0.0 }, level = 24, drop_tag = "盗宝团" },
	{ config_id = 111, monster_id = 25030201, pos = { x = 875.2, y = 272.0, z = -197.1 }, rot = { x = 0.0, y = 286.0, z = 0.0 }, level = 24, drop_tag = "盗宝团" },
	{ config_id = 114, monster_id = 25040201, pos = { x = 870.3, y = 272.8, z = -201.7 }, rot = { x = 0.0, y = 3.1, z = 0.0 }, level = 24, drop_tag = "盗宝团" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 85, gadget_id = 70211012, pos = { x = 867.3, y = 272.8, z = -198.9 }, rot = { x = 10.1, y = 46.2, z = 356.5 }, level = 25, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_60", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_60", action = "action_EVENT_ANY_MONSTER_DIE_60" },
	{ name = "MONSTER_BATTLE_42001", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_42001", action = "action_EVENT_MONSTER_BATTLE_42001" }
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
		monsters = { 114 },
		gadgets = { 85 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_60", "MONSTER_BATTLE_42001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 109, 110, 111 },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_60(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_60(context, evt)
	-- 解锁目标85
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 85, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_42001(context, evt)
	if 114 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_42001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105042, 2)
	
	return 0
end
