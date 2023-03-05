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
	{ config_id = 3001, gadget_id = 70350002, pos = { x = 176.7, y = 6.5, z = -48.2 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 3002, gadget_id = 70360002, pos = { x = 196.8, y = 2.9, z = -48.2 }, rot = { x = 0.0, y = 88.9, z = 0.0 }, level = 1 },
	{ config_id = 3003, gadget_id = 70360020, pos = { x = 196.6, y = 11.0, z = -63.5 }, rot = { x = 0.0, y = 88.5, z = 90.0 }, level = 1 },
	{ config_id = 3004, gadget_id = 70360016, pos = { x = 196.2, y = 6.5, z = -60.3 }, rot = { x = 0.0, y = 232.9, z = 0.0 }, level = 1 },
	{ config_id = 3005, gadget_id = 70360016, pos = { x = 196.2, y = 6.2, z = -56.5 }, rot = { x = 0.0, y = 232.9, z = 0.0 }, level = 1 },
	{ config_id = 3006, gadget_id = 70360016, pos = { x = 196.1, y = 6.2, z = -52.6 }, rot = { x = 0.0, y = 232.9, z = 0.0 }, level = 1 },
	{ config_id = 3007, gadget_id = 70360016, pos = { x = 200.5, y = 6.2, z = -52.6 }, rot = { x = 0.0, y = 232.9, z = 0.0 }, level = 1 },
	{ config_id = 3008, gadget_id = 70360020, pos = { x = 196.7, y = 10.9, z = -31.9 }, rot = { x = 0.0, y = 88.5, z = 270.0 }, level = 1 },
	{ config_id = 3009, gadget_id = 70360016, pos = { x = 196.7, y = 6.5, z = -35.8 }, rot = { x = 0.0, y = 232.9, z = 0.0 }, level = 1 },
	{ config_id = 3010, gadget_id = 70360016, pos = { x = 196.9, y = 6.2, z = -39.6 }, rot = { x = 0.0, y = 232.9, z = 0.0 }, level = 1 },
	{ config_id = 3011, gadget_id = 70360016, pos = { x = 197.1, y = 6.2, z = -43.3 }, rot = { x = 0.0, y = 232.9, z = 0.0 }, level = 1 },
	{ config_id = 3012, gadget_id = 70360016, pos = { x = 193.1, y = 6.2, z = -43.4 }, rot = { x = 0.0, y = 232.9, z = 0.0 }, level = 1 },
	{ config_id = 3013, gadget_id = 70380005, pos = { x = 196.8, y = 6.1, z = -47.7 }, rot = { x = 0.0, y = 195.5, z = 0.0 }, level = 1, route_id = 1016011, start_route = false },
	{ config_id = 3014, gadget_id = 70360019, pos = { x = 204.3, y = 6.2, z = -52.6 }, rot = { x = 0.0, y = 335.1, z = 0.0 }, level = 1 },
	{ config_id = 3015, gadget_id = 70360019, pos = { x = 188.4, y = 6.2, z = -43.3 }, rot = { x = 0.0, y = 335.1, z = 0.0 }, level = 1 },
	{ config_id = 3016, gadget_id = 70380001, pos = { x = 209.6, y = 1.8, z = -58.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 1016012, start_route = false },
	{ config_id = 3017, gadget_id = 70380001, pos = { x = 184.7, y = 1.9, z = -38.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 1016013, start_route = false },
	{ config_id = 3018, gadget_id = 70900202, pos = { x = 196.5, y = 11.6, z = -62.9 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1 },
	{ config_id = 3019, gadget_id = 70900202, pos = { x = 196.7, y = 11.6, z = -32.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3020, gadget_id = 70900201, pos = { x = 196.7, y = 4.4, z = -48.2 }, rot = { x = 0.0, y = 263.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 76, shape = RegionShape.CUBIC, size = { x = 10.0, y = 10.0, z = 20.0 }, pos = { x = 221.8, y = 10.9, z = -40.5 } },
	{ config_id = 3021, shape = RegionShape.CUBIC, size = { x = 10.0, y = 5.0, z = 30.0 }, pos = { x = 211.9, y = 6.6, z = -46.4 } }
}

-- 触发器
triggers = {
	{ name = "SELECT_OPTION_6", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6", action = "action_EVENT_SELECT_OPTION_6", forbid_guest = false },
	{ name = "GADGET_CREATE_25", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_25", action = "action_EVENT_GADGET_CREATE_25" },
	{ name = "GADGET_STATE_CHANGE_37", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37", action = "action_EVENT_GADGET_STATE_CHANGE_37" },
	{ name = "GADGET_STATE_CHANGE_38", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_38", action = "action_EVENT_GADGET_STATE_CHANGE_38" },
	{ name = "PLATFORM_REACH_POINT_39", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_39", action = "action_EVENT_PLATFORM_REACH_POINT_39", trigger_count = 0 },
	{ name = "PLATFORM_REACH_POINT_70", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_70", action = "action_EVENT_PLATFORM_REACH_POINT_70", trigger_count = 0 },
	{ name = "ENTER_REGION_76", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_76", action = "action_EVENT_ENTER_REGION_76", forbid_guest = false },
	{ name = "TIMER_EVENT_77", event = EventType.EVENT_TIMER_EVENT, source = "Hints", condition = "", action = "action_EVENT_TIMER_EVENT_77" },
	{ name = "ENTER_REGION_3021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3021", action = "action_EVENT_ENTER_REGION_3021" }
}

-- 变量
variables = {
	{ name = "Key", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 1,
	rand_suite = true
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
		gadgets = { 3001, 3002, 3003, 3004, 3005, 3006, 3007, 3008, 3009, 3010, 3011, 3012, 3013, 3014, 3015, 3016, 3017 },
		regions = { 76, 3021 },
		triggers = { "SELECT_OPTION_6", "GADGET_CREATE_25", "GADGET_STATE_CHANGE_37", "GADGET_STATE_CHANGE_38", "PLATFORM_REACH_POINT_39", "PLATFORM_REACH_POINT_70", "ENTER_REGION_76", "TIMER_EVENT_77", "ENTER_REGION_3021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_6(context, evt)
	-- 判断是gadgetid 3002 option_id 1
	if 3002 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 3002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 删除指定group： 201016003 ；指定config：3002；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201016003, 3002, 1) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（177，10，-48），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=177, y=10, z=-48}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201016003, monsters = {}, gadgets = {3020} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_25(context, evt)
	if 3002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_25(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_37(context, evt)
	if 3008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_37(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3013) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3017) then
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201016003, monsters = {}, gadgets = {3019} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_38(context, evt)
	if 3003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_38(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3013) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3016) then
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201016003, monsters = {}, gadgets = {3018} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_39(context, evt)
	-- 判断是gadgetid 为 3013的移动平台，是否到达了1016011 的路线中的 1 点
	
	if 3013 ~= evt.param1 then
	  return false
	end
	
	if 1016011 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"Key"为1
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_39(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 3013) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_70(context, evt)
	-- 判断是gadgetid 为 3013的移动平台，是否到达了1016011 的路线中的 2 点
	
	if 3013 ~= evt.param1 then
	  return false
	end
	
	if 1016011 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_70(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 3013) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_76(context, evt)
	if evt.param1 ~= 76 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_76(context, evt)
	-- 创建id为3020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3020 }) then
	  return -1
	end
	
	-- 延迟4秒后,向groupId为：201016003的对象,请求一次调用,并将string参数："Hints" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201016003, "Hints", 4) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_77(context, evt)
	-- 创建id为3018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3018 }) then
	  return -1
	end
	
	-- 创建id为3019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3019 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3021(context, evt)
	if evt.param1 ~= 3021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3021(context, evt)
	-- 调用提示id为 200050501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200050501) then
		return -1
	end
	
	return 0
end
