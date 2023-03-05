--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 278, monster_id = 20011001, pos = { x = 2302.9, y = 243.6, z = -525.0 }, rot = { x = 0.0, y = 283.0, z = 0.0 }, level = 12, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 279, monster_id = 20011001, pos = { x = 2300.5, y = 243.0, z = -526.4 }, rot = { x = 0.0, y = 335.2, z = 0.0 }, level = 12, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 280, monster_id = 20011001, pos = { x = 2301.8, y = 243.5, z = -522.4 }, rot = { x = 0.0, y = 193.6, z = 0.0 }, level = 12, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 281, monster_id = 20011001, pos = { x = 2299.3, y = 242.9, z = -523.7 }, rot = { x = 0.0, y = 148.4, z = 0.0 }, level = 12, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 400, gadget_id = 70211101, pos = { x = 2301.4, y = 241.7, z = -524.1 }, rot = { x = 8.0, y = 293.2, z = 5.7 }, level = 2, drop_tag = "解谜低级蒙德", isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 135, shape = RegionShape.SPHERE, radius = 4, pos = { x = 2304.4, y = 242.3, z = -524.4 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_134", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_134", action = "action_EVENT_ANY_MONSTER_DIE_134", tlog_tag = "奔狼岭_108_封印宝箱_结算" },
	{ name = "ENTER_REGION_135", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_135", action = "action_EVENT_ENTER_REGION_135", tlog_tag = "奔狼岭_108_封印宝箱_触发" }
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
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_134(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_134(context, evt)
	-- 解锁目标400
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 400, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_135(context, evt)
	if evt.param1 ~= 135 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_135(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 278, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 279, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 280, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 281, delay_time = 0 }) then
	  return -1
	end
	
	-- 将configid为 400 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 400, GadgetState.ChestLocked) then
			return -1
		end 
	
	return 0
end
