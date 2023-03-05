-- Trigger变量
local defs = {
	gadget_id_1 = 193,
	gadget_id_2 = 1
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 50, monster_id = 20011301, pos = { x = 455.6, y = -28.5, z = 260.7 }, rot = { x = 0.0, y = 22.7, z = 0.0 }, level = 1, disableWander = true, affix = { 1002 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 193, gadget_id = 70350003, pos = { x = 485.9, y = -28.6, z = 266.3 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 194, gadget_id = 70350003, pos = { x = 440.3, y = -25.6, z = 246.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 195, gadget_id = 70360002, pos = { x = 488.8, y = -28.5, z = 269.6 }, rot = { x = 0.0, y = 135.2, z = 0.0 }, level = 1 },
	{ config_id = 197, gadget_id = 70220002, pos = { x = 470.5, y = -28.4, z = 267.5 }, rot = { x = 0.0, y = 339.6, z = 0.0 }, level = 1 },
	{ config_id = 247, gadget_id = 70220010, pos = { x = 447.9, y = -28.3, z = 266.1 }, rot = { x = 0.0, y = 91.1, z = 0.0 }, level = 1 },
	{ config_id = 248, gadget_id = 70220023, pos = { x = 458.1, y = -28.4, z = 265.7 }, rot = { x = 0.0, y = 52.1, z = 0.0 }, level = 1 },
	{ config_id = 365, gadget_id = 70380001, pos = { x = 433.3, y = -26.3, z = 222.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 9, start_route = false, persistent = true },
	{ config_id = 366, gadget_id = 70380001, pos = { x = 443.3, y = -26.3, z = 222.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 9, start_route = false },
	{ config_id = 389, gadget_id = 70211032, pos = { x = 440.5, y = -28.5, z = 266.2 }, rot = { x = 0.0, y = 88.0, z = 0.0 }, level = 1, chest_drop_id = 11010100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 390, gadget_id = 70220013, pos = { x = 444.6, y = -28.3, z = 248.7 }, rot = { x = 349.2, y = 186.3, z = 355.4 }, level = 1 },
	{ config_id = 391, gadget_id = 70220013, pos = { x = 466.1, y = -28.4, z = 283.3 }, rot = { x = 0.0, y = 0.2, z = 0.0 }, level = 1 },
	{ config_id = 392, gadget_id = 70220014, pos = { x = 464.7, y = -28.6, z = 283.9 }, rot = { x = 0.0, y = 216.0, z = 0.0 }, level = 1 },
	{ config_id = 393, gadget_id = 70220014, pos = { x = 443.9, y = -28.6, z = 284.1 }, rot = { x = 0.0, y = 302.0, z = 0.0 }, level = 1 },
	{ config_id = 394, gadget_id = 70220014, pos = { x = 438.3, y = -28.5, z = 278.5 }, rot = { x = 0.0, y = 229.7, z = 0.0 }, level = 1 },
	{ config_id = 395, gadget_id = 70220014, pos = { x = 445.9, y = -28.6, z = 284.4 }, rot = { x = 0.0, y = 54.2, z = 0.0 }, level = 1 },
	{ config_id = 398, gadget_id = 70220014, pos = { x = 464.3, y = -28.6, z = 248.6 }, rot = { x = 0.0, y = 175.5, z = 0.0 }, level = 1 },
	{ config_id = 401, gadget_id = 70220023, pos = { x = 450.4, y = -28.5, z = 261.0 }, rot = { x = 0.0, y = 281.5, z = 0.0 }, level = 1 },
	{ config_id = 402, gadget_id = 70220023, pos = { x = 452.7, y = -28.4, z = 265.7 }, rot = { x = 0.0, y = 317.0, z = 0.0 }, level = 1 },
	{ config_id = 403, gadget_id = 70220023, pos = { x = 449.7, y = -28.5, z = 271.0 }, rot = { x = 0.0, y = 148.3, z = 0.0 }, level = 1 },
	{ config_id = 404, gadget_id = 70220023, pos = { x = 454.6, y = -28.4, z = 270.6 }, rot = { x = 0.0, y = 133.3, z = 0.0 }, level = 1 },
	{ config_id = 405, gadget_id = 70220023, pos = { x = 455.6, y = -28.4, z = 261.5 }, rot = { x = 0.0, y = 310.4, z = 0.0 }, level = 1 },
	{ config_id = 417, gadget_id = 70211111, pos = { x = 431.5, y = -25.4, z = 222.2 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, drop_tag = "解谜中级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 418, gadget_id = 70380001, pos = { x = 433.1, y = -26.3, z = 211.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 10, persistent = true },
	{ config_id = 419, gadget_id = 70380001, pos = { x = 438.3, y = -26.3, z = 222.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 9, start_route = false },
	{ config_id = 420, gadget_id = 70900023, pos = { x = 438.1, y = -27.5, z = 226.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 421, gadget_id = 70900023, pos = { x = 442.6, y = -27.5, z = 226.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 422, gadget_id = 70900023, pos = { x = 442.9, y = -27.5, z = 217.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 423, gadget_id = 70900023, pos = { x = 438.1, y = -27.5, z = 217.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 424, gadget_id = 70900023, pos = { x = 433.3, y = -27.5, z = 217.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 425, gadget_id = 70900023, pos = { x = 442.8, y = -27.5, z = 212.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 426, gadget_id = 70900023, pos = { x = 438.1, y = -27.5, z = 212.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 427, gadget_id = 70900023, pos = { x = 433.3, y = -27.5, z = 212.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 428, gadget_id = 70900023, pos = { x = 442.8, y = -27.5, z = 231.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 429, gadget_id = 70900023, pos = { x = 438.1, y = -27.5, z = 231.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 21, shape = RegionShape.SPHERE, radius = 5, pos = { x = 476.0, y = -28.5, z = 266.3 } },
	{ config_id = 59, shape = RegionShape.SPHERE, radius = 5, pos = { x = 471.3, y = -28.5, z = 266.2 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_20", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20", action = "action_EVENT_ANY_MONSTER_DIE_20" },
	{ name = "ENTER_REGION_21", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_21", action = "action_EVENT_ENTER_REGION_21", trigger_count = 0, forbid_guest = false },
	{ name = "GADGET_CREATE_23", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_23", action = "action_EVENT_GADGET_CREATE_23" },
	{ name = "SELECT_OPTION_24", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_24", action = "action_EVENT_SELECT_OPTION_24", trigger_count = 0, forbid_guest = false },
	{ name = "SELECT_OPTION_25", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_25", action = "action_EVENT_SELECT_OPTION_25", trigger_count = 0, forbid_guest = false },
	{ name = "DUNGEON_SETTLE_33", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_33", action = "action_EVENT_DUNGEON_SETTLE_33" },
	{ name = "SPECIFIC_MONSTER_HP_CHANGE_36", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "50", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_36", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_36" },
	{ name = "ANY_GADGET_DIE_38", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_38", action = "action_EVENT_ANY_GADGET_DIE_38", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_57", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_57", action = "action_EVENT_ANY_MONSTER_DIE_57" },
	{ name = "ENTER_REGION_59", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59", action = "action_EVENT_ENTER_REGION_59", forbid_guest = false },
	{ name = "TIMER_EVENT_60", event = EventType.EVENT_TIMER_EVENT, source = "creatself", condition = "", action = "action_EVENT_TIMER_EVENT_60", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_65", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_65", action = "action_EVENT_ANY_GADGET_DIE_65" }
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
		monsters = { 50 },
		gadgets = { 193, 194, 195, 197, 247, 248, 365, 366, 389, 390, 391, 392, 393, 394, 395, 398, 401, 402, 403, 404, 405, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429 },
		regions = { 21, 59 },
		triggers = { "ANY_MONSTER_DIE_20", "ENTER_REGION_21", "GADGET_CREATE_23", "SELECT_OPTION_24", "SELECT_OPTION_25", "DUNGEON_SETTLE_33", "SPECIFIC_MONSTER_HP_CHANGE_36", "ANY_GADGET_DIE_38", "ANY_MONSTER_DIE_57", "ENTER_REGION_59", "TIMER_EVENT_60", "ANY_GADGET_DIE_65" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20(context, evt)
	-- 将configid为 194 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 194, GadgetState.GearStart) then
			return -1
		end 
	
	-- 解锁目标389
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 389, state = GadgetState.Default }) then
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
	-- 将configid为 193 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 193, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 195 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 195, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_23(context, evt)
	if 195 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_23(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_24(context, evt)
	-- 判断是gadgetid 195
	if 195 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_24(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_2 == evt.param2 then
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220008001, monsters = {}, gadgets = {370} }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_25(context, evt)
	-- 判断是gadgetid 195
	if 195 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_25(context, evt)
	-- 根据不同的选项做不同的操作
	if 1 == evt.param2 then
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 195, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_33(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_33(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220008001, monsters = {}, gadgets = {367} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_36(context, evt)
	--[[判断指定configid的怪物的血量小于%80时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 80 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_36(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220008012, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_38(context, evt)
	if 247 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_38(context, evt)
	-- 延迟24秒后,向groupId为：220008003的对象,请求一次调用,并将string参数："creatself" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220008003, "creatself", 24) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_57(context, evt)
	if 50 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_57(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220008012, suite = 1 }) then
			return -1
		end
	
	-- 创生gadget 365
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 365 }) then
		return -1
	end
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 365) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59(context, evt)
	if evt.param1 ~= 59 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59(context, evt)
	-- 触发镜头注目，注目位置为坐标（447，-28，266），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=447, y=-28, z=266}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_60(context, evt)
	-- 创生gadget 247
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 247 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_65(context, evt)
	if 247 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_65(context, evt)
	-- 调用提示id为 1010001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1010001) then
		return -1
	end
	
	return 0
end
