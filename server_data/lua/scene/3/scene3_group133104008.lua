--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 396, monster_id = 21010101, pos = { x = 777.1, y = 200.4, z = 142.1 }, rot = { x = 2.8, y = 113.1, z = 0.2 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 397, monster_id = 21010501, pos = { x = 771.2, y = 200.4, z = 146.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 398, monster_id = 21010501, pos = { x = 771.9, y = 200.9, z = 139.5 }, rot = { x = 0.1, y = 153.3, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 399, monster_id = 21010501, pos = { x = 769.4, y = 200.4, z = 152.1 }, rot = { x = 0.0, y = 5.0, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 568, gadget_id = 70220014, pos = { x = 771.8, y = 200.2, z = 149.2 }, rot = { x = 5.4, y = 0.0, z = 0.9 }, level = 19 },
	{ config_id = 569, gadget_id = 70220014, pos = { x = 772.1, y = 200.4, z = 147.2 }, rot = { x = 2.7, y = 0.0, z = 0.9 }, level = 19 },
	{ config_id = 570, gadget_id = 70220014, pos = { x = 770.0, y = 200.3, z = 147.6 }, rot = { x = 5.4, y = 360.0, z = 359.1 }, level = 19 },
	{ config_id = 571, gadget_id = 70220013, pos = { x = 764.6, y = 200.9, z = 136.1 }, rot = { x = 356.5, y = 0.3, z = 354.6 }, level = 19 },
	{ config_id = 572, gadget_id = 70220013, pos = { x = 761.4, y = 201.0, z = 136.3 }, rot = { x = 359.1, y = 0.0, z = 359.1 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_4", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4", action = "action_EVENT_ANY_MONSTER_DIE_4" }
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
		monsters = { 396, 397, 398, 399 },
		gadgets = { 568, 569, 570, 571, 572 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4(context, evt)
	-- 将configid为 4 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
