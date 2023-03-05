--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 277, monster_id = 20030101, pos = { x = 2555.3, y = 214.5, z = 150.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, drop_tag = "雷萤" },
	{ config_id = 278, monster_id = 20030101, pos = { x = 2558.2, y = 214.5, z = 150.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, drop_tag = "雷萤" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 663, gadget_id = 70211102, pos = { x = 2556.8, y = 214.7, z = 152.9 }, rot = { x = 0.0, y = 171.7, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 214, shape = RegionShape.SPHERE, radius = 6, pos = { x = 2556.8, y = 214.5, z = 151.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_214", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_214", action = "action_EVENT_ENTER_REGION_214", tlog_tag = "风龙_188_营地_触发" },
	{ name = "ANY_MONSTER_DIE_215", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_215", action = "action_EVENT_ANY_MONSTER_DIE_215", tlog_tag = "风龙_188_营地_成功" }
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
		gadgets = { 663 },
		regions = { 214 },
		triggers = { "ENTER_REGION_214", "ANY_MONSTER_DIE_215" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_214(context, evt)
	if evt.param1 ~= 214 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_214(context, evt)
	-- 将configid为 195 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 195, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 277, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 278, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_215(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_215(context, evt)
	-- 解锁目标663
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 663, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
