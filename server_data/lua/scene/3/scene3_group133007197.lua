--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 357, monster_id = 21030101, pos = { x = 2496.6, y = 210.0, z = 369.3 }, rot = { x = 0.0, y = 216.4, z = 0.0 }, level = 30, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 358, monster_id = 21010901, pos = { x = 2495.6, y = 210.0, z = 365.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 833, gadget_id = 70220014, pos = { x = 2497.7, y = 210.1, z = 368.0 }, rot = { x = 0.0, y = 155.4, z = 0.0 }, level = 23 },
	{ config_id = 834, gadget_id = 70220014, pos = { x = 2498.6, y = 210.2, z = 367.4 }, rot = { x = 0.0, y = 128.1, z = 0.0 }, level = 23 },
	{ config_id = 835, gadget_id = 70211012, pos = { x = 2498.0, y = 210.2, z = 366.0 }, rot = { x = 0.0, y = 299.3, z = 0.0 }, level = 23, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 836, gadget_id = 70310006, pos = { x = 2495.1, y = 209.9, z = 367.4 }, rot = { x = 0.0, y = 223.5, z = 0.0 }, level = 23, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 276, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2496.4, y = 210.0, z = 367.0 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_229", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_229", action = "action_EVENT_ANY_MONSTER_DIE_229", tlog_tag = "风龙_197_营地_成功" },
	{ name = "ENTER_REGION_276", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_276", action = "", tlog_tag = "风龙_197_营地_触发" }
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
		monsters = { 357, 358 },
		gadgets = { 833, 834, 835, 836 },
		regions = { 276 },
		triggers = { "ANY_MONSTER_DIE_229", "ENTER_REGION_276" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_229(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_229(context, evt)
	-- 将configid为 835 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 835, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_276(context, evt)
	if evt.param1 ~= 276 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
