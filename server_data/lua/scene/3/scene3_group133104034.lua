--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 246, monster_id = 21010501, pos = { x = 468.4, y = 213.3, z = 749.1 }, rot = { x = 3.7, y = 167.8, z = 350.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 247, monster_id = 21010501, pos = { x = 476.8, y = 211.6, z = 748.5 }, rot = { x = 6.5, y = 228.2, z = 19.1 }, level = 19, drop_tag = "远程丘丘人", pose_id = 9003 },
	{ config_id = 248, monster_id = 21010501, pos = { x = 465.7, y = 212.4, z = 743.8 }, rot = { x = 8.6, y = 136.5, z = 351.8 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 65, gadget_id = 70211012, pos = { x = 467.7, y = 212.7, z = 746.0 }, rot = { x = 355.1, y = 2.9, z = 355.5 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_48", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_48", action = "action_EVENT_ANY_MONSTER_DIE_48" }
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
		monsters = { 246, 247, 248 },
		gadgets = { 65 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_48" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_48(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_48(context, evt)
	-- 将configid为 65 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
