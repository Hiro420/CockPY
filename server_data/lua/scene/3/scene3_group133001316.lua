--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1376, monster_id = 20010301, pos = { x = 1929.7, y = 197.1, z = -1259.3 }, rot = { x = 0.0, y = 138.7, z = 0.0 }, level = 10, drop_id = 1000100 },
	{ config_id = 1377, monster_id = 20010301, pos = { x = 1930.4, y = 197.0, z = -1273.4 }, rot = { x = 0.0, y = 358.9, z = 0.0 }, level = 10, drop_id = 1000100 },
	{ config_id = 1378, monster_id = 20010301, pos = { x = 1922.5, y = 196.3, z = -1267.9 }, rot = { x = 0.0, y = 59.4, z = 0.0 }, level = 10, drop_id = 1000100 },
	{ config_id = 1379, monster_id = 20010401, pos = { x = 1922.5, y = 196.8, z = -1261.0 }, rot = { x = 347.4, y = 136.0, z = 337.8 }, level = 10, drop_id = 1000100, affix = { 1007, 1018 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3366, gadget_id = 70210103, pos = { x = 1929.0, y = 197.6, z = -1265.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 316001, shape = RegionShape.SPHERE, radius = 26.36, pos = { x = 1928.9, y = 196.9, z = -1266.3 } }
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_499", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_499", action = "action_EVENT_ANY_GADGET_DIE_499" },
	{ name = "ANY_GADGET_DIE_500", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_500", action = "action_EVENT_ANY_GADGET_DIE_500" },
	{ name = "ANY_MONSTER_DIE_501", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_501", action = "action_EVENT_ANY_MONSTER_DIE_501" },
	{ name = "ENTER_REGION_316001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_316001", action = "action_EVENT_ENTER_REGION_316001" }
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
		gadgets = { 3366 },
		regions = { 316001 },
		triggers = { "ANY_GADGET_DIE_499", "ENTER_REGION_316001" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 3366 },
		regions = { 316001 },
		triggers = { "ANY_GADGET_DIE_500", "ANY_MONSTER_DIE_501", "ENTER_REGION_316001" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 3366 },
		regions = { 316001 },
		triggers = { "ANY_GADGET_DIE_499", "ENTER_REGION_316001" },
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
function condition_EVENT_ANY_GADGET_DIE_499(context, evt)
	if 3366 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_499(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001316") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_500(context, evt)
	if 3366 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_500(context, evt)
	-- 调用提示id为 1110100 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110100) then
		return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1379, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1376, delay_time = 1.5 }) then
	  return -1
	end
	
	-- 延迟1.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1377, delay_time = 1.5 }) then
	  return -1
	end
	
	-- 延迟1.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1378, delay_time = 1.5 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_501(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_501(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001316") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_316001(context, evt)
	if evt.param1 ~= 316001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_316001(context, evt)
	-- 调用提示id为 1110102 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110102) then
		return -1
	end
	
	return 0
end
