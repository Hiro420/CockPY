--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8, monster_id = 21030201, pos = { x = 2764.0, y = 229.3, z = -157.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 9, monster_id = 21030301, pos = { x = 2767.0, y = 229.3, z = -155.6 }, rot = { x = 0.0, y = 313.7, z = 0.0 }, level = 30, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 21, monster_id = 21010401, pos = { x = 2760.9, y = 227.2, z = -151.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 22, monster_id = 21010401, pos = { x = 2767.2, y = 227.2, z = -150.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 282, gadget_id = 70211012, pos = { x = 2766.6, y = 229.3, z = -159.9 }, rot = { x = 0.0, y = 345.7, z = 0.0 }, level = 23, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 283, gadget_id = 70310001, pos = { x = 2770.3, y = 229.3, z = -159.2 }, rot = { x = 0.0, y = 195.2, z = 0.0 }, level = 23, state = GadgetState.GearStart },
	{ config_id = 284, gadget_id = 70310001, pos = { x = 2763.6, y = 229.3, z = -161.5 }, rot = { x = 0.0, y = 136.4, z = 0.0 }, level = 23, state = GadgetState.GearStart },
	{ config_id = 475, gadget_id = 70310001, pos = { x = 2760.3, y = 219.0, z = -131.9 }, rot = { x = 0.0, y = 36.6, z = 0.0 }, level = 23, state = GadgetState.GearStart },
	{ config_id = 476, gadget_id = 70310001, pos = { x = 2752.8, y = 219.0, z = -134.9 }, rot = { x = 0.0, y = 277.1, z = 0.0 }, level = 23, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_58", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58", action = "action_EVENT_ANY_MONSTER_DIE_58" }
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
		monsters = { 8, 9, 21, 22 },
		gadgets = { 282, 283, 284, 475, 476 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_58" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_58(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58(context, evt)
	-- 解锁目标282
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 282, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
