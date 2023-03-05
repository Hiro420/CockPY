--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 537001, monster_id = 21010601, pos = { x = 1208.5, y = 201.2, z = 858.0 }, rot = { x = 0.0, y = 48.2, z = 0.0 }, level = 22, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 537004, monster_id = 21011201, pos = { x = 1211.7, y = 200.8, z = 857.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 537006, monster_id = 21011201, pos = { x = 1211.8, y = 200.9, z = 861.0 }, rot = { x = 0.0, y = 212.2, z = 0.0 }, level = 22, drop_tag = "丘丘人", pose_id = 9003 },
	{ config_id = 537010, monster_id = 21030301, pos = { x = 1209.2, y = 201.6, z = 861.8 }, rot = { x = 0.0, y = 137.8, z = 0.0 }, level = 22, drop_tag = "丘丘萨满", pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 537002, gadget_id = 70211012, pos = { x = 1210.5, y = 200.9, z = 854.6 }, rot = { x = 0.0, y = 11.1, z = 0.0 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 537005, gadget_id = 70310006, pos = { x = 1210.4, y = 200.9, z = 859.0 }, rot = { x = 357.3, y = 359.8, z = 351.1 }, level = 19 },
	{ config_id = 537007, gadget_id = 70220013, pos = { x = 1201.0, y = 202.2, z = 857.2 }, rot = { x = 345.3, y = 321.9, z = 358.2 }, level = 19 },
	{ config_id = 537008, gadget_id = 70220013, pos = { x = 1216.8, y = 200.6, z = 863.0 }, rot = { x = 355.4, y = 359.4, z = 344.4 }, level = 19 },
	{ config_id = 537009, gadget_id = 70220014, pos = { x = 1216.7, y = 200.5, z = 861.4 }, rot = { x = 359.1, y = 359.7, z = 359.1 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_537003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_537003", action = "action_EVENT_ANY_MONSTER_DIE_537003" }
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
		monsters = { 537001, 537004, 537006, 537010 },
		gadgets = { 537002, 537005, 537007, 537008, 537009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_537003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_537003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_537003(context, evt)
	-- 将configid为 537002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 537002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
