-- Trigger变量
local defs = {
	gadget_id_1 = 2035,
	gadget_id_2 = 220014002
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 29, monster_id = 20010501, pos = { x = 212.9, y = 57.0, z = 343.3 }, rot = { x = 0.0, y = 182.6, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 30, monster_id = 20010501, pos = { x = 217.0, y = 57.0, z = 343.4 }, rot = { x = 0.0, y = 182.6, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 35, monster_id = 20010501, pos = { x = 214.6, y = 57.0, z = 343.4 }, rot = { x = 0.0, y = 195.9, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 32, shape = RegionShape.SPHERE, radius = 6.87, pos = { x = 214.2, y = 57.0, z = 337.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_32", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_32", action = "action_EVENT_ENTER_REGION_32", forbid_guest = false },
	{ name = "ANY_MONSTER_DIE_39", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_39", action = "action_EVENT_ANY_MONSTER_DIE_39" }
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
	rand_suite = true,
	npcs = { }
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
		monsters = { 29 },
		gadgets = { },
		regions = { 32 },
		triggers = { "ENTER_REGION_32", "ANY_MONSTER_DIE_39" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_32(context, evt)
	if evt.param1 ~= 32 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_32(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 30, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 35, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_39(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_39(context, evt)
	-- 改变指定group组220014002中， configid为36的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220014002, defs.gadget_id_1, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220014002, 2035, {8}) then
		return -1
	end
	
	-- 改变指定group组27中， configid为220014002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 27, defs.gadget_id_2, GadgetState.GearStart) then
			return -1
		end 
	
	
	return 0
end
