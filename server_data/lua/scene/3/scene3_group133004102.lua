--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 271, monster_id = 21030201, pos = { x = 2333.4, y = 297.7, z = -187.3 }, rot = { x = 0.0, y = 173.2, z = 0.0 }, level = 18, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 272, monster_id = 21010501, pos = { x = 2336.7, y = 297.7, z = -187.9 }, rot = { x = 0.0, y = 233.3, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 273, monster_id = 21010501, pos = { x = 2335.7, y = 297.7, z = -191.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 274, monster_id = 21010301, pos = { x = 2331.9, y = 297.6, z = -190.7 }, rot = { x = 0.0, y = 53.2, z = 0.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 384, gadget_id = 70220014, pos = { x = 2339.1, y = 297.6, z = -185.0 }, rot = { x = 0.0, y = 65.5, z = 0.0 }, level = 15 },
	{ config_id = 385, gadget_id = 70220014, pos = { x = 2329.9, y = 297.7, z = -185.8 }, rot = { x = 0.0, y = 208.6, z = 0.0 }, level = 15 },
	{ config_id = 386, gadget_id = 70220014, pos = { x = 2338.0, y = 297.5, z = -184.4 }, rot = { x = 0.0, y = 349.8, z = 0.0 }, level = 15 },
	{ config_id = 387, gadget_id = 70220013, pos = { x = 2339.4, y = 297.6, z = -193.0 }, rot = { x = 0.0, y = 46.5, z = 0.0 }, level = 15 },
	{ config_id = 388, gadget_id = 70220013, pos = { x = 2332.2, y = 297.6, z = -183.9 }, rot = { x = 0.0, y = 43.2, z = 0.0 }, level = 15 },
	{ config_id = 389, gadget_id = 70220013, pos = { x = 2337.5, y = 297.7, z = -194.7 }, rot = { x = 0.0, y = 81.4, z = 0.0 }, level = 15 },
	{ config_id = 390, gadget_id = 70310004, pos = { x = 2334.1, y = 297.6, z = -189.6 }, rot = { x = 0.0, y = 32.6, z = 0.0 }, level = 15 },
	{ config_id = 391, gadget_id = 70310001, pos = { x = 2329.3, y = 297.6, z = -188.0 }, rot = { x = 0.0, y = 125.5, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 392, gadget_id = 70310001, pos = { x = 2340.1, y = 297.7, z = -187.2 }, rot = { x = 0.0, y = 201.9, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 393, gadget_id = 70310001, pos = { x = 2317.3, y = 299.5, z = -188.7 }, rot = { x = 0.0, y = 22.9, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 394, gadget_id = 70310001, pos = { x = 2334.4, y = 293.2, z = -204.8 }, rot = { x = 0.0, y = 89.5, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 395, gadget_id = 70211012, pos = { x = 2335.3, y = 297.7, z = -185.3 }, rot = { x = 0.1, y = 359.1, z = 5.0 }, level = 15, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 1282, gadget_id = 70310001, pos = { x = 2334.8, y = 293.5, z = -199.5 }, rot = { x = 0.0, y = 54.8, z = 0.0 }, level = 15, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_132", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_132", action = "action_EVENT_ANY_MONSTER_DIE_132", tlog_tag = "奔狼岭_102_怪物营地_结算" }
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
		monsters = { 271, 272, 273, 274 },
		gadgets = { 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_132" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_132(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_132(context, evt)
	-- 解锁目标395
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 395, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
