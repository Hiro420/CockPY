--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 249001, monster_id = 21010901, pos = { x = 929.4, y = 261.7, z = 1264.7 }, rot = { x = 0.0, y = 314.8, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 249004, monster_id = 21011201, pos = { x = 925.3, y = 261.7, z = 1266.6 }, rot = { x = 0.0, y = 134.3, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 249007, monster_id = 21030201, pos = { x = 927.8, y = 262.0, z = 1267.7 }, rot = { x = 0.0, y = 220.4, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 249002, gadget_id = 70211012, pos = { x = 926.0, y = 261.2, z = 1263.7 }, rot = { x = 349.7, y = 359.9, z = 0.6 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 249005, gadget_id = 70310001, pos = { x = 928.4, y = 261.3, z = 1263.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 249006, gadget_id = 70220013, pos = { x = 923.1, y = 261.2, z = 1265.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_249003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_249003", action = "action_EVENT_ANY_MONSTER_DIE_249003" }
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
		monsters = { 249001, 249004, 249007 },
		gadgets = { 249002, 249005, 249006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_249003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_249003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_249003(context, evt)
	-- 将configid为 249002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 249002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
