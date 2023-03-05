--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 14011, monster_id = 21010301, pos = { x = 293.5, y = 42.1, z = 24.0 }, rot = { x = 0.0, y = 131.5, z = 0.0 }, level = 1 },
	{ config_id = 14012, monster_id = 21010301, pos = { x = 290.5, y = 42.4, z = -18.5 }, rot = { x = 0.0, y = 63.8, z = 0.0 }, level = 1 },
	{ config_id = 14013, monster_id = 21010301, pos = { x = 293.5, y = 42.9, z = -21.7 }, rot = { x = 0.0, y = 32.4, z = 0.0 }, level = 1 },
	{ config_id = 14014, monster_id = 21010301, pos = { x = 293.2, y = 42.1, z = 25.8 }, rot = { x = 0.0, y = 131.5, z = 0.0 }, level = 1 },
	{ config_id = 14015, monster_id = 23020101, pos = { x = 294.1, y = 42.2, z = 4.0 }, rot = { x = 0.0, y = 267.6, z = 0.0 }, level = 1, affix = { 1008, 1018 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 14004, gadget_id = 70220014, pos = { x = 265.6, y = 42.1, z = -23.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 14005, gadget_id = 70220014, pos = { x = 266.5, y = 42.1, z = -27.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 14006, gadget_id = 70211001, pos = { x = 265.8, y = 42.1, z = -25.0 }, rot = { x = 0.0, y = 91.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 14007, gadget_id = 70220013, pos = { x = 267.0, y = 42.1, z = -22.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 14008, gadget_id = 70220013, pos = { x = 268.8, y = 42.1, z = -22.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 14016, gadget_id = 70350004, pos = { x = 265.3, y = 41.9, z = 3.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 14017, gadget_id = 70350004, pos = { x = 296.2, y = 42.3, z = 4.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 14018, gadget_id = 70350004, pos = { x = 301.8, y = 42.3, z = 4.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 14019, gadget_id = 70350004, pos = { x = 298.9, y = 42.3, z = 7.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 14020, gadget_id = 70350004, pos = { x = 299.1, y = 42.3, z = 0.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 14021, gadget_id = 70350004, pos = { x = 281.9, y = 42.3, z = 21.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 14022, gadget_id = 70350004, pos = { x = 294.1, y = 42.2, z = 21.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 14023, gadget_id = 70350004, pos = { x = 306.5, y = 40.2, z = 21.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 14024, gadget_id = 70350004, pos = { x = 306.5, y = 40.1, z = -13.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 14025, gadget_id = 70350004, pos = { x = 294.3, y = 42.2, z = -13.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 14026, gadget_id = 70350004, pos = { x = 281.9, y = 42.3, z = -13.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 14027, gadget_id = 70220014, pos = { x = 265.6, y = 42.1, z = -26.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 16, shape = RegionShape.SPHERE, radius = 3.1, pos = { x = 261.5, y = 40.4, z = 4.0 } },
	{ config_id = 17, shape = RegionShape.SPHERE, radius = 21.2, pos = { x = 290.6, y = 42.1, z = 3.5 } },
	{ config_id = 56, shape = RegionShape.SPHERE, radius = 3.1, pos = { x = 258.6, y = 21.8, z = 3.7 } },
	{ config_id = 14001, shape = RegionShape.SPHERE, radius = 2.1, pos = { x = 299.0, y = 44.2, z = 4.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_16", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16", action = "action_EVENT_ENTER_REGION_16", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_17", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17", action = "action_EVENT_ENTER_REGION_17", forbid_guest = false },
	{ name = "ANY_MONSTER_DIE_19", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19", action = "action_EVENT_ANY_MONSTER_DIE_19" },
	{ name = "ENTER_REGION_56", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_56", action = "action_EVENT_ENTER_REGION_56", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_14001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14001", action = "action_EVENT_ENTER_REGION_14001", trigger_count = 0, forbid_guest = false },
	{ name = "TIMER_EVENT_14002", event = EventType.EVENT_TIMER_EVENT, source = "delay_open", condition = "", action = "action_EVENT_TIMER_EVENT_14002" },
	{ name = "TIMER_EVENT_14003", event = EventType.EVENT_TIMER_EVENT, source = "delay_look", condition = "", action = "action_EVENT_TIMER_EVENT_14003" },
	{ name = "GADGET_STATE_CHANGE_14010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14010", action = "action_EVENT_GADGET_STATE_CHANGE_14010" }
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
		gadgets = { 14004, 14005, 14006, 14007, 14008, 14016, 14017, 14018, 14019, 14020, 14021, 14022, 14023, 14024, 14025, 14026, 14027 },
		regions = { 16, 17, 56, 14001 },
		triggers = { "ENTER_REGION_16", "ENTER_REGION_17", "ANY_MONSTER_DIE_19", "ENTER_REGION_56", "ENTER_REGION_14001", "TIMER_EVENT_14002", "TIMER_EVENT_14003", "GADGET_STATE_CHANGE_14010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_16(context, evt)
	if evt.param1 ~= 16 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16(context, evt)
	-- 将configid为 14016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14016, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17(context, evt)
	if evt.param1 ~= 17 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17(context, evt)
	-- 将configid为 14016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14016, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 14017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14017, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 14018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14018, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 14019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14019, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 14020 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14020, GadgetState.Default) then
			return -1
		end 
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=291, y=43, z=4}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 200230201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200230201) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 14015, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_19(context, evt)
	if 14015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "220023014") then
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：220023014的对象,请求一次调用,并将string参数："delay_open" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220023014, "delay_open", 3) then
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：220023014的对象,请求一次调用,并将string参数："delay_look" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220023014, "delay_look", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_56(context, evt)
	if evt.param1 ~= 56 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_56(context, evt)
	-- 将configid为 14016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14016, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14001(context, evt)
	if evt.param1 ~= 14001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14001(context, evt)
	-- 将configid为 14017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14017, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 14018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14018, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 14019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14019, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 14020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14020, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_14002(context, evt)
	-- 将configid为 14017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14017, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 14018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14018, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 14019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14019, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 14020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14020, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_14003(context, evt)
	-- 触发镜头注目，注目位置为坐标（298，44，4），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=298, y=44, z=4}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14010(context, evt)
	if 14006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14010(context, evt)
	-- 将configid为 14026 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14026, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
