--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 44, monster_id = 21010601, pos = { x = 2605.1, y = 180.0, z = 408.6 }, rot = { x = 0.0, y = 84.0, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 45, monster_id = 21010701, pos = { x = 2610.3, y = 179.9, z = 412.4 }, rot = { x = 0.0, y = 209.4, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 46, monster_id = 21010401, pos = { x = 2609.5, y = 179.3, z = 406.2 }, rot = { x = 0.0, y = 338.6, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 616, gadget_id = 70310006, pos = { x = 2608.6, y = 179.6, z = 408.6 }, rot = { x = 0.0, y = 133.1, z = 0.0 }, level = 23, state = GadgetState.GearStart },
	{ config_id = 617, gadget_id = 70220013, pos = { x = 2612.6, y = 179.3, z = 409.6 }, rot = { x = 0.0, y = 33.7, z = 0.0 }, level = 23 },
	{ config_id = 618, gadget_id = 70220013, pos = { x = 2613.0, y = 179.5, z = 411.6 }, rot = { x = 0.0, y = 143.0, z = 0.0 }, level = 23 },
	{ config_id = 619, gadget_id = 70211012, pos = { x = 2607.0, y = 180.0, z = 411.5 }, rot = { x = 0.0, y = 154.6, z = 0.0 }, level = 23, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 275, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2608.7, y = 179.8, z = 410.8 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_109", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_109", action = "action_EVENT_ANY_MONSTER_DIE_109", tlog_tag = "风龙_20_营地_成功" },
	{ name = "ENTER_REGION_275", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_275", action = "", tlog_tag = "风龙_20_营地_触发" }
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
		monsters = { 44, 45, 46 },
		gadgets = { 616, 617, 618, 619 },
		regions = { 275 },
		triggers = { "ANY_MONSTER_DIE_109", "ENTER_REGION_275" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_109(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_109(context, evt)
	-- 将configid为 619 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 619, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_275(context, evt)
	if evt.param1 ~= 275 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
