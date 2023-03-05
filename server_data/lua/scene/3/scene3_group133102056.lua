--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 87, monster_id = 21011201, pos = { x = 1480.6, y = 202.3, z = 347.5 }, rot = { x = 355.6, y = 349.3, z = 5.4 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 89, monster_id = 21010501, pos = { x = 1479.3, y = 203.4, z = 355.1 }, rot = { x = 11.3, y = 171.0, z = 358.2 }, level = 15, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 90, monster_id = 21010501, pos = { x = 1483.6, y = 203.6, z = 353.1 }, rot = { x = 16.6, y = 225.0, z = 354.5 }, level = 15, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 230, gadget_id = 70211012, pos = { x = 1480.2, y = 202.9, z = 352.5 }, rot = { x = 350.3, y = 359.5, z = 3.6 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 231, gadget_id = 70220014, pos = { x = 1476.9, y = 203.0, z = 353.1 }, rot = { x = 347.7, y = 0.5, z = 355.5 }, level = 16 },
	{ config_id = 232, gadget_id = 70220014, pos = { x = 1478.2, y = 203.1, z = 353.5 }, rot = { x = 350.2, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 233, gadget_id = 70220014, pos = { x = 1477.5, y = 202.8, z = 351.9 }, rot = { x = 350.3, y = 0.2, z = 358.2 }, level = 16 },
	{ config_id = 56001, gadget_id = 70310009, pos = { x = 1480.1, y = 202.6, z = 350.3 }, rot = { x = 352.0, y = 359.7, z = 4.5 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_149", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_149", action = "action_EVENT_ANY_MONSTER_DIE_149" }
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
		monsters = { 87, 89, 90 },
		gadgets = { 230, 231, 232, 233, 56001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_149" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_149(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_149(context, evt)
	-- 将configid为 230 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 230, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
