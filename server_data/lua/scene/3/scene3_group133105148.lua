--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 186, monster_id = 21030201, pos = { x = 985.0, y = 252.9, z = -144.2 }, rot = { x = 0.0, y = 295.8, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", pose_id = 9012 },
	{ config_id = 187, monster_id = 21010501, pos = { x = 982.0, y = 252.6, z = -144.0 }, rot = { x = 0.0, y = 60.9, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", pose_id = 9003 },
	{ config_id = 188, monster_id = 21010301, pos = { x = 983.8, y = 252.3, z = -141.5 }, rot = { x = 0.0, y = 190.0, z = 0.0 }, level = 24, drop_tag = "丘丘人", pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 249, gadget_id = 70310006, pos = { x = 983.6, y = 252.6, z = -143.4 }, rot = { x = 6.0, y = 0.0, z = 3.9 }, level = 25 },
	{ config_id = 393, gadget_id = 70211002, pos = { x = 983.7, y = 253.3, z = -146.2 }, rot = { x = 13.1, y = 0.6, z = 4.5 }, level = 25, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_148001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_148001", action = "action_EVENT_ANY_MONSTER_DIE_148001" }
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
		-- description = suite_1,
		monsters = { 186, 187, 188 },
		gadgets = { 249, 393 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_148001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_148001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_148001(context, evt)
	-- 解锁目标393
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 393, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
