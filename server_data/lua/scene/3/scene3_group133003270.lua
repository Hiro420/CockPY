--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 915, monster_id = 20011201, pos = { x = 2688.7, y = 263.0, z = -1350.6 }, rot = { x = 0.0, y = 183.9, z = 0.0 }, level = 13, drop_tag = "史莱姆" },
	{ config_id = 916, monster_id = 20011201, pos = { x = 2689.1, y = 263.2, z = -1354.2 }, rot = { x = 0.0, y = 343.1, z = 0.0 }, level = 13, drop_tag = "史莱姆" },
	{ config_id = 917, monster_id = 20011301, pos = { x = 2685.9, y = 263.4, z = -1352.1 }, rot = { x = 0.0, y = 93.0, z = 0.0 }, level = 13, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3010, gadget_id = 70211002, pos = { x = 2688.1, y = 263.2, z = -1352.3 }, rot = { x = 0.0, y = 67.4, z = 0.0 }, level = 30, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 182, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2688.6, y = 263.2, z = -1352.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_182", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_182", action = "action_EVENT_ENTER_REGION_182", tlog_tag = "望风山地_270_移动精灵_开始" },
	{ name = "ANY_MONSTER_DIE_183", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_183", action = "action_EVENT_ANY_MONSTER_DIE_183", tlog_tag = "望风山地_270_移动精灵_结束" }
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
		gadgets = { 3010 },
		regions = { 182 },
		triggers = { "ENTER_REGION_182", "ANY_MONSTER_DIE_183" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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
function condition_EVENT_ENTER_REGION_182(context, evt)
	if evt.param1 ~= 182 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_182(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 915, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 916, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 917, delay_time = 0 }) then
	  return -1
	end
	
	-- 将configid为 3010 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3010, GadgetState.ChestLocked) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3389 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_183(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_183(context, evt)
	-- 解锁目标3010
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3010, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
