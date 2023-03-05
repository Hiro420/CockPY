--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 523001, monster_id = 23020101, pos = { x = 1686.0, y = 308.8, z = 411.6 }, rot = { x = 0.0, y = 56.6, z = 0.0 }, level = 18, drop_tag = "债务处理人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 523002, gadget_id = 70211022, pos = { x = 1695.7, y = 310.1, z = 414.4 }, rot = { x = 2.8, y = 251.7, z = 0.5 }, level = 18, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_523003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_523003", action = "action_EVENT_ANY_MONSTER_DIE_523003" }
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
		monsters = { 523001 },
		gadgets = { 523002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_523003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_523003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_523003(context, evt)
	-- 将configid为 523002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 523002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
