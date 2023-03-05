--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 20, monster_id = 21010301, pos = { x = 148.7, y = 39.5, z = 123.8 }, rot = { x = 0.0, y = 210.9, z = 0.0 }, level = 1, disableWander = true, affix = { 1002, 1006, 1007, 1008 }, isElite = true, pose_id = 9002 },
	{ config_id = 21, monster_id = 21010301, pos = { x = 145.5, y = 39.5, z = 121.6 }, rot = { x = 0.0, y = 90.9, z = 0.0 }, level = 1, disableWander = true, affix = { 1002, 1006, 1007, 1008 }, isElite = true, pose_id = 9002 },
	{ config_id = 22, monster_id = 21010301, pos = { x = 148.5, y = 39.5, z = 119.4 }, rot = { x = 0.0, y = 343.8, z = 0.0 }, level = 1, disableWander = true, affix = { 1002, 1006, 1007, 1008 }, isElite = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 6001, shape = RegionShape.SPHERE, radius = 10.22, pos = { x = 147.5, y = 39.6, z = 121.0 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_5", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5", action = "action_EVENT_ANY_MONSTER_DIE_5" },
	{ name = "ENTER_REGION_6001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6001", action = "action_EVENT_ENTER_REGION_6001", trigger_count = 0, forbid_guest = false }
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
		monsters = { 20, 21, 22 },
		gadgets = { },
		regions = { 6001 },
		triggers = { "ANY_MONSTER_DIE_5", "ENTER_REGION_6001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5(context, evt)
	-- 改变指定group组220022005中， configid为7的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220022005, 7, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6001(context, evt)
	if evt.param1 ~= 6001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6001(context, evt)
	-- 改变指定group组220022005中， configid为7的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220022005, 7, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
