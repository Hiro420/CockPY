--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 904, monster_id = 21030101, pos = { x = 2843.0, y = 259.6, z = -1345.7 }, rot = { x = 0.0, y = 43.7, z = 0.0 }, level = 15, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 905, monster_id = 21010301, pos = { x = 2845.9, y = 260.0, z = -1345.4 }, rot = { x = 0.0, y = 268.9, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 906, monster_id = 21010401, pos = { x = 2847.2, y = 260.4, z = -1340.2 }, rot = { x = 0.0, y = 207.2, z = 0.0 }, level = 15, drop_tag = "远程丘丘人", pose_id = 9003 },
	{ config_id = 907, monster_id = 20011001, pos = { x = 2844.3, y = 259.9, z = -1343.7 }, rot = { x = 0.0, y = 134.8, z = 0.0 }, level = 15, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2993, gadget_id = 70211002, pos = { x = 2844.1, y = 259.8, z = -1347.7 }, rot = { x = 0.0, y = 187.9, z = 0.0 }, level = 30, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 3431, gadget_id = 70310003, pos = { x = 2841.1, y = 259.5, z = -1343.9 }, rot = { x = 0.0, y = 319.9, z = 0.0 }, level = 30, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_180", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_180", action = "action_EVENT_ANY_MONSTER_DIE_180", tlog_tag = "望风山地_221_怪物营地_结算" }
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
		monsters = { 904, 905, 906, 907 },
		gadgets = { 2993, 3431 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_180" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_180(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_180(context, evt)
	-- 解锁目标2993
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 2993, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
