--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 354, monster_id = 20020101, pos = { x = 2455.1, y = 262.9, z = 361.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 35, drop_tag = "元素之核", disableWander = true },
	{ config_id = 363, monster_id = 20010401, pos = { x = 2456.2, y = 262.9, z = 357.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "史莱姆" },
	{ config_id = 386, monster_id = 20010401, pos = { x = 2456.1, y = 262.9, z = 365.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 640, gadget_id = 70211012, pos = { x = 2448.6, y = 263.2, z = 361.8 }, rot = { x = 0.0, y = 111.2, z = 0.0 }, level = 23, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 827, gadget_id = 70211022, pos = { x = 2449.5, y = 263.2, z = 364.2 }, rot = { x = 0.0, y = 111.2, z = 0.0 }, level = 23, drop_tag = "战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 828, gadget_id = 70211012, pos = { x = 2450.5, y = 263.1, z = 366.7 }, rot = { x = 0.0, y = 111.2, z = 0.0 }, level = 23, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 271, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2452.4, y = 263.0, z = 361.9 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_227", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_227", action = "action_EVENT_ANY_MONSTER_DIE_227", tlog_tag = "风龙_168_巅峰挑战_成功" },
	{ name = "ENTER_REGION_271", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_271", action = "", tlog_tag = "风龙_168_巅峰挑战_触发" }
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
		monsters = { 354, 363, 386 },
		gadgets = { 640, 827, 828 },
		regions = { 271 },
		triggers = { "ANY_MONSTER_DIE_227", "ENTER_REGION_271" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_227(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_227(context, evt)
	-- 将configid为 827 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 827, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 828 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 828, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 640 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 640, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_271(context, evt)
	if evt.param1 ~= 271 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
