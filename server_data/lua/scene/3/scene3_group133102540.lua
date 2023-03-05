--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 540001, monster_id = 21010201, pos = { x = 1732.3, y = 225.3, z = 61.7 }, rot = { x = 11.4, y = 316.1, z = 359.1 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 540004, monster_id = 21010201, pos = { x = 1736.7, y = 226.2, z = 58.7 }, rot = { x = 8.6, y = 349.9, z = 3.5 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 540005, monster_id = 21010201, pos = { x = 1742.7, y = 226.3, z = 61.4 }, rot = { x = 8.9, y = 36.7, z = 358.2 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 540006, monster_id = 21010401, pos = { x = 1736.9, y = 226.9, z = 52.9 }, rot = { x = 353.3, y = 108.2, z = 5.8 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 540002, gadget_id = 70211012, pos = { x = 1738.8, y = 226.3, z = 58.7 }, rot = { x = 8.0, y = 358.2, z = 4.7 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_540003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_540003", action = "action_EVENT_ANY_MONSTER_DIE_540003" }
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
		monsters = { 540001, 540004, 540005, 540006 },
		gadgets = { 540002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_540003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_540003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_540003(context, evt)
	-- 将configid为 540002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 540002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
