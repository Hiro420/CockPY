--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 590001, monster_id = 21010101, pos = { x = 1644.9, y = 256.2, z = 268.4 }, rot = { x = 346.2, y = 31.9, z = 1.5 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 590004, monster_id = 21010101, pos = { x = 1641.1, y = 256.7, z = 271.8 }, rot = { x = 356.8, y = 80.3, z = 351.5 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 590007, monster_id = 21020101, pos = { x = 1637.8, y = 253.5, z = 257.3 }, rot = { x = 354.8, y = 45.3, z = 356.5 }, level = 16, drop_tag = "丘丘暴徒", pose_id = 401 },
	{ config_id = 590008, monster_id = 21010401, pos = { x = 1638.3, y = 251.6, z = 252.4 }, rot = { x = 351.1, y = 54.4, z = 342.8 }, level = 16, drop_tag = "远程丘丘人" },
	{ config_id = 590009, monster_id = 21010401, pos = { x = 1631.6, y = 253.5, z = 259.2 }, rot = { x = 354.9, y = 359.9, z = 2.9 }, level = 16, drop_tag = "远程丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 590002, gadget_id = 70211012, pos = { x = 1632.0, y = 253.1, z = 256.1 }, rot = { x = 354.7, y = 65.0, z = 350.6 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 590005, gadget_id = 70220005, pos = { x = 1644.9, y = 256.4, z = 269.2 }, rot = { x = 351.1, y = 359.8, z = 1.7 }, level = 16 },
	{ config_id = 590006, gadget_id = 70220005, pos = { x = 1641.7, y = 256.7, z = 272.0 }, rot = { x = 352.7, y = 0.0, z = 0.5 }, level = 16 },
	{ config_id = 590010, gadget_id = 70220013, pos = { x = 1635.4, y = 251.2, z = 249.5 }, rot = { x = 341.0, y = 0.7, z = 355.6 }, level = 16 },
	{ config_id = 590011, gadget_id = 70220013, pos = { x = 1633.5, y = 252.1, z = 252.1 }, rot = { x = 342.5, y = 0.4, z = 357.7 }, level = 16 },
	{ config_id = 590012, gadget_id = 70220014, pos = { x = 1642.2, y = 252.1, z = 253.3 }, rot = { x = 342.7, y = 0.9, z = 354.2 }, level = 16 },
	{ config_id = 590013, gadget_id = 70220014, pos = { x = 1642.8, y = 251.7, z = 252.2 }, rot = { x = 342.7, y = 0.9, z = 354.2 }, level = 16 },
	{ config_id = 590014, gadget_id = 70220014, pos = { x = 1643.3, y = 252.0, z = 253.5 }, rot = { x = 343.2, y = 1.1, z = 352.5 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_590003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_590003", action = "action_EVENT_ANY_MONSTER_DIE_590003" }
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
		monsters = { 590001, 590004, 590007, 590008, 590009 },
		gadgets = { 590002, 590005, 590006, 590010, 590011, 590012, 590013, 590014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_590003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_590003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_590003(context, evt)
	-- 将configid为 590002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 590002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
