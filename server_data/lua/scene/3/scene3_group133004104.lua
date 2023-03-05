--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 268, monster_id = 20010801, pos = { x = 2122.9, y = 212.1, z = -558.0 }, rot = { x = 0.0, y = 39.1, z = 0.0 }, level = 11, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 269, monster_id = 20010801, pos = { x = 2125.9, y = 212.1, z = -560.4 }, rot = { x = 0.0, y = 338.7, z = 0.0 }, level = 11, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 270, monster_id = 20010801, pos = { x = 2125.5, y = 212.1, z = -558.0 }, rot = { x = 0.0, y = 41.5, z = 0.0 }, level = 11, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 447, gadget_id = 70211102, pos = { x = 2124.4, y = 211.6, z = -559.3 }, rot = { x = 0.0, y = 41.3, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 146, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2124.4, y = 212.2, z = -559.2 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_146", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_146", action = "action_EVENT_ENTER_REGION_146", tlog_tag = "奔狼岭_104_封印宝箱_触发" },
	{ name = "ANY_MONSTER_DIE_147", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_147", action = "action_EVENT_ANY_MONSTER_DIE_147", tlog_tag = "奔狼岭_104_封印宝箱_结算" }
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
		gadgets = { 447 },
		regions = { 146 },
		triggers = { "ENTER_REGION_146", "ANY_MONSTER_DIE_147" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_146(context, evt)
	if evt.param1 ~= 146 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_146(context, evt)
	-- 将configid为 447 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 447, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 268, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 269, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 270, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_147(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_147(context, evt)
	-- 解锁目标447
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 447, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
