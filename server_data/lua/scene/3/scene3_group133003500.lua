--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 500001, monster_id = 20010601, pos = { x = 2525.3, y = 204.9, z = -1171.7 }, rot = { x = 0.0, y = 296.5, z = 0.0 }, level = 34, drop_id = 1000100 },
	{ config_id = 500002, monster_id = 20010501, pos = { x = 2526.4, y = 205.2, z = -1171.3 }, rot = { x = 0.0, y = 284.6, z = 0.0 }, level = 32, drop_id = 1000100 },
	{ config_id = 500003, monster_id = 20010501, pos = { x = 2525.8, y = 205.2, z = -1173.0 }, rot = { x = 0.0, y = 284.6, z = 0.0 }, level = 32, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 500006, gadget_id = 70300114, pos = { x = 2525.7, y = 205.1, z = -1171.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2, state = GadgetState.GearStart, persistent = true }
}

-- 区域
regions = {
	{ config_id = 500004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2525.3, y = 205.0, z = -1171.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_500004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_500004", action = "action_EVENT_ENTER_REGION_500004" },
	{ name = "ANY_MONSTER_DIE_500005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_500005", action = "action_EVENT_ANY_MONSTER_DIE_500005" }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { 500004 },
		triggers = { "ENTER_REGION_500004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 500001, 500002, 500003 },
		gadgets = { 500006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_500005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_500004(context, evt)
	if evt.param1 ~= 500004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_500004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300350001") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_500005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_500005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300350002") then
	  return -1
	end
	
	-- 将configid为 500006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 500006, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
