--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 483001, monster_id = 21010201, pos = { x = 1481.3, y = 219.9, z = 457.8 }, rot = { x = 0.0, y = 135.4, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 483004, monster_id = 21010101, pos = { x = 1483.5, y = 219.9, z = 460.5 }, rot = { x = 345.8, y = 100.3, z = 0.7 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 483005, monster_id = 21010101, pos = { x = 1478.1, y = 220.1, z = 456.4 }, rot = { x = 0.0, y = 216.5, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 483006, monster_id = 21010101, pos = { x = 1477.5, y = 219.9, z = 464.1 }, rot = { x = 0.0, y = 245.8, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 483002, gadget_id = 70211012, pos = { x = 1481.5, y = 225.7, z = 453.3 }, rot = { x = 354.7, y = 357.8, z = 21.4 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_483003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_483003", action = "action_EVENT_ANY_MONSTER_DIE_483003" }
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
		-- description = ,
		monsters = { 483001, 483004, 483005, 483006 },
		gadgets = { 483002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_483003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_483003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_483003(context, evt)
	-- 将configid为 483002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 483002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
