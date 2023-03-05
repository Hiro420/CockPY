--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1467, monster_id = 21010101, pos = { x = 2548.2, y = 205.5, z = -1203.4 }, rot = { x = 0.0, y = 204.3, z = 0.0 }, level = 3, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 1468, monster_id = 21010201, pos = { x = 2543.7, y = 205.4, z = -1207.1 }, rot = { x = 0.0, y = 50.5, z = 0.0 }, level = 3, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4136, gadget_id = 70310004, pos = { x = 2546.3, y = 205.4, z = -1205.9 }, rot = { x = 0.0, y = 249.1, z = 0.0 }, level = 2, state = GadgetState.GearStart },
	{ config_id = 4137, gadget_id = 70220013, pos = { x = 2549.7, y = 205.7, z = -1201.6 }, rot = { x = 0.0, y = 126.7, z = 0.0 }, level = 2 },
	{ config_id = 4138, gadget_id = 70220014, pos = { x = 2550.6, y = 205.8, z = -1203.3 }, rot = { x = 0.0, y = 69.2, z = 0.0 }, level = 2 },
	{ config_id = 4139, gadget_id = 70220014, pos = { x = 2542.2, y = 205.4, z = -1200.8 }, rot = { x = 0.0, y = 69.2, z = 0.0 }, level = 2 },
	{ config_id = 4140, gadget_id = 70211002, pos = { x = 2545.7, y = 205.4, z = -1201.1 }, rot = { x = 0.0, y = 184.9, z = 0.0 }, level = 2, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 537, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2494.1, y = 202.8, z = -1094.9 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_518", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_518", action = "action_EVENT_ANY_MONSTER_DIE_518", tlog_tag = "新手区_主动线右方营地_清剿完成" },
	{ name = "ENTER_REGION_537", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_537", action = "", tlog_tag = "新手区_去拿水中宝箱_到达触发" }
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
		monsters = { 1467, 1468 },
		gadgets = { 4136, 4137, 4138, 4139, 4140 },
		regions = { 537 },
		triggers = { "ANY_MONSTER_DIE_518", "ENTER_REGION_537" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_518(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_518(context, evt)
	-- 解锁目标4140
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 4140, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_537(context, evt)
	if evt.param1 ~= 537 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
