--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 520001, monster_id = 23030101, pos = { x = 1569.8, y = 242.6, z = 467.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "召唤师", pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 520002, gadget_id = 70211012, pos = { x = 1569.4, y = 242.4, z = 469.9 }, rot = { x = 14.0, y = 302.8, z = 354.5 }, level = 18, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_520003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_520003", action = "action_EVENT_ANY_MONSTER_DIE_520003" }
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
		monsters = { 520001 },
		gadgets = { 520002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_520003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_520003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_520003(context, evt)
	-- 将configid为 520002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 520002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
