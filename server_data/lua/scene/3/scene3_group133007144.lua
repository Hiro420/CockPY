--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 228, monster_id = 21010401, pos = { x = 2670.7, y = 212.3, z = 285.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 229, monster_id = 21010401, pos = { x = 2670.2, y = 212.2, z = 289.7 }, rot = { x = 0.0, y = 146.5, z = 0.0 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 230, monster_id = 21010201, pos = { x = 2673.6, y = 212.5, z = 287.8 }, rot = { x = 0.0, y = 279.8, z = 0.0 }, level = 22, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 493, gadget_id = 70211012, pos = { x = 2667.8, y = 212.0, z = 285.1 }, rot = { x = 0.0, y = 49.9, z = 0.0 }, level = 23, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 494, gadget_id = 70310004, pos = { x = 2671.6, y = 212.4, z = 287.8 }, rot = { x = 0.0, y = 109.9, z = 0.0 }, level = 23, state = GadgetState.GearStart },
	{ config_id = 495, gadget_id = 70220013, pos = { x = 2665.4, y = 211.9, z = 288.6 }, rot = { x = 0.0, y = 309.2, z = 0.0 }, level = 23 },
	{ config_id = 496, gadget_id = 70220013, pos = { x = 2664.0, y = 211.8, z = 287.0 }, rot = { x = 0.0, y = 46.9, z = 0.0 }, level = 23 },
	{ config_id = 497, gadget_id = 70220014, pos = { x = 2667.9, y = 211.9, z = 281.9 }, rot = { x = 0.0, y = 1.0, z = 0.0 }, level = 23 },
	{ config_id = 498, gadget_id = 70220014, pos = { x = 2672.7, y = 212.2, z = 282.6 }, rot = { x = 0.0, y = 94.5, z = 0.0 }, level = 23 }
}

-- 区域
regions = {
	{ config_id = 272, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2669.5, y = 212.2, z = 288.3 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_78", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_78", action = "action_EVENT_ANY_MONSTER_DIE_78", tlog_tag = "风龙_144_营地_成功" },
	{ name = "ENTER_REGION_272", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_272", action = "", tlog_tag = "风龙_144_营地_触发" }
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
		monsters = { 228, 229, 230 },
		gadgets = { 493, 494, 495, 496, 497, 498 },
		regions = { 272 },
		triggers = { "ANY_MONSTER_DIE_78", "ENTER_REGION_272" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_78(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_78(context, evt)
	-- 将configid为 493 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 493, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_272(context, evt)
	if evt.param1 ~= 272 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
