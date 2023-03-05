--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 27, monster_id = 21010201, pos = { x = 722.2, y = 276.7, z = 1734.1 }, rot = { x = 0.0, y = 45.0, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 28001, monster_id = 21011201, pos = { x = 723.9, y = 276.8, z = 1732.3 }, rot = { x = 0.0, y = 349.8, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 143, gadget_id = 70211002, pos = { x = 723.0, y = 276.5, z = 1737.1 }, rot = { x = 7.7, y = 0.5, z = 8.1 }, level = 24, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_43", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_43", action = "action_EVENT_ANY_MONSTER_DIE_43" }
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
		monsters = { 27, 28001 },
		gadgets = { 143 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_43" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_43(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_43(context, evt)
	-- 将configid为 143 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 143, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
