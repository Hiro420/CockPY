--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 956, monster_id = 21020201, pos = { x = 2827.1, y = 271.4, z = -1445.8 }, rot = { x = 0.0, y = 250.2, z = 0.0 }, level = 19, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 957, monster_id = 21010301, pos = { x = 2823.1, y = 271.4, z = -1444.2 }, rot = { x = 0.0, y = 143.4, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 958, monster_id = 21010401, pos = { x = 2824.7, y = 271.2, z = -1448.3 }, rot = { x = 0.0, y = 2.9, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3143, gadget_id = 70211012, pos = { x = 2825.9, y = 271.9, z = -1440.9 }, rot = { x = 7.3, y = 185.3, z = 358.0 }, level = 30, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_199", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_199", action = "action_EVENT_ANY_MONSTER_DIE_199", tlog_tag = "望风山地_291_怪物营地_结算" }
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
		monsters = { 956, 957, 958 },
		gadgets = { 3143 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_199" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_199(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_199(context, evt)
	-- 解锁目标3143
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3143, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
