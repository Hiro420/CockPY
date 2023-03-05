--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 212, monster_id = 21030101, pos = { x = 2992.4, y = 211.2, z = 62.2 }, rot = { x = 0.0, y = 216.4, z = 0.0 }, level = 30, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 213, monster_id = 21010901, pos = { x = 2991.4, y = 211.1, z = 58.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 458, gadget_id = 70220014, pos = { x = 2993.5, y = 211.2, z = 60.8 }, rot = { x = 0.0, y = 155.4, z = 0.0 }, level = 23 },
	{ config_id = 459, gadget_id = 70220014, pos = { x = 2994.4, y = 211.2, z = 60.3 }, rot = { x = 0.0, y = 128.1, z = 0.0 }, level = 23 },
	{ config_id = 460, gadget_id = 70211012, pos = { x = 2994.1, y = 211.1, z = 59.4 }, rot = { x = 0.0, y = 299.3, z = 0.0 }, level = 23, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 461, gadget_id = 70310006, pos = { x = 2990.9, y = 211.1, z = 60.3 }, rot = { x = 0.0, y = 223.5, z = 0.0 }, level = 23, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 264, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2992.5, y = 211.1, z = 59.6 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_74", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_74", action = "action_EVENT_ANY_MONSTER_DIE_74", tlog_tag = "风龙_134_营地_成功" },
	{ name = "ENTER_REGION_264", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_264", action = "", tlog_tag = "风龙_134_营地_触发" }
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
		monsters = { 212, 213 },
		gadgets = { 458, 459, 460, 461 },
		regions = { 264 },
		triggers = { "ANY_MONSTER_DIE_74", "ENTER_REGION_264" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_74(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_74(context, evt)
	-- 将configid为 460 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 460, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_264(context, evt)
	if evt.param1 ~= 264 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
