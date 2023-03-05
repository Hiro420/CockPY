--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 24, monster_id = 20011001, pos = { x = 415.3, y = -37.1, z = 9.0 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 25, monster_id = 20011001, pos = { x = 413.2, y = -37.1, z = 4.3 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 27, monster_id = 20011001, pos = { x = 415.1, y = -37.1, z = 4.3 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 28, monster_id = 20011001, pos = { x = 413.3, y = -37.1, z = 9.0 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 86, gadget_id = 70360002, pos = { x = 410.4, y = -37.1, z = 6.4 }, rot = { x = 0.0, y = 270.5, z = 0.0 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 191, gadget_id = 70900201, pos = { x = 422.6, y = -26.8, z = 14.5 }, rot = { x = 0.0, y = 89.9, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 43, shape = RegionShape.SPHERE, radius = 5, pos = { x = 410.5, y = -36.9, z = 6.2 } },
	{ config_id = 48, shape = RegionShape.CUBIC, size = { x = 2.0, y = 5.0, z = 14.0 }, pos = { x = 397.7, y = -32.2, z = 2.7 } },
	{ config_id = 65, shape = RegionShape.SPHERE, radius = 5, pos = { x = 425.5, y = -28.7, z = 13.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_43", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_43", action = "action_EVENT_ENTER_REGION_43", forbid_guest = false },
	{ name = "ANY_MONSTER_DIE_44", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_44", action = "action_EVENT_ANY_MONSTER_DIE_44" },
	{ name = "ENTER_REGION_48", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_48", action = "action_EVENT_ENTER_REGION_48", forbid_guest = false },
	{ name = "ENTER_REGION_65", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65", action = "action_EVENT_ENTER_REGION_65", forbid_guest = false },
	{ name = "SELECT_OPTION_12001", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_12001", action = "action_EVENT_SELECT_OPTION_12001" }
}

-- 变量
variables = {
	{ name = "KillNum", value = 1, no_refresh = false }
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
		monsters = { },
		gadgets = { 86 },
		regions = { 43, 48, 65 },
		triggers = { "ENTER_REGION_43", "ENTER_REGION_48", "ENTER_REGION_65", "SELECT_OPTION_12001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 24, 25, 27, 28 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_44" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_43(context, evt)
	if evt.param1 ~= 43 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_43(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220010012, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_44(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220010012) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_44(context, evt)
	-- 将configid为 86 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220010012, 86, {2}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_48(context, evt)
	if evt.param1 ~= 48 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_48(context, evt)
	-- 创建id为191的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 191 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65(context, evt)
	if evt.param1 ~= 65 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220010012, monsters = {}, gadgets = {191} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_12001(context, evt)
	-- 判断是gadgetid 86 option_id 2
	if 86 ~= evt.param1 then
		return false	
	end
	
	if 2 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_12001(context, evt)
	-- 解锁目标19
	if 0 ~= ScriptLib.UnlockForce(context, 19) then
		return -1
	end
	
	return 0
end
