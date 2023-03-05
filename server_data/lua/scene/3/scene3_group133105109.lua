--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 78, monster_id = 21011201, pos = { x = 836.8, y = 259.5, z = -328.1 }, rot = { x = 0.0, y = 107.3, z = 0.0 }, level = 25, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 79, monster_id = 21010201, pos = { x = 841.8, y = 260.5, z = -331.4 }, rot = { x = 0.0, y = 212.2, z = 0.0 }, level = 26, drop_tag = "丘丘人", pose_id = 9016 },
	{ config_id = 80, monster_id = 21011001, pos = { x = 834.3, y = 260.0, z = -331.5 }, rot = { x = 0.0, y = 99.9, z = 0.0 }, level = 25, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 81, monster_id = 21010301, pos = { x = 834.6, y = 258.4, z = -318.6 }, rot = { x = 0.0, y = 334.1, z = 0.0 }, level = 25, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 267, gadget_id = 70211012, pos = { x = 832.8, y = 260.0, z = -333.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 339, gadget_id = 70310001, pos = { x = 845.6, y = 260.7, z = -333.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_156", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_156", action = "action_EVENT_ANY_MONSTER_DIE_156" }
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
		monsters = { 78, 79, 80, 81 },
		gadgets = { 267, 339 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_156" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_156(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_156(context, evt)
	-- 将configid为 267 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 267, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
