--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 249012, monster_id = 21011201, pos = { x = 1518.3, y = 246.8, z = 650.8 }, rot = { x = 0.0, y = 5.3, z = 0.0 }, level = 18, drop_tag = "丘丘人", pose_id = 9012 },
	{ config_id = 249013, monster_id = 21011201, pos = { x = 1516.3, y = 247.3, z = 654.1 }, rot = { x = 0.0, y = 120.7, z = 0.0 }, level = 18, drop_tag = "丘丘人", pose_id = 9012 },
	{ config_id = 249014, monster_id = 21011201, pos = { x = 1519.2, y = 247.4, z = 656.2 }, rot = { x = 0.0, y = 182.7, z = 0.0 }, level = 18, drop_tag = "丘丘人", pose_id = 9012 },
	{ config_id = 249015, monster_id = 21011201, pos = { x = 1521.6, y = 246.7, z = 652.9 }, rot = { x = 0.0, y = 288.4, z = 0.0 }, level = 18, drop_tag = "丘丘人", pose_id = 9012 },
	{ config_id = 249017, monster_id = 20011501, pos = { x = 1514.0, y = 233.1, z = 538.8 }, rot = { x = 0.0, y = 133.9, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 249018, monster_id = 20011401, pos = { x = 1512.1, y = 233.1, z = 537.5 }, rot = { x = 0.0, y = 74.4, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 249019, monster_id = 20011401, pos = { x = 1514.8, y = 233.2, z = 541.0 }, rot = { x = 0.0, y = 124.7, z = 0.0 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 249020, monster_id = 20011401, pos = { x = 1515.5, y = 233.1, z = 537.6 }, rot = { x = 0.0, y = 96.8, z = 0.0 }, level = 18, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 249001, gadget_id = 70710034, pos = { x = 1518.7, y = 247.1, z = 653.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 249002, gadget_id = 70710035, pos = { x = 1512.3, y = 233.1, z = 540.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 249003, gadget_id = 70710036, pos = { x = 1458.2, y = 242.0, z = 581.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 },
	{ config_id = 249004, gadget_id = 70900051, pos = { x = 1518.8, y = 247.1, z = 653.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, persistent = true },
	{ config_id = 249005, gadget_id = 70900051, pos = { x = 1458.1, y = 242.1, z = 581.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, persistent = true },
	{ config_id = 249006, gadget_id = 70900051, pos = { x = 1512.3, y = 233.2, z = 540.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, persistent = true },
	{ config_id = 249011, gadget_id = 70620003, pos = { x = 1458.1, y = 242.1, z = 581.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 }
}

-- 区域
regions = {
	{ config_id = 249016, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1514.1, y = 234.0, z = 538.8 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_249007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_249007", action = "action_EVENT_GADGET_STATE_CHANGE_249007" },
	{ name = "GADGET_STATE_CHANGE_249008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_249008", action = "action_EVENT_GADGET_STATE_CHANGE_249008" },
	{ name = "GADGET_STATE_CHANGE_249009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_249009", action = "action_EVENT_GADGET_STATE_CHANGE_249009" },
	{ name = "VARIABLE_CHANGE_249010", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_249010", action = "action_EVENT_VARIABLE_CHANGE_249010" },
	{ name = "ENTER_REGION_249016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_249016", action = "action_EVENT_ENTER_REGION_249016" },
	{ name = "ANY_MONSTER_DIE_249021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_249021", action = "action_EVENT_ANY_MONSTER_DIE_249021", trigger_count = 4 },
	{ name = "VARIABLE_CHANGE_249022", event = EventType.EVENT_VARIABLE_CHANGE, source = "count_2", condition = "condition_EVENT_VARIABLE_CHANGE_249022", action = "action_EVENT_VARIABLE_CHANGE_249022" },
	{ name = "GADGET_STATE_CHANGE_249023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_249023", action = "action_EVENT_GADGET_STATE_CHANGE_249023" }
}

-- 变量
variables = {
	{ name = "count", value = 0, no_refresh = true },
	{ name = "count_2", value = 0, no_refresh = true }
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
		monsters = { 249012, 249013, 249014, 249015 },
		gadgets = { 249004, 249005, 249006, 249011 },
		regions = { 249016 },
		triggers = { "GADGET_STATE_CHANGE_249007", "GADGET_STATE_CHANGE_249008", "GADGET_STATE_CHANGE_249009", "VARIABLE_CHANGE_249010", "ENTER_REGION_249016", "ANY_MONSTER_DIE_249021", "VARIABLE_CHANGE_249022", "GADGET_STATE_CHANGE_249023" },
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
function condition_EVENT_GADGET_STATE_CHANGE_249007(context, evt)
	if 249004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_249007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133102008_3") then
	  return -1
	end
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_249008(context, evt)
	if 249005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_249008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133102008_5") then
	  return -1
	end
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_249009(context, evt)
	if 249006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_249009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133102008_4") then
	  return -1
	end
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_249010(context, evt)
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_249010(context, evt)
	-- 调用提示id为 31020605 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020605) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_249016(context, evt)
	if evt.param1 ~= 249016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_249016(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 249017, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 249018, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 249019, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 249020, delay_time = 0 }) then
	  return -1
	end
	
	-- 将configid为 249006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 249006, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_249021(context, evt)
	if evt.param1 == 249017 or evt.param1 == 249018 or evt.param1 == 249019 or evt.param1 == 249020 then
	    return true
	else
		return false
	end
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_249021(context, evt)
	-- 针对当前group内变量名为 "count_2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count_2", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_249022(context, evt)
	-- 判断变量"count_2"为4
	if ScriptLib.GetGroupVariableValue(context, "count_2") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_249022(context, evt)
	-- 将configid为 249006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 249006, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_249023(context, evt)
	if 249005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_249023(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 249011 }) then
		    return -1
		end
		
	
	return 0
end
