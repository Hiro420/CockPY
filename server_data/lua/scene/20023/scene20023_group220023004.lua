--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 20010501, pos = { x = 142.9, y = 2.8, z = 51.6 }, rot = { x = 0.0, y = 41.7, z = 0.0 }, level = 1 },
	{ config_id = 4002, monster_id = 20010501, pos = { x = 140.9, y = 2.8, z = 53.2 }, rot = { x = 0.0, y = 79.2, z = 0.0 }, level = 1 },
	{ config_id = 4003, monster_id = 20010501, pos = { x = 139.5, y = 2.8, z = 55.4 }, rot = { x = 0.0, y = 75.2, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4004, gadget_id = 70211012, pos = { x = 144.2, y = 2.8, z = 55.9 }, rot = { x = 0.0, y = 180.5, z = 0.0 }, level = 10, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
	{ config_id = 4, shape = RegionShape.SPHERE, radius = 5, pos = { x = 145.3, y = 2.8, z = 55.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_4", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4", action = "action_EVENT_ENTER_REGION_4", forbid_guest = false },
	{ name = "ANY_MONSTER_DIE_5", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5", action = "action_EVENT_ANY_MONSTER_DIE_5" }
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
		monsters = { },
		gadgets = { 4004 },
		regions = { 4 },
		triggers = { "ENTER_REGION_4", "ANY_MONSTER_DIE_5" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_4(context, evt)
	if evt.param1 ~= 4 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4(context, evt)
	-- 将configid为 4004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

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
	-- 解锁目标4004
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 4004, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
