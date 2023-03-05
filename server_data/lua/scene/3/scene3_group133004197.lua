--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 524, monster_id = 20011501, pos = { x = 2724.8, y = 252.0, z = -347.4 }, rot = { x = 0.0, y = 276.3, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 525, monster_id = 20011401, pos = { x = 2725.5, y = 252.0, z = -348.8 }, rot = { x = 0.0, y = 287.5, z = 0.0 }, level = 12, drop_tag = "史莱姆" },
	{ config_id = 526, monster_id = 20011401, pos = { x = 2725.9, y = 251.9, z = -345.7 }, rot = { x = 0.0, y = 271.1, z = 0.0 }, level = 12, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1144, gadget_id = 70211012, pos = { x = 2726.2, y = 252.0, z = -347.4 }, rot = { x = 0.0, y = 273.2, z = 0.0 }, level = 20, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 216, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2726.5, y = 252.7, z = -347.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_216", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_216", action = "action_EVENT_ENTER_REGION_216" },
	{ name = "ANY_MONSTER_DIE_217", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_217", action = "action_EVENT_ANY_MONSTER_DIE_217" }
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
		gadgets = { 1144 },
		regions = { 216 },
		triggers = { "ENTER_REGION_216", "ANY_MONSTER_DIE_217" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_216(context, evt)
	if evt.param1 ~= 216 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_216(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 525, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 526, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 524, delay_time = 0 }) then
	  return -1
	end
	
	-- 将configid为 1144 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1144, GadgetState.ChestLocked) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_217(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_217(context, evt)
	-- 解锁目标1144
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 1144, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
