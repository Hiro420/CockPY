--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1091, monster_id = 24010101, pos = { x = 2852.9, y = 254.1, z = -1738.0 }, rot = { x = 0.0, y = 316.2, z = 0.0 }, level = 22, drop_tag = "遗迹守卫", pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3422, gadget_id = 70220006, pos = { x = 2851.2, y = 248.7, z = -1734.6 }, rot = { x = 356.8, y = 55.4, z = 358.9 }, level = 30 },
	{ config_id = 3426, gadget_id = 70211022, pos = { x = 2851.1, y = 254.8, z = -1734.9 }, rot = { x = 0.2, y = 326.7, z = 359.7 }, level = 30, drop_tag = "战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_270", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_270", action = "action_EVENT_ANY_MONSTER_DIE_270", tlog_tag = "望风山地_317_封印宝箱_结算" }
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
		monsters = { 1091 },
		gadgets = { 3422, 3426 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_270" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_270(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_270(context, evt)
	-- 解锁目标3426
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3426, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
