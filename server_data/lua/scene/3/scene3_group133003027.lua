--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 761, monster_id = 20011201, pos = { x = 2568.7, y = 211.1, z = -1247.0 }, rot = { x = 0.0, y = 36.7, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 762, monster_id = 20011201, pos = { x = 2571.5, y = 211.2, z = -1248.1 }, rot = { x = 0.0, y = 339.6, z = 0.0 }, level = 1, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1353, gadget_id = 70211102, pos = { x = 2569.8, y = 211.4, z = -1248.4 }, rot = { x = 10.1, y = 16.4, z = 0.2 }, level = 2, drop_tag = "解谜低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 156, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2569.7, y = 211.3, z = -1248.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_156", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_156", action = "action_EVENT_ENTER_REGION_156" },
	{ name = "ANY_MONSTER_DIE_164", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_164", action = "action_EVENT_ANY_MONSTER_DIE_164" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 1353 },
		regions = { 156 },
		triggers = { "ENTER_REGION_156", "ANY_MONSTER_DIE_164" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_156(context, evt)
	if evt.param1 ~= 156 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_156(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 761, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 762, delay_time = 0 }) then
	  return -1
	end
	
	-- 将configid为 1353 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1353, GadgetState.ChestLocked) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_164(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_164(context, evt)
	-- 解锁目标1353
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 1353, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
