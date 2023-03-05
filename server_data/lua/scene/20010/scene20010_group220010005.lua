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
	{ config_id = 34, gadget_id = 70360016, pos = { x = 370.5, y = -30.6, z = 14.3 }, rot = { x = 0.0, y = 99.1, z = 90.0 }, level = 1 },
	{ config_id = 35, gadget_id = 70360016, pos = { x = 374.1, y = -28.5, z = 17.2 }, rot = { x = 0.3, y = 3.3, z = 89.5 }, level = 1 },
	{ config_id = 36, gadget_id = 70360016, pos = { x = 374.1, y = -28.6, z = 20.4 }, rot = { x = 0.3, y = 3.3, z = 89.5 }, level = 1 },
	{ config_id = 39, gadget_id = 70360016, pos = { x = 374.5, y = -27.6, z = 28.2 }, rot = { x = 0.3, y = 3.3, z = 89.5 }, level = 1 },
	{ config_id = 40, gadget_id = 70360019, pos = { x = 374.2, y = -27.5, z = 32.8 }, rot = { x = 0.0, y = 0.0, z = 90.0 }, level = 1 },
	{ config_id = 41, gadget_id = 70350003, pos = { x = 374.9, y = -34.4, z = 32.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 189, gadget_id = 70900202, pos = { x = 387.0, y = -31.2, z = 16.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 199, gadget_id = 70900202, pos = { x = 373.4, y = -26.9, z = 32.8 }, rot = { x = 0.0, y = 86.3, z = 0.0 }, level = 1 },
	{ config_id = 5202, gadget_id = 70360016, pos = { x = 374.2, y = -28.6, z = 24.1 }, rot = { x = 0.3, y = 3.3, z = 89.5 }, level = 1 },
	{ config_id = 5205, gadget_id = 70360016, pos = { x = 373.6, y = -30.3, z = 14.8 }, rot = { x = 0.0, y = 99.1, z = 90.0 }, level = 1 },
	{ config_id = 5206, gadget_id = 70360016, pos = { x = 370.5, y = -34.6, z = 15.8 }, rot = { x = 359.7, y = 60.0, z = 0.7 }, level = 1 },
	{ config_id = 5208, gadget_id = 70360016, pos = { x = 368.1, y = -34.6, z = 18.7 }, rot = { x = 0.5, y = 60.0, z = 0.3 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 47, shape = RegionShape.CUBIC, size = { x = 2.0, y = 5.0, z = 14.0 }, pos = { x = 361.1, y = -32.2, z = 32.9 } },
	{ config_id = 5001, shape = RegionShape.CUBIC, size = { x = 10.0, y = 5.0, z = 15.0 }, pos = { x = 365.7, y = -34.5, z = 31.8 } }
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_8", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8", action = "action_EVENT_GADGET_STATE_CHANGE_8" },
	{ name = "ENTER_REGION_47", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_47", action = "action_EVENT_ENTER_REGION_47", forbid_guest = false },
	{ name = "ENTER_REGION_5001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5001", action = "action_EVENT_ENTER_REGION_5001" }
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
		-- description = ,
		monsters = { },
		gadgets = { 34, 35, 36, 39, 40, 41, 5202, 5205, 5206, 5208 },
		regions = { 47, 5001 },
		triggers = { "GADGET_STATE_CHANGE_8", "ENTER_REGION_47", "ENTER_REGION_5001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8(context, evt)
	if 40 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8(context, evt)
	-- 将configid为 41 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41, GadgetState.GearStart) then
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220010005, monsters = {}, gadgets = {199} }) then
			return -1
		end
	
	-- 创建id为189的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 189 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_47(context, evt)
	if evt.param1 ~= 47 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_47(context, evt)
	-- 触发镜头注目，注目位置为坐标（374，-27，32），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=374, y=-27, z=32}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220010001, monsters = {}, gadgets = {1020} }) then
			return -1
		end
	
	-- 创建id为199的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 199 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5001(context, evt)
	if evt.param1 ~= 5001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5001(context, evt)
	-- 调用提示id为 200050502 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200050502) then
		return -1
	end
	
	return 0
end
