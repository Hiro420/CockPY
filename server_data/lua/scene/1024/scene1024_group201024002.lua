--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1, monster_id = 21010201, pos = { x = -32.4, y = -32.3, z = 72.0 }, rot = { x = 0.0, y = 231.4, z = 0.0 }, level = 1, disableWander = true, affix = { 1008, 1011 }, isElite = true, pose_id = 9003 },
	{ config_id = 3, monster_id = 24010101, pos = { x = -61.3, y = -31.8, z = 73.0 }, rot = { x = 0.0, y = 92.7, z = 0.0 }, level = 1, affix = { 1007 }, isElite = true, pose_id = 101 },
	{ config_id = 8, monster_id = 21020101, pos = { x = -38.5, y = -32.3, z = 61.8 }, rot = { x = 0.0, y = 69.0, z = 0.0 }, level = 1, disableWander = true, affix = { 1008, 1009 }, isElite = true, pose_id = 401 },
	{ config_id = 18, monster_id = 21010301, pos = { x = -36.4, y = -32.3, z = 68.1 }, rot = { x = 0.0, y = 137.8, z = 0.0 }, level = 1, disableWander = true, affix = { 1007, 1010 }, isElite = true, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 25, gadget_id = 70350009, pos = { x = -45.7, y = -32.5, z = 33.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 54, gadget_id = 70220014, pos = { x = -33.6, y = -32.4, z = 62.4 }, rot = { x = 0.0, y = 323.3, z = 0.0 }, level = 1 },
	{ config_id = 55, gadget_id = 70220014, pos = { x = -32.9, y = -32.4, z = 64.5 }, rot = { x = 0.0, y = 338.9, z = 0.0 }, level = 1 },
	{ config_id = 88, gadget_id = 70220013, pos = { x = -55.4, y = -32.3, z = 77.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 89, gadget_id = 70220013, pos = { x = -56.9, y = -32.3, z = 79.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 90, gadget_id = 70220013, pos = { x = -59.4, y = -32.3, z = 79.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 91, gadget_id = 70220013, pos = { x = -62.4, y = -32.3, z = 79.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2001, gadget_id = 70220013, pos = { x = -31.2, y = -32.3, z = 62.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2002, gadget_id = 70220013, pos = { x = -32.6, y = -32.3, z = 60.0 }, rot = { x = 0.0, y = 331.9, z = 0.0 }, level = 1 },
	{ config_id = 2003, gadget_id = 70220014, pos = { x = -29.4, y = -32.3, z = 63.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2004, gadget_id = 70220014, pos = { x = -29.9, y = -31.9, z = 64.1 }, rot = { x = 293.3, y = 7.4, z = 102.9 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 38, shape = RegionShape.SPHERE, radius = 8.2, pos = { x = -45.7, y = -32.3, z = 90.5 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_4", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4", action = "action_EVENT_ANY_MONSTER_DIE_4" },
	{ name = "ANY_MONSTER_DIE_13", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_13", action = "action_EVENT_ANY_MONSTER_DIE_13" },
	{ name = "ANY_MONSTER_LIVE_37", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_37", action = "action_EVENT_ANY_MONSTER_LIVE_37" },
	{ name = "ENTER_REGION_38", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_38", action = "action_EVENT_ENTER_REGION_38", forbid_guest = false }
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
		monsters = { 1, 3, 8, 18 },
		gadgets = { 25, 54, 55, 88, 89, 90, 91, 2003, 2004 },
		regions = { 38 },
		triggers = { "ANY_MONSTER_DIE_4", "ANY_MONSTER_LIVE_37", "ENTER_REGION_38" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201024002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4(context, evt)
	-- 将configid为 25 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25, GadgetState.GearStart) then
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-45，-20，33），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-45, y=-20, z=33}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_13(context, evt)
	if 8 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201024012, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_37(context, evt)
	if 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_37(context, evt)
	-- 开启或者关闭groupid为201024002中,configid为：3的怪物的ai，set为1是开启，为0是关闭
	if 0 ~= ScriptLib.SetMonsterAIByGroup(context, 0, 3, 201024002) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_38(context, evt)
	if evt.param1 ~= 38 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_38(context, evt)
	-- 开启或者关闭groupid为201024002中,configid为：3的怪物的ai，set为1是开启，为0是关闭
	if 0 ~= ScriptLib.SetMonsterAIByGroup(context, 1, 3, 201024002) then
	  return -1
	end
	
	return 0
end
