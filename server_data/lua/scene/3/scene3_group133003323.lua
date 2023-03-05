--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1056, monster_id = 20011001, pos = { x = 2657.5, y = 251.1, z = -1209.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "史莱姆" },
	{ config_id = 1057, monster_id = 20011001, pos = { x = 2657.6, y = 251.0, z = -1211.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "史莱姆" },
	{ config_id = 1058, monster_id = 20011001, pos = { x = 2655.1, y = 251.1, z = -1211.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3310, gadget_id = 70211112, pos = { x = 2656.4, y = 246.8, z = -1210.9 }, rot = { x = 0.0, y = 356.3, z = 0.0 }, level = 30, drop_tag = "解谜中级蒙德", state = GadgetState.ChestLocked, isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 247, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2656.1, y = 246.8, z = -1210.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_247", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_247", action = "action_EVENT_ENTER_REGION_247", tlog_tag = "望风山地_323_封印宝箱_触发" },
	{ name = "ANY_MONSTER_DIE_248", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_248", action = "action_EVENT_ANY_MONSTER_DIE_248", tlog_tag = "望风山地_323_封印宝箱_结算" }
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
		gadgets = { 3310 },
		regions = { 247 },
		triggers = { "ENTER_REGION_247", "ANY_MONSTER_DIE_248" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_247(context, evt)
	if evt.param1 ~= 247 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_247(context, evt)
	-- 将configid为 3310 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3310, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1056, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1057, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1058, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_248(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_248(context, evt)
	-- 解锁目标3310
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3310, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
