--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 78, monster_id = 21010101, pos = { x = 1757.1, y = 259.3, z = 397.9 }, rot = { x = 0.0, y = 193.1, z = 0.0 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 79, monster_id = 21010101, pos = { x = 1753.8, y = 259.1, z = 397.2 }, rot = { x = 0.0, y = 110.1, z = 0.0 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 80, monster_id = 21010401, pos = { x = 1752.8, y = 263.7, z = 404.2 }, rot = { x = 0.0, y = 163.2, z = 0.0 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 214, gadget_id = 70211002, pos = { x = 1751.9, y = 263.8, z = 405.3 }, rot = { x = 0.0, y = 141.9, z = 0.0 }, level = 18, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_482", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_482", action = "action_EVENT_ANY_MONSTER_DIE_482", trigger_count = 0 }
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
		monsters = { 78, 79, 80 },
		gadgets = { 214 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_482" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_482(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_482(context, evt)
	-- 将configid为 214 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 214, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
