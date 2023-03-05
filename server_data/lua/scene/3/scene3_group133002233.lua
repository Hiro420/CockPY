--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 611, monster_id = 20010801, pos = { x = 1861.1, y = 201.2, z = -171.7 }, rot = { x = 0.0, y = 152.5, z = 0.0 }, level = 10, drop_tag = "史莱姆" },
	{ config_id = 612, monster_id = 20010801, pos = { x = 1857.6, y = 201.3, z = -175.1 }, rot = { x = 0.0, y = 148.0, z = 0.0 }, level = 10, drop_tag = "史莱姆" },
	{ config_id = 746, monster_id = 20010801, pos = { x = 1863.7, y = 201.3, z = -174.8 }, rot = { x = 0.0, y = 173.4, z = 0.0 }, level = 10, drop_tag = "史莱姆" },
	{ config_id = 798, monster_id = 20010901, pos = { x = 1857.5, y = 200.6, z = -169.8 }, rot = { x = 0.0, y = 149.7, z = 0.0 }, level = 10, drop_tag = "史莱姆", affix = { 1002 }, isElite = true },
	{ config_id = 870, monster_id = 22010301, pos = { x = 1881.0, y = 202.2, z = -176.6 }, rot = { x = 0.0, y = 202.7, z = 0.0 }, level = 10, drop_tag = "深渊法师", affix = { 1002 }, isElite = true },
	{ config_id = 871, monster_id = 21030101, pos = { x = 1883.0, y = 202.4, z = -178.6 }, rot = { x = 0.0, y = 217.1, z = 0.0 }, level = 10, drop_tag = "丘丘萨满" },
	{ config_id = 872, monster_id = 21010901, pos = { x = 1878.1, y = 202.0, z = -177.2 }, rot = { x = 0.0, y = 167.1, z = 0.0 }, level = 10, drop_tag = "远程丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 287, shape = RegionShape.SPHERE, radius = 14.4, pos = { x = 1860.4, y = 201.0, z = -173.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_287", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_287", action = "action_EVENT_ENTER_REGION_287" },
	{ name = "ANY_MONSTER_DIE_233001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_233001", action = "action_EVENT_ANY_MONSTER_DIE_233001", trigger_count = 0 }
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
		monsters = { 611, 612, 746 },
		gadgets = { },
		regions = { 287 },
		triggers = { "ENTER_REGION_287" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 870, 871, 872 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 611, 612, 746, 798 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_233001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_287(context, evt)
	if evt.param1 ~= 287 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_287(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 798, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_233001(context, evt)
	if 798 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_233001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330022331") then
	  return -1
	end
	
	return 0
end
