--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 808, monster_id = 21010201, pos = { x = 1785.7, y = 260.6, z = -1027.5 }, rot = { x = 0.0, y = 176.4, z = 0.0 }, level = 4, drop_tag = "丘丘人", pose_id = 9003 },
	{ config_id = 809, monster_id = 21010201, pos = { x = 1782.7, y = 260.6, z = -1029.8 }, rot = { x = 0.0, y = 87.5, z = 0.0 }, level = 4, drop_tag = "丘丘人", pose_id = 9002 },
	{ config_id = 810, monster_id = 21010201, pos = { x = 1785.3, y = 259.6, z = -1032.8 }, rot = { x = 0.0, y = 2.0, z = 0.0 }, level = 4, drop_tag = "丘丘人", pose_id = 9003 },
	{ config_id = 811, monster_id = 21030101, pos = { x = 1788.8, y = 258.6, z = -1034.6 }, rot = { x = 0.0, y = 2.0, z = 0.0 }, level = 4, drop_tag = "丘丘萨满" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2105, gadget_id = 70310006, pos = { x = 1785.7, y = 260.0, z = -1029.8 }, rot = { x = 0.0, y = 248.3, z = 7.3 }, level = 5, state = GadgetState.GearStart },
	{ config_id = 2106, gadget_id = 70220013, pos = { x = 1781.7, y = 261.4, z = -1025.9 }, rot = { x = 0.0, y = 254.9, z = 5.6 }, level = 5 },
	{ config_id = 2107, gadget_id = 70220013, pos = { x = 1783.3, y = 261.4, z = -1024.8 }, rot = { x = 348.6, y = 323.4, z = 0.9 }, level = 5 },
	{ config_id = 2108, gadget_id = 70220014, pos = { x = 1780.2, y = 260.0, z = -1035.0 }, rot = { x = 19.8, y = 141.9, z = 0.0 }, level = 5 },
	{ config_id = 2109, gadget_id = 70310001, pos = { x = 1770.5, y = 264.5, z = -1023.4 }, rot = { x = 0.0, y = 344.2, z = 0.0 }, level = 5, state = GadgetState.GearStart },
	{ config_id = 2110, gadget_id = 70310001, pos = { x = 1781.5, y = 259.7, z = -1035.8 }, rot = { x = 0.0, y = 344.2, z = 0.0 }, level = 5, state = GadgetState.GearStart },
	{ config_id = 2111, gadget_id = 70211012, pos = { x = 1787.2, y = 260.9, z = -1025.0 }, rot = { x = 3.7, y = 206.4, z = 16.7 }, level = 5, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_290", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_290", action = "action_EVENT_ANY_MONSTER_DIE_290", tlog_tag = "酒庄_244_清泉镇后山左侧营地清剿_成功" }
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
		monsters = { 808, 809, 810, 811 },
		gadgets = { 2105, 2106, 2107, 2108, 2109, 2110, 2111 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_290" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_290(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_290(context, evt)
	-- 解锁目标2111
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 2111, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
