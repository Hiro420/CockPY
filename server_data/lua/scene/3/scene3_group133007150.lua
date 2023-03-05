--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 243, monster_id = 21010501, pos = { x = 2622.9, y = 206.8, z = 356.3 }, rot = { x = 0.0, y = 296.6, z = 0.0 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 244, monster_id = 21010501, pos = { x = 2622.3, y = 206.8, z = 359.4 }, rot = { x = 0.0, y = 211.9, z = 0.0 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 245, monster_id = 21010501, pos = { x = 2618.8, y = 206.8, z = 355.4 }, rot = { x = 0.0, y = 20.9, z = 0.0 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 518, gadget_id = 70211012, pos = { x = 2624.5, y = 206.8, z = 357.5 }, rot = { x = 0.0, y = 262.1, z = 0.0 }, level = 23, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 955, gadget_id = 70310001, pos = { x = 2620.9, y = 206.8, z = 357.7 }, rot = { x = 0.0, y = 340.1, z = 0.0 }, level = 23, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 274, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2620.5, y = 206.7, z = 358.8 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_103", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_103", action = "action_EVENT_ANY_MONSTER_DIE_103", tlog_tag = "风龙_150_营地_成功" },
	{ name = "ENTER_REGION_274", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_274", action = "", tlog_tag = "风龙_150_营地_触发" }
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
		monsters = { 243, 244, 245 },
		gadgets = { 518, 955 },
		regions = { 274 },
		triggers = { "ANY_MONSTER_DIE_103", "ENTER_REGION_274" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_103(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_103(context, evt)
	-- 将configid为 518 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 518, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_274(context, evt)
	if evt.param1 ~= 274 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
