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
	{ config_id = 240, gadget_id = 70350002, pos = { x = 364.6, y = -20.2, z = 173.4 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 241, gadget_id = 70300015, pos = { x = 389.8, y = -21.4, z = 173.4 }, rot = { x = 0.0, y = 325.2, z = 0.0 }, level = 1 },
	{ config_id = 242, gadget_id = 70211001, pos = { x = 379.4, y = -21.5, z = 173.6 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 362, gadget_id = 70350003, pos = { x = 419.8, y = -21.5, z = 173.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 31, shape = RegionShape.SPHERE, radius = 9.13, pos = { x = 410.8, y = -21.5, z = 174.8 } },
	{ config_id = 40, shape = RegionShape.CUBIC, size = { x = 48.8, y = 18.0, z = 7.1 }, pos = { x = 440.7, y = -21.5, z = 173.9 } }
}

-- 触发器
triggers = {
	{ name = "DUNGEON_SETTLE_22", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_22", action = "action_EVENT_DUNGEON_SETTLE_22" },
	{ name = "ENTER_REGION_31", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_31", action = "action_EVENT_ENTER_REGION_31", forbid_guest = false },
	{ name = "ENTER_REGION_40", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_40", action = "action_EVENT_ENTER_REGION_40", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 240, 241, 362 },
		regions = { 31, 40 },
		triggers = { "ENTER_REGION_31", "ENTER_REGION_40" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_22(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_22(context, evt)
	-- 创生gadget 242
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 242 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_31(context, evt)
	if evt.param1 ~= 31 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_31(context, evt)
	-- 调用提示id为 1036001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1036001) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（389，-21，173），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=389, y=-21, z=173}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_40(context, evt)
	if evt.param1 ~= 40 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_40(context, evt)
	-- 将configid为 362 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 362, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
