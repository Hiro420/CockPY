--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 855, monster_id = 21010201, pos = { x = 2743.8, y = 260.0, z = -1376.6 }, rot = { x = 0.0, y = 294.5, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 856, monster_id = 21010601, pos = { x = 2741.2, y = 260.5, z = -1374.8 }, rot = { x = 0.0, y = 131.2, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 857, monster_id = 21010501, pos = { x = 2741.3, y = 261.2, z = -1382.6 }, rot = { x = 0.0, y = 30.9, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 858, monster_id = 20011201, pos = { x = 2742.8, y = 260.1, z = -1374.6 }, rot = { x = 0.0, y = 174.1, z = 0.0 }, level = 19, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 859, monster_id = 21010201, pos = { x = 2745.2, y = 259.1, z = -1354.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2978, gadget_id = 70211002, pos = { x = 2739.8, y = 261.1, z = -1380.0 }, rot = { x = 4.8, y = 33.2, z = 355.2 }, level = 30, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 2979, gadget_id = 70310004, pos = { x = 2742.4, y = 260.2, z = -1375.8 }, rot = { x = 0.0, y = 47.0, z = 0.0 }, level = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_173", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_173", action = "action_EVENT_ANY_MONSTER_DIE_173", tlog_tag = "望风山地_218_怪物营地_结算" }
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
		monsters = { 855, 856, 857, 858, 859 },
		gadgets = { 2978, 2979 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_173" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_173(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_173(context, evt)
	-- 解锁目标2978
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 2978, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
