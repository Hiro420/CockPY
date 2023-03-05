--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 906001, gadget_id = 70220001, pos = { x = -451.1, y = 207.6, z = 306.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 906002, gadget_id = 70220001, pos = { x = -448.0, y = 207.6, z = 303.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 906003, gadget_id = 70220001, pos = { x = -450.8, y = 207.6, z = 307.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 906004, gadget_id = 70220001, pos = { x = -454.1, y = 207.6, z = 300.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 906005, gadget_id = 70220001, pos = { x = -454.4, y = 207.6, z = 310.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 }
}

-- 区域
regions = {
	{ config_id = 906006, shape = RegionShape.SPHERE, radius = 2.5, pos = { x = -461.1, y = 209.7, z = 312.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_906006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_906006", action = "action_EVENT_ENTER_REGION_906006" },
	{ name = "ANY_GADGET_DIE_906007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_906007" }
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
		gadgets = { 906002, 906005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 906005 },
		regions = { 906006 },
		triggers = { "ENTER_REGION_906006", "ANY_GADGET_DIE_906007" },
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
function condition_EVENT_ENTER_REGION_906006(context, evt)
	if evt.param1 ~= 906006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_906006(context, evt)
	-- 触发镜头注目，注目位置为坐标（-451，209，302），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-451, y=209, z=302}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 调用提示id为 1110057 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110057) then
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310790601") then
	  return -1
	end
	
	-- 创建id为906001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 906001 }) then
	  return -1
	end
	
	-- 创建id为906002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 906002 }) then
	  return -1
	end
	
	-- 创建id为906003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 906003 }) then
	  return -1
	end
	
	-- 创建id为906004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 906004 }) then
	  return -1
	end
	
	-- 创建id为906005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 906005 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_906007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	ScriptLib.AddQuestProgress(context, "13310790602")
	
	
	-- 调用提示id为 1110077 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	ScriptLib.ShowReminder(context, 1110077)
	
	return 0
end
