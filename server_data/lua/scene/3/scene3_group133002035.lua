--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 727, monster_id = 20010801, pos = { x = 1824.1, y = 218.0, z = -387.1 }, rot = { x = 0.0, y = 215.9, z = 0.0 }, level = 10, drop_id = 1000100 },
	{ config_id = 728, monster_id = 20010801, pos = { x = 1819.4, y = 218.2, z = -386.7 }, rot = { x = 0.0, y = 191.9, z = 0.0 }, level = 10, drop_id = 1000100 },
	{ config_id = 729, monster_id = 20010801, pos = { x = 1823.1, y = 218.4, z = -394.9 }, rot = { x = 0.0, y = 256.6, z = 0.0 }, level = 10, drop_id = 1000100 },
	{ config_id = 730, monster_id = 20011401, pos = { x = 1812.5, y = 218.4, z = -409.4 }, rot = { x = 0.0, y = 106.1, z = 0.0 }, level = 10, drop_id = 1000100 },
	{ config_id = 731, monster_id = 20011401, pos = { x = 1813.5, y = 218.1, z = -419.7 }, rot = { x = 0.0, y = 317.5, z = 0.0 }, level = 10, drop_id = 1000100 },
	{ config_id = 732, monster_id = 20011401, pos = { x = 1806.8, y = 219.6, z = -415.9 }, rot = { x = 0.0, y = 96.9, z = 0.0 }, level = 10, drop_id = 1000100 },
	{ config_id = 733, monster_id = 20011501, pos = { x = 1814.6, y = 218.1, z = -413.7 }, rot = { x = 0.0, y = 95.5, z = 0.0 }, level = 10, drop_id = 1000100 },
	{ config_id = 734, monster_id = 20010901, pos = { x = 1820.6, y = 218.2, z = -392.7 }, rot = { x = 0.0, y = 264.6, z = 0.0 }, level = 10, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 35001, gadget_id = 70900201, pos = { x = 1813.2, y = 221.5, z = -394.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10 },
	{ config_id = 35002, gadget_id = 70900201, pos = { x = 1818.2, y = 221.7, z = -414.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_238", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_238", action = "action_EVENT_ANY_MONSTER_DIE_238" },
	{ name = "ANY_MONSTER_DIE_239", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_239", action = "action_EVENT_ANY_MONSTER_DIE_239" },
	{ name = "ANY_MONSTER_DIE_240", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_240", action = "action_EVENT_ANY_MONSTER_DIE_240" },
	{ name = "ANY_MONSTER_LIVE_35003", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_35003", action = "action_EVENT_ANY_MONSTER_LIVE_35003" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 727, 728, 729 },
		gadgets = { 35001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_238", "ANY_MONSTER_LIVE_35003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 730, 731, 732 },
		gadgets = { 35002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_239" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 733, 734 },
		gadgets = { 35001, 35002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_240" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_238(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_238(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002035, suite = 3 }) then
			return -1
		end
	
	-- 调用提示id为 400002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400002) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_239(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_239(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002035, suite = 4 }) then
			return -1
		end
	
	-- 调用提示id为 400003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400003) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_240(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_240(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "3002035") then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 35001 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 35002 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_35003(context, evt)
	if 727 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_35003(context, evt)
	-- 调用提示id为 400001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400001) then
		return -1
	end
	
	return 0
end
