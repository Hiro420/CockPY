--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1047, monster_id = 21010201, pos = { x = 2708.5, y = 245.4, z = -1145.8 }, rot = { x = 0.0, y = 315.5, z = 0.0 }, level = 15, drop_tag = "丘丘人", pose_id = 0 },
	{ config_id = 1048, monster_id = 21010301, pos = { x = 2705.3, y = 244.5, z = -1156.3 }, rot = { x = 0.0, y = 24.7, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 1049, monster_id = 21010401, pos = { x = 2707.4, y = 244.7, z = -1152.9 }, rot = { x = 0.0, y = 202.9, z = 0.0 }, level = 15, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3301, gadget_id = 70211012, pos = { x = 2709.3, y = 244.6, z = -1155.6 }, rot = { x = 0.8, y = 292.1, z = 5.9 }, level = 30, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 3414, gadget_id = 70310003, pos = { x = 2710.2, y = 244.8, z = -1153.5 }, rot = { x = 0.0, y = 278.9, z = 0.0 }, level = 30, state = GadgetState.GearStart },
	{ config_id = 3415, gadget_id = 70310003, pos = { x = 2708.7, y = 244.1, z = -1157.9 }, rot = { x = 0.0, y = 226.2, z = 0.0 }, level = 30, state = GadgetState.GearStart },
	{ config_id = 3416, gadget_id = 70220013, pos = { x = 2704.6, y = 243.2, z = -1158.6 }, rot = { x = 2.9, y = 288.0, z = 11.4 }, level = 30 },
	{ config_id = 3417, gadget_id = 70220013, pos = { x = 2706.8, y = 243.2, z = -1160.0 }, rot = { x = 347.2, y = 77.3, z = 355.2 }, level = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_246", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_246", action = "action_EVENT_ANY_MONSTER_DIE_246", tlog_tag = "望风山地_319_怪物营地_结算" }
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
	rand_suite = true
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
		monsters = { 1047, 1048, 1049 },
		gadgets = { 3301, 3414, 3415, 3416, 3417 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_246" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_246(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_246(context, evt)
	-- 解锁目标3301
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3301, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
