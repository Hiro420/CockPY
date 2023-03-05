--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 364, monster_id = 21010601, pos = { x = 2443.8, y = 220.2, z = 207.3 }, rot = { x = 0.0, y = 84.0, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 365, monster_id = 21010701, pos = { x = 2448.0, y = 219.7, z = 209.9 }, rot = { x = 0.0, y = 218.1, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 366, monster_id = 21010401, pos = { x = 2446.8, y = 219.9, z = 205.8 }, rot = { x = 0.0, y = 338.6, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 907, gadget_id = 70310006, pos = { x = 2445.8, y = 220.0, z = 207.5 }, rot = { x = 0.0, y = 133.1, z = 0.0 }, level = 23, state = GadgetState.GearStart },
	{ config_id = 908, gadget_id = 70220013, pos = { x = 2445.9, y = 219.8, z = 212.0 }, rot = { x = 0.0, y = 356.6, z = 0.0 }, level = 23 },
	{ config_id = 909, gadget_id = 70220013, pos = { x = 2442.0, y = 220.3, z = 209.7 }, rot = { x = 0.0, y = 143.0, z = 0.0 }, level = 23 },
	{ config_id = 910, gadget_id = 70211012, pos = { x = 2444.7, y = 220.0, z = 210.1 }, rot = { x = 0.0, y = 154.6, z = 0.0 }, level = 23, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 278, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2445.8, y = 219.9, z = 209.1 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_237", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_237", action = "action_EVENT_ANY_MONSTER_DIE_237", tlog_tag = "风龙_205_营地_成功" },
	{ name = "ENTER_REGION_278", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_278", action = "", tlog_tag = "风龙_205_营地_触发" }
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
		monsters = { 364, 365, 366 },
		gadgets = { 907, 908, 909, 910 },
		regions = { 278 },
		triggers = { "ANY_MONSTER_DIE_237", "ENTER_REGION_278" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_237(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_237(context, evt)
	-- 将configid为 910 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 910, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_278(context, evt)
	if evt.param1 ~= 278 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
