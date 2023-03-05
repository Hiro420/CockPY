--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11, monster_id = 20010301, pos = { x = 2610.0, y = 205.5, z = -54.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "史莱姆" },
	{ config_id = 12, monster_id = 20010401, pos = { x = 2608.9, y = 206.0, z = -57.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 20, monster_id = 20010301, pos = { x = 2612.7, y = 205.7, z = -57.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 40, gadget_id = 70211002, pos = { x = 2607.9, y = 206.9, z = -61.2 }, rot = { x = 0.0, y = 23.4, z = 0.0 }, level = 23, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_57", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_57", action = "action_EVENT_ANY_MONSTER_DIE_57" }
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
	rand_suite = true
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
		monsters = { 11, 12, 20 },
		gadgets = { 40 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_57" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_57(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_57(context, evt)
	-- 解锁目标40
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 40, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
