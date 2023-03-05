--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1179, monster_id = 21010201, pos = { x = 2484.9, y = 206.9, z = -1237.9 }, rot = { x = 0.0, y = 84.7, z = 0.0 }, level = 2, drop_tag = "丘丘人", pose_id = 0 },
	{ config_id = 1436, monster_id = 21010101, pos = { x = 2467.5, y = 206.9, z = -1228.6 }, rot = { x = 0.0, y = 25.4, z = 0.0 }, level = 2, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 1469, monster_id = 21010101, pos = { x = 2471.8, y = 206.3, z = -1237.3 }, rot = { x = 0.0, y = 25.4, z = 0.0 }, level = 3, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4145, gadget_id = 70310001, pos = { x = 2464.5, y = 207.1, z = -1226.8 }, rot = { x = 0.0, y = 186.7, z = 0.0 }, level = 2, state = GadgetState.GearStart },
	{ config_id = 4146, gadget_id = 70310001, pos = { x = 2484.2, y = 206.8, z = -1244.9 }, rot = { x = 0.0, y = 186.7, z = 0.0 }, level = 2, state = GadgetState.GearStart },
	{ config_id = 4147, gadget_id = 70310001, pos = { x = 2487.4, y = 206.9, z = -1238.0 }, rot = { x = 0.0, y = 186.7, z = 0.0 }, level = 2, state = GadgetState.GearStart },
	{ config_id = 4148, gadget_id = 70220013, pos = { x = 2462.8, y = 206.4, z = -1230.4 }, rot = { x = 0.0, y = 242.9, z = 0.0 }, level = 2 },
	{ config_id = 4149, gadget_id = 70220013, pos = { x = 2464.4, y = 206.3, z = -1232.5 }, rot = { x = 0.0, y = 288.0, z = 0.0 }, level = 2 },
	{ config_id = 4150, gadget_id = 70220013, pos = { x = 2463.7, y = 206.2, z = -1237.2 }, rot = { x = 0.0, y = 288.0, z = 0.0 }, level = 2 },
	{ config_id = 4151, gadget_id = 70220014, pos = { x = 2464.9, y = 206.3, z = -1236.0 }, rot = { x = 0.0, y = 339.2, z = 0.0 }, level = 2 },
	{ config_id = 4152, gadget_id = 70220014, pos = { x = 2488.4, y = 205.6, z = -1236.2 }, rot = { x = 0.0, y = 183.5, z = 0.0 }, level = 2 },
	{ config_id = 4153, gadget_id = 70220013, pos = { x = 2481.9, y = 206.7, z = -1244.4 }, rot = { x = 0.0, y = 288.0, z = 0.0 }, level = 2 },
	{ config_id = 4154, gadget_id = 70220013, pos = { x = 2489.3, y = 205.5, z = -1234.9 }, rot = { x = 0.0, y = 288.0, z = 0.0 }, level = 2 },
	{ config_id = 4155, gadget_id = 70310004, pos = { x = 2470.5, y = 206.7, z = -1239.9 }, rot = { x = 0.0, y = 158.1, z = 0.0 }, level = 2, state = GadgetState.GearStart },
	{ config_id = 4156, gadget_id = 70211002, pos = { x = 2468.0, y = 206.3, z = -1234.3 }, rot = { x = 0.0, y = 89.6, z = 0.0 }, level = 2, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_519", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_519", action = "action_EVENT_ANY_MONSTER_DIE_519", tlog_tag = "新手区_主动线左方营地_清剿完成" }
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
		monsters = { 1179, 1436, 1469 },
		gadgets = { 4145, 4146, 4147, 4150, 4151, 4153, 4155, 4156 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_519" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_519(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_519(context, evt)
	-- 解锁目标4156
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 4156, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
