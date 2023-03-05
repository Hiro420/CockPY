-- Trigger变量
local defs = {
	gadget_id_1 = 205,
	gadget_id_2 = 235,
	gadget_id_3 = 236,
	gadget_id_4 = 237,
	gadget_id_5 = 239
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1, monster_id = 21010301, pos = { x = -81.3, y = -15.4, z = 117.6 }, rot = { x = 0.0, y = 245.5, z = 0.0 }, level = 1, disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 56, gadget_id = 70350003, pos = { x = -102.9, y = -12.6, z = 125.8 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 195, gadget_id = 70220013, pos = { x = -74.9, y = -15.6, z = 128.9 }, rot = { x = 6.2, y = 76.6, z = 0.0 }, level = 1 },
	{ config_id = 196, gadget_id = 70220013, pos = { x = -76.6, y = -15.5, z = 130.2 }, rot = { x = 0.0, y = 343.3, z = 358.6 }, level = 1 },
	{ config_id = 201, gadget_id = 70220014, pos = { x = -74.7, y = -15.5, z = 127.3 }, rot = { x = 0.0, y = 227.9, z = 0.0 }, level = 1 },
	{ config_id = 202, gadget_id = 70220014, pos = { x = -85.9, y = -15.5, z = 130.3 }, rot = { x = 0.0, y = 144.0, z = 0.0 }, level = 1 },
	{ config_id = 203, gadget_id = 70220014, pos = { x = -86.7, y = -15.6, z = 129.0 }, rot = { x = 0.0, y = 150.6, z = 0.0 }, level = 1 },
	{ config_id = 205, gadget_id = 70211002, pos = { x = -81.6, y = -15.6, z = 129.4 }, rot = { x = 0.0, y = 180.1, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 235, gadget_id = 70220007, pos = { x = -92.5, y = -15.5, z = 101.6 }, rot = { x = 0.0, y = 15.0, z = 0.0 }, level = 1 },
	{ config_id = 236, gadget_id = 70220007, pos = { x = -90.3, y = -15.5, z = 99.3 }, rot = { x = 0.0, y = 274.3, z = 0.0 }, level = 1 },
	{ config_id = 237, gadget_id = 70220007, pos = { x = -92.3, y = -10.6, z = 96.8 }, rot = { x = 86.6, y = 175.8, z = 180.0 }, level = 1 },
	{ config_id = 238, gadget_id = 70211001, pos = { x = -94.3, y = -15.1, z = 98.5 }, rot = { x = 0.0, y = 46.4, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 239, gadget_id = 70220005, pos = { x = -90.2, y = -15.5, z = 103.3 }, rot = { x = 0.0, y = 33.3, z = 0.0 }, level = 1 },
	{ config_id = 242, gadget_id = 70220013, pos = { x = -72.1, y = -15.5, z = 103.4 }, rot = { x = 0.7, y = 13.1, z = 358.8 }, level = 1 },
	{ config_id = 243, gadget_id = 70220013, pos = { x = -71.1, y = -15.5, z = 105.3 }, rot = { x = 1.1, y = 34.7, z = 359.1 }, level = 1 },
	{ config_id = 244, gadget_id = 70220014, pos = { x = -70.6, y = -15.5, z = 106.7 }, rot = { x = 0.0, y = 144.0, z = 0.0 }, level = 1 },
	{ config_id = 245, gadget_id = 70220014, pos = { x = -73.6, y = -15.4, z = 102.9 }, rot = { x = 0.0, y = 144.0, z = 0.0 }, level = 1 },
	{ config_id = 269, gadget_id = 70220005, pos = { x = -92.5, y = -15.5, z = 103.8 }, rot = { x = 0.0, y = 44.1, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 15, shape = RegionShape.SPHERE, radius = 17.6, pos = { x = -126.8, y = -12.5, z = 124.9 } },
	{ config_id = 21, shape = RegionShape.SPHERE, radius = 5, pos = { x = -127.5, y = -12.2, z = 105.6 } },
	{ config_id = 42, shape = RegionShape.CUBIC, size = { x = 31.0, y = 21.0, z = 3.9 }, pos = { x = -83.8, y = -15.5, z = 106.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_15", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15", action = "action_EVENT_ENTER_REGION_15", trigger_count = 0, forbid_guest = false },
	{ name = "ENTER_REGION_21", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_21", action = "action_EVENT_ENTER_REGION_21", forbid_guest = false },
	{ name = "ANY_MONSTER_DIE_38", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_38", action = "action_EVENT_ANY_MONSTER_DIE_38" },
	{ name = "TIMER_EVENT_39", event = EventType.EVENT_TIMER_EVENT, source = "start", condition = "", action = "action_EVENT_TIMER_EVENT_39" },
	{ name = "ENTER_REGION_42", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_42", action = "action_EVENT_ENTER_REGION_42", trigger_count = 0, forbid_guest = false },
	{ name = "CLIENT_EXECUTE_43", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElementFlora", condition = "", action = "action_EVENT_CLIENT_EXECUTE_43", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_44", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_44", action = "action_EVENT_ANY_GADGET_DIE_44" }
}

-- 变量
variables = {
	{ name = "isoff", value = 0, no_refresh = false }
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
		monsters = { 1 },
		gadgets = { 56, 195, 196, 201, 202, 203, 205, 235, 236, 237, 238, 239, 242, 243, 244, 245, 269 },
		regions = { 15, 21, 42 },
		triggers = { "ENTER_REGION_15", "ENTER_REGION_21", "ANY_MONSTER_DIE_38", "TIMER_EVENT_39", "ENTER_REGION_42", "CLIENT_EXECUTE_43", "ANY_GADGET_DIE_44" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_15(context, evt)
	if evt.param1 ~= 15 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15(context, evt)
	-- 将configid为 56 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56, GadgetState.Default) then
			return -1
		end 
	
	-- 将本组内变量名为 "isoff" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isoff", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_21(context, evt)
	if evt.param1 ~= 21 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_21(context, evt)
	-- 将configid为 56 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_38(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-101, y=-6, z=124}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	
	
	-- 调用提示id为 10010101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10010101) then
		return -1
	end
	
	
	-- 延迟4秒后,向groupId为：220009002的对象,请求一次调用,并将string参数："start" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220009002, "start", 4) then
	  return -1
	
	end
	
	-- 解锁目标205
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = defs.gadget_id_1, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_39(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220009007, suite = 1 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_42(context, evt)
	if evt.param1 ~= 42 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"isoff"为1
	if ScriptLib.GetGroupVariableValue(context, "isoff") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_42(context, evt)
	-- 将configid为 56 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_43(context, evt)
	-- 针对groupid为 220009002 中该config对应的物件进行状态改变操作
	local this_gadget = ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid })
		--ScriptLib.PrintLog("config_id="..this_gadget)
	
		
	  ScriptLib.SetGadgetEnableInteract(context, 220009002, this_gadget, true)
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_44(context, evt)
	if defs.gadget_id_2 == evt.param1 then
		return true
	
	end
	
	if defs.gadget_id_3 == evt.param1 then
		return true
	end
	
	if defs.gadget_id_4 == evt.param1 then
		return true
	end
	
	if defs.gadget_id_5 == evt.param1 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_44(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220009008, suite = 1 }) then
			return -1
		end
	
	return 0
end
