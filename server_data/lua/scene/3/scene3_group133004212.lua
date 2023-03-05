--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 548, monster_id = 20011501, pos = { x = 2493.7, y = 253.7, z = -334.6 }, rot = { x = 0.0, y = 101.2, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 549, monster_id = 20011401, pos = { x = 2492.5, y = 254.0, z = -332.6 }, rot = { x = 0.0, y = 98.5, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 550, monster_id = 20011401, pos = { x = 2491.5, y = 254.1, z = -336.0 }, rot = { x = 0.0, y = 80.9, z = 0.0 }, level = 12, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1186, gadget_id = 70211012, pos = { x = 2492.1, y = 254.0, z = -334.2 }, rot = { x = 8.3, y = 108.1, z = 1.9 }, level = 20, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 227, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2492.1, y = 254.7, z = -334.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_227", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_227", action = "action_EVENT_ENTER_REGION_227" },
	{ name = "ANY_MONSTER_DIE_228", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_228", action = "action_EVENT_ANY_MONSTER_DIE_228" }
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
		monsters = { },
		gadgets = { },
		regions = { 227 },
		triggers = { "ENTER_REGION_227", "ANY_MONSTER_DIE_228" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_227(context, evt)
	if evt.param1 ~= 227 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_227(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 549, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 550, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 548, delay_time = 0 }) then
	  return -1
	end
	
	-- 将configid为 1186 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1186, GadgetState.ChestLocked) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_228(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_228(context, evt)
	-- 解锁目标1186
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 1186, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
