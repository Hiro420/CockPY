--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 21010101, pos = { x = -2.3, y = 0.0, z = 6.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 8002, monster_id = 21010101, pos = { x = 4.5, y = 0.0, z = -2.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 8003, monster_id = 21010101, pos = { x = -1.9, y = 0.0, z = -4.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 8004, monster_id = 20030101, pos = { x = -0.8, y = 3.8, z = 1.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100 },
	{ config_id = 8005, monster_id = 20030101, pos = { x = 2.8, y = 3.8, z = 1.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8006, gadget_id = 70350033, pos = { x = 0.0, y = 0.0, z = 0.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 8007, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1.1, y = 0.0, z = -0.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_8007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8007", action = "action_EVENT_ENTER_REGION_8007", forbid_guest = false },
	{ name = "ANY_MONSTER_DIE_8008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8008", action = "action_EVENT_ANY_MONSTER_DIE_8008", trigger_count = 0 }
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
	rand_suite = false,
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
		monsters = { },
		gadgets = { 8006 },
		regions = { 8007 },
		triggers = { "ENTER_REGION_8007", "ANY_MONSTER_DIE_8008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 8001, 8002, 8003, 8004, 8005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_8007(context, evt)
	if evt.param1 ~= 8007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250011008, 2)
	
	-- 将configid为 8006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8006, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8008(context, evt)
	-- 删除suite0的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250011008, 0)
	
	-- 将configid为 8006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8006, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
