--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 417001, monster_id = 21011201, pos = { x = -132.2, y = 292.8, z = 139.3 }, rot = { x = 6.0, y = 153.7, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 417004, monster_id = 21010201, pos = { x = -126.9, y = 292.9, z = 144.0 }, rot = { x = 0.0, y = 113.4, z = 0.0 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 417005, monster_id = 21010201, pos = { x = -119.6, y = 291.7, z = 145.9 }, rot = { x = 354.0, y = 214.0, z = 14.9 }, level = 17, drop_tag = "丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 417002, gadget_id = 70211012, pos = { x = -123.6, y = 292.8, z = 146.8 }, rot = { x = 14.7, y = 147.3, z = 5.0 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 417006, gadget_id = 70310006, pos = { x = -125.2, y = 292.7, z = 143.7 }, rot = { x = 355.6, y = 0.3, z = 351.1 }, level = 19 },
	{ config_id = 417007, gadget_id = 70220013, pos = { x = -118.3, y = 291.5, z = 148.2 }, rot = { x = 349.8, y = 1.4, z = 344.3 }, level = 19 },
	{ config_id = 417008, gadget_id = 70220013, pos = { x = -118.0, y = 291.2, z = 145.0 }, rot = { x = 0.0, y = 0.0, z = 347.7 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_417003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_417003", action = "action_EVENT_ANY_MONSTER_DIE_417003" }
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
		monsters = { 417001, 417004, 417005 },
		gadgets = { 417002, 417006, 417007, 417008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_417003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_417003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_417003(context, evt)
	-- 将configid为 417002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 417002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
