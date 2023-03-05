--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 61, monster_id = 20011001, pos = { x = 515.7, y = -65.9, z = 235.2 }, rot = { x = 0.0, y = 175.4, z = 0.0 }, level = 1 },
	{ config_id = 63, monster_id = 20011001, pos = { x = 519.5, y = -65.9, z = 235.2 }, rot = { x = 0.0, y = 199.5, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 182, gadget_id = 70320002, pos = { x = 520.9, y = -66.0, z = 246.1 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 243, gadget_id = 70211001, pos = { x = 517.6, y = -65.9, z = 235.6 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 430, gadget_id = 70320002, pos = { x = 514.0, y = -66.0, z = 224.4 }, rot = { x = 0.0, y = 90.1, z = 0.0 }, level = 4, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 29, shape = RegionShape.SPHERE, radius = 7.9, pos = { x = 517.8, y = -68.0, z = 261.2 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_29", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_29", action = "action_EVENT_ENTER_REGION_29", forbid_guest = false },
	{ name = "GADGET_STATE_CHANGE_46", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46", action = "action_EVENT_GADGET_STATE_CHANGE_46" },
	{ name = "GADGET_STATE_CHANGE_47", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_47", action = "action_EVENT_GADGET_STATE_CHANGE_47" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 182, 243, 430 },
		regions = { 29 },
		triggers = { "ENTER_REGION_29", "GADGET_STATE_CHANGE_46", "GADGET_STATE_CHANGE_47" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_29(context, evt)
	if evt.param1 ~= 29 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_29(context, evt)
	-- 调用提示id为 1009001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1009001) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（500，-62，266），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=500, y=-62, z=266}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_46(context, evt)
	if 181 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46(context, evt)
	-- 解锁目标243
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 243, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_47(context, evt)
	if 243 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_47(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 61, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 63, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
