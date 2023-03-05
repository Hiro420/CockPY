--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1030, monster_id = 21020101, pos = { x = 2651.9, y = 268.6, z = -1565.3 }, rot = { x = 0.0, y = 64.7, z = 0.0 }, level = 19, drop_tag = "丘丘暴徒", pose_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3282, gadget_id = 70310001, pos = { x = 2654.2, y = 268.5, z = -1566.9 }, rot = { x = 0.0, y = 146.0, z = 0.0 }, level = 30, state = GadgetState.GearStart },
	{ config_id = 3283, gadget_id = 70220005, pos = { x = 2650.5, y = 268.8, z = -1563.7 }, rot = { x = 0.0, y = 259.1, z = 0.0 }, level = 30 },
	{ config_id = 3284, gadget_id = 70211012, pos = { x = 2648.7, y = 268.4, z = -1567.0 }, rot = { x = 0.0, y = 58.7, z = 0.0 }, level = 30, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 3285, gadget_id = 70211001, pos = { x = 2644.8, y = 267.8, z = -1573.4 }, rot = { x = 4.2, y = 187.6, z = 0.0 }, level = 30, drop_tag = "战斗低级蒙德", isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_232", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_232", action = "action_EVENT_ANY_MONSTER_DIE_232", tlog_tag = "望风山地_315_封印宝箱_结算" }
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
		monsters = { 1030 },
		gadgets = { 3282, 3283, 3284, 3285 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_232" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_232(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_232(context, evt)
	-- 解锁目标3284
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3284, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
