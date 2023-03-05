--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 359, monster_id = 21010501, pos = { x = 2386.4, y = 222.5, z = 386.7 }, rot = { x = 0.0, y = 229.3, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 360, monster_id = 21030301, pos = { x = 2386.4, y = 222.5, z = 383.4 }, rot = { x = 0.0, y = 327.9, z = 0.0 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 837, gadget_id = 70220014, pos = { x = 2382.5, y = 222.5, z = 385.1 }, rot = { x = 0.0, y = 155.4, z = 0.0 }, level = 23 },
	{ config_id = 838, gadget_id = 70220014, pos = { x = 2382.5, y = 222.5, z = 386.5 }, rot = { x = 0.0, y = 128.1, z = 0.0 }, level = 23 },
	{ config_id = 839, gadget_id = 70211012, pos = { x = 2383.7, y = 222.5, z = 383.2 }, rot = { x = 0.0, y = 41.9, z = 0.0 }, level = 23, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 840, gadget_id = 70310001, pos = { x = 2385.1, y = 222.5, z = 385.1 }, rot = { x = 0.0, y = 223.5, z = 0.0 }, level = 23, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 277, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2384.9, y = 222.8, z = 385.4 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_230", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_230", action = "action_EVENT_ANY_MONSTER_DIE_230", tlog_tag = "风龙_198_营地_成功" },
	{ name = "ENTER_REGION_277", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_277", action = "", tlog_tag = "风龙_198_营地_触发" }
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
		monsters = { 359, 360 },
		gadgets = { 837, 838, 839, 840 },
		regions = { 277 },
		triggers = { "ANY_MONSTER_DIE_230", "ENTER_REGION_277" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_230(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_230(context, evt)
	-- 将configid为 839 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 839, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_277(context, evt)
	if evt.param1 ~= 277 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
