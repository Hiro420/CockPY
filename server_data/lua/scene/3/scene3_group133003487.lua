--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1766, monster_id = 20011201, pos = { x = 2569.0, y = 214.2, z = -1326.3 }, rot = { x = 0.0, y = 279.5, z = 0.0 }, level = 10, drop_id = 1000100, ban_excel_drop = true },
	{ config_id = 1767, monster_id = 20011201, pos = { x = 2568.9, y = 213.7, z = -1328.8 }, rot = { x = 0.0, y = 279.5, z = 0.0 }, level = 10, drop_id = 1000100, ban_excel_drop = true },
	{ config_id = 1768, monster_id = 20011201, pos = { x = 2563.3, y = 213.5, z = -1329.7 }, rot = { x = 0.0, y = 9.6, z = 0.0 }, level = 10, drop_id = 1000100, ban_excel_drop = true },
	{ config_id = 1769, monster_id = 20011301, pos = { x = 2567.8, y = 213.0, z = -1331.3 }, rot = { x = 0.0, y = 321.6, z = 0.0 }, level = 10, drop_id = 1000100, ban_excel_drop = true, affix = { 1007, 1018 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4594, gadget_id = 70210103, pos = { x = 2565.9, y = 215.6, z = -1324.2 }, rot = { x = 0.0, y = 192.4, z = 0.0 }, level = 2 }
}

-- 区域
regions = {
	{ config_id = 487001, shape = RegionShape.SPHERE, radius = 16.69, pos = { x = 2565.6, y = 215.4, z = -1323.7 } }
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_602", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_602", action = "action_EVENT_ANY_GADGET_DIE_602" },
	{ name = "ANY_GADGET_DIE_603", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_603", action = "action_EVENT_ANY_GADGET_DIE_603" },
	{ name = "ANY_MONSTER_DIE_604", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_604", action = "action_EVENT_ANY_MONSTER_DIE_604" },
	{ name = "ENTER_REGION_487001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_487001", action = "action_EVENT_ENTER_REGION_487001" }
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
		gadgets = { 4594 },
		regions = { 487001 },
		triggers = { "ANY_GADGET_DIE_602", "ENTER_REGION_487001" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 4594 },
		regions = { 487001 },
		triggers = { "ANY_GADGET_DIE_603", "ANY_MONSTER_DIE_604", "ENTER_REGION_487001" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 4594 },
		regions = { 487001 },
		triggers = { "ANY_GADGET_DIE_602", "ENTER_REGION_487001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_602(context, evt)
	if 4594 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_602(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003487") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_603(context, evt)
	if 4594 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_603(context, evt)
	-- 调用提示id为 1110100 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110100) then
		return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1769, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1766, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1767, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1768, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_604(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_604(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003487") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_487001(context, evt)
	if evt.param1 ~= 487001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_487001(context, evt)
	-- 调用提示id为 1110102 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110102) then
		return -1
	end
	
	return 0
end
