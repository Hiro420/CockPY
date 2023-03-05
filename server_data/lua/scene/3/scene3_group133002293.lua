--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1047, monster_id = 20010801, pos = { x = 1856.7, y = 257.7, z = -572.5 }, rot = { x = 0.0, y = 192.4, z = 0.0 }, level = 10, drop_id = 1000100 },
	{ config_id = 1048, monster_id = 20010901, pos = { x = 1859.7, y = 257.5, z = -580.1 }, rot = { x = 0.0, y = 285.8, z = 0.0 }, level = 10, drop_id = 1000100, affix = { 1007, 1018 }, isElite = true },
	{ config_id = 1049, monster_id = 20010801, pos = { x = 1861.0, y = 258.4, z = -577.6 }, rot = { x = 0.0, y = 264.7, z = 0.0 }, level = 10, drop_id = 1000100 },
	{ config_id = 1050, monster_id = 20010801, pos = { x = 1858.8, y = 258.4, z = -573.5 }, rot = { x = 0.0, y = 213.5, z = 0.0 }, level = 10, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2481, gadget_id = 70210103, pos = { x = 1858.6, y = 259.5, z = -575.9 }, rot = { x = 0.0, y = 248.4, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 293001, shape = RegionShape.SPHERE, radius = 20.14, pos = { x = 1858.9, y = 259.0, z = -576.0 } }
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_403", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_403", action = "action_EVENT_ANY_GADGET_DIE_403" },
	{ name = "ANY_GADGET_DIE_404", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_404", action = "action_EVENT_ANY_GADGET_DIE_404" },
	{ name = "ANY_MONSTER_DIE_405", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_405", action = "action_EVENT_ANY_MONSTER_DIE_405" },
	{ name = "ENTER_REGION_293001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_293001", action = "action_EVENT_ENTER_REGION_293001" }
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
		gadgets = { 2481 },
		regions = { 293001 },
		triggers = { "ANY_GADGET_DIE_403", "ENTER_REGION_293001" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 2481 },
		regions = { 293001 },
		triggers = { "ANY_GADGET_DIE_404", "ANY_MONSTER_DIE_405", "ENTER_REGION_293001" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 2481 },
		regions = { 293001 },
		triggers = { "ANY_GADGET_DIE_403", "ENTER_REGION_293001" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_403(context, evt)
	if 2481 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_403(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002293") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_404(context, evt)
	if 2481 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_404(context, evt)
	-- 调用提示id为 1110100 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110100) then
		return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1048, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1047, delay_time = 1.5 }) then
	  return -1
	end
	
	-- 延迟1.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1049, delay_time = 1.5 }) then
	  return -1
	end
	
	-- 延迟1.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1050, delay_time = 1.5 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_405(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_405(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002293") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_293001(context, evt)
	if evt.param1 ~= 293001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_293001(context, evt)
	-- 调用提示id为 1110102 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110102) then
		return -1
	end
	
	return 0
end
