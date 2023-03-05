--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 393001, monster_id = 21011201, pos = { x = 459.6, y = 220.4, z = 927.1 }, rot = { x = 3.7, y = 312.8, z = 358.6 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 393004, monster_id = 21011201, pos = { x = 461.5, y = 220.5, z = 936.7 }, rot = { x = 356.1, y = 144.5, z = 0.6 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 393005, monster_id = 21010501, pos = { x = 449.4, y = 219.6, z = 929.2 }, rot = { x = 3.6, y = 359.5, z = 1.8 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 393006, monster_id = 21020301, pos = { x = 463.8, y = 220.8, z = 930.4 }, rot = { x = 2.3, y = 279.2, z = 356.8 }, level = 19, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 393007, monster_id = 21011001, pos = { x = 451.6, y = 219.5, z = 938.4 }, rot = { x = 356.1, y = 138.2, z = 1.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 393002, gadget_id = 70211022, pos = { x = 455.3, y = 220.1, z = 932.6 }, rot = { x = 3.4, y = 0.0, z = 4.2 }, level = 32, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 393008, gadget_id = 70220013, pos = { x = 455.4, y = 220.1, z = 926.2 }, rot = { x = 359.2, y = 359.2, z = 4.5 }, level = 19 },
	{ config_id = 393009, gadget_id = 70220013, pos = { x = 456.5, y = 220.2, z = 936.2 }, rot = { x = 1.9, y = 359.1, z = 5.3 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_393003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_393003", action = "action_EVENT_ANY_MONSTER_DIE_393003" }
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
		monsters = { 393001, 393004, 393005, 393006, 393007 },
		gadgets = { 393002, 393008, 393009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_393003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_393003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_393003(context, evt)
	-- 将configid为 393002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 393002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
