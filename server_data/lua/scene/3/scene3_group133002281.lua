--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1022, monster_id = 20010801, pos = { x = 1682.3, y = 205.8, z = -408.0 }, rot = { x = 0.0, y = 97.5, z = 0.0 }, level = 15, drop_tag = "史莱姆", pose_id = 901 },
	{ config_id = 1024, monster_id = 20010801, pos = { x = 1688.2, y = 206.7, z = -399.7 }, rot = { x = 0.0, y = 165.7, z = 0.0 }, level = 15, drop_tag = "史莱姆", pose_id = 901 },
	{ config_id = 1025, monster_id = 20010801, pos = { x = 1679.5, y = 207.1, z = -402.3 }, rot = { x = 0.0, y = 114.4, z = 0.0 }, level = 15, drop_tag = "史莱姆", pose_id = 901 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 381, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1686.0, y = 206.4, z = -404.3 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_374", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_374", action = "action_EVENT_ANY_MONSTER_DIE_374" },
	{ name = "ENTER_REGION_381", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_381", action = "action_EVENT_ENTER_REGION_381" }
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
		monsters = { 1022, 1024, 1025 },
		gadgets = { },
		regions = { 381 },
		triggers = { "ANY_MONSTER_DIE_374", "ENTER_REGION_381" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_374(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_374(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300228101") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_381(context, evt)
	if evt.param1 ~= 381 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_381(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002281") then
	  return -1
	end
	
	return 0
end
