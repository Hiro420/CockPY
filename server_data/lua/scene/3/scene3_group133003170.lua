--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1437, monster_id = 21010201, pos = { x = 2531.5, y = 205.4, z = -1125.0 }, rot = { x = 0.0, y = 161.3, z = 0.0 }, level = 4, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 1438, monster_id = 21010701, pos = { x = 2527.9, y = 204.5, z = -1125.0 }, rot = { x = 0.0, y = 117.5, z = 0.0 }, level = 4, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2700, gadget_id = 70220013, pos = { x = 2532.8, y = 205.7, z = -1121.1 }, rot = { x = 0.0, y = 251.9, z = 0.0 }, level = 2 },
	{ config_id = 2701, gadget_id = 70220013, pos = { x = 2536.4, y = 205.6, z = -1124.7 }, rot = { x = 1.1, y = 114.5, z = 359.6 }, level = 2 },
	{ config_id = 4100, gadget_id = 70310004, pos = { x = 2532.3, y = 205.5, z = -1127.0 }, rot = { x = 0.0, y = 127.3, z = 0.0 }, level = 2, state = GadgetState.GearStart },
	{ config_id = 4110, gadget_id = 70211002, pos = { x = 2533.5, y = 205.3, z = -1130.4 }, rot = { x = 356.3, y = 279.5, z = 358.2 }, level = 2, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_509", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_509", action = "action_EVENT_ANY_MONSTER_DIE_509", tlog_tag = "新手区_主动线遗迹港口营地_清剿完成" }
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
		monsters = { 1437, 1438 },
		gadgets = { 2700, 2701, 4100, 4110 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_509" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_509(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_509(context, evt)
	-- 解锁目标4110
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 4110, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
