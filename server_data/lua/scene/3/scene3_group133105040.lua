--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 101, monster_id = 20010701, pos = { x = 886.5, y = 244.7, z = -126.5 }, rot = { x = 0.0, y = 2.3, z = 0.0 }, level = 25, drop_tag = "史莱姆" },
	{ config_id = 102, monster_id = 20030101, pos = { x = 887.1, y = 244.7, z = -123.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_tag = "雷萤" },
	{ config_id = 103, monster_id = 20030101, pos = { x = 888.7, y = 244.8, z = -124.5 }, rot = { x = 0.0, y = 92.9, z = 0.0 }, level = 25, drop_tag = "雷萤" },
	{ config_id = 104, monster_id = 20030101, pos = { x = 887.3, y = 244.7, z = -125.1 }, rot = { x = 0.0, y = 233.8, z = 0.0 }, level = 25, drop_tag = "雷萤" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 81, gadget_id = 70211112, pos = { x = 888.1, y = 244.8, z = -123.5 }, rot = { x = 0.0, y = 209.9, z = 0.0 }, level = 25, drop_tag = "解谜中级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 55, shape = RegionShape.SPHERE, radius = 2.8, pos = { x = 887.9, y = 244.6, z = -123.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_55", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_55", action = "action_EVENT_ENTER_REGION_55" },
	{ name = "ANY_MONSTER_DIE_56", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_56", action = "action_EVENT_ANY_MONSTER_DIE_56" },
	{ name = "ANY_MONSTER_DIE_57", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_57", action = "action_EVENT_ANY_MONSTER_DIE_57" }
}

-- 变量
variables = {
	{ name = "iskilled", value = 0, no_refresh = false }
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
		gadgets = { 81 },
		regions = { 55 },
		triggers = { "ENTER_REGION_55", "ANY_MONSTER_DIE_56", "ANY_MONSTER_DIE_57" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_55(context, evt)
	if evt.param1 ~= 55 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_55(context, evt)
	-- 将configid为 81 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 102, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 103, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 104, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_56(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_56(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 101, delay_time = 0 }) then
	  return -1
	end
	
	-- 将本组内变量名为 "iskilled" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "iskilled", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_57(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"iskilled"为1
	if ScriptLib.GetGroupVariableValue(context, "iskilled") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_57(context, evt)
	-- 解锁目标81
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 81, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
