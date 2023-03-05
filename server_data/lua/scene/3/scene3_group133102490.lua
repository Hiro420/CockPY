--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 490001, monster_id = 21020201, pos = { x = 1714.2, y = 333.1, z = 442.5 }, rot = { x = 0.0, y = 23.7, z = 0.0 }, level = 18, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 490004, monster_id = 21020201, pos = { x = 1711.2, y = 333.0, z = 446.5 }, rot = { x = 0.0, y = 105.9, z = 0.0 }, level = 18, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 490005, monster_id = 21010201, pos = { x = 1715.6, y = 333.3, z = 448.0 }, rot = { x = 0.0, y = 208.0, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 490002, gadget_id = 70211012, pos = { x = 1709.1, y = 333.2, z = 443.4 }, rot = { x = 0.0, y = 118.3, z = 0.0 }, level = 18, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 490006, gadget_id = 70220013, pos = { x = 1717.3, y = 332.9, z = 448.9 }, rot = { x = 352.3, y = 0.4, z = 354.3 }, level = 18 },
	{ config_id = 490007, gadget_id = 70220013, pos = { x = 1718.4, y = 332.6, z = 446.6 }, rot = { x = 353.7, y = 310.1, z = 359.4 }, level = 18 },
	{ config_id = 490008, gadget_id = 70220026, pos = { x = 1707.8, y = 330.6, z = 434.4 }, rot = { x = 340.3, y = 0.7, z = 356.1 }, level = 18 },
	{ config_id = 490009, gadget_id = 70220026, pos = { x = 1709.4, y = 330.7, z = 434.6 }, rot = { x = 352.2, y = 71.3, z = 340.8 }, level = 18 },
	{ config_id = 490010, gadget_id = 70220026, pos = { x = 1708.3, y = 331.1, z = 435.9 }, rot = { x = 354.3, y = 65.5, z = 337.8 }, level = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_490003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_490003", action = "action_EVENT_ANY_MONSTER_DIE_490003" }
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
		monsters = { 490001 },
		gadgets = { 490002, 490006, 490007, 490008, 490009, 490010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_490003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_490003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_490003(context, evt)
	-- 将configid为 490002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 490002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
