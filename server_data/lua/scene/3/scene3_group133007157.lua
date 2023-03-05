--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 249, monster_id = 21010401, pos = { x = 2636.3, y = 207.0, z = -11.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 250, monster_id = 21010401, pos = { x = 2638.2, y = 207.0, z = -5.5 }, rot = { x = 0.0, y = 165.0, z = 0.0 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 251, monster_id = 21010701, pos = { x = 2640.2, y = 207.0, z = -10.2 }, rot = { x = 0.0, y = 309.2, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 527, gadget_id = 70211012, pos = { x = 2635.7, y = 207.0, z = -6.8 }, rot = { x = 0.0, y = 124.3, z = 0.0 }, level = 23, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 528, gadget_id = 70310004, pos = { x = 2638.2, y = 207.0, z = -8.8 }, rot = { x = 0.0, y = 182.5, z = 0.0 }, level = 23, state = GadgetState.GearStart },
	{ config_id = 529, gadget_id = 70220013, pos = { x = 2633.9, y = 207.0, z = -8.1 }, rot = { x = 0.0, y = 314.1, z = 0.0 }, level = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_335", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_335", action = "action_EVENT_ANY_MONSTER_DIE_335" }
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
		monsters = { 249, 250, 251 },
		gadgets = { 527, 528, 529 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_335" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_335(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133007157) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_335(context, evt)
	-- 将configid为 527 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 527, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
