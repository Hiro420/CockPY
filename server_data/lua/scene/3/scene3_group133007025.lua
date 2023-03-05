--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 53, monster_id = 20011301, pos = { x = 2697.4, y = 240.1, z = 36.1 }, rot = { x = 0.0, y = 257.7, z = 0.0 }, level = 20, drop_tag = "史莱姆" },
	{ config_id = 111, monster_id = 20011201, pos = { x = 2694.1, y = 240.1, z = 30.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, drop_tag = "史莱姆" },
	{ config_id = 112, monster_id = 20011201, pos = { x = 2696.2, y = 240.2, z = 32.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, drop_tag = "史莱姆" },
	{ config_id = 113, monster_id = 20010601, pos = { x = 2689.6, y = 240.1, z = 25.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, drop_tag = "史莱姆" },
	{ config_id = 114, monster_id = 20010501, pos = { x = 2689.8, y = 239.9, z = 29.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, drop_tag = "史莱姆" },
	{ config_id = 115, monster_id = 20010501, pos = { x = 2692.3, y = 239.9, z = 32.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 429, gadget_id = 70211102, pos = { x = 2699.1, y = 240.5, z = 25.8 }, rot = { x = 0.0, y = 325.3, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 60, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2697.9, y = 240.4, z = 26.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_60", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_60", action = "action_EVENT_ENTER_REGION_60", tlog_tag = "风龙_25_伏击_触发" },
	{ name = "ANY_MONSTER_DIE_61", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_61", action = "action_EVENT_ANY_MONSTER_DIE_61", tlog_tag = "风龙_25_伏击_成功" }
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
		gadgets = { 429 },
		regions = { 60 },
		triggers = { "ENTER_REGION_60", "ANY_MONSTER_DIE_61" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_60(context, evt)
	if evt.param1 ~= 60 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_60(context, evt)
	-- 将configid为 429 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 429, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 111, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 112, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_61(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_61(context, evt)
	-- 将configid为 429 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 429, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
