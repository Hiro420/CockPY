--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15, monster_id = 21010301, pos = { x = 90.1, y = 39.5, z = 129.4 }, rot = { x = 0.5, y = 87.0, z = 359.9 }, level = 1, disableWander = true, affix = { 1002, 1006, 1007, 1008 }, isElite = true, pose_id = 9012 },
	{ config_id = 16, monster_id = 21010301, pos = { x = 90.2, y = 39.5, z = 126.9 }, rot = { x = 0.0, y = 60.4, z = 0.0 }, level = 1, disableWander = true, affix = { 1002, 1006, 1007, 1008 }, isElite = true, pose_id = 9012 },
	{ config_id = 17, monster_id = 20010801, pos = { x = 119.9, y = 39.5, z = 130.4 }, rot = { x = 0.0, y = 55.3, z = 0.0 }, level = 1, disableWander = true, affix = { 1002, 1007 }, isElite = true },
	{ config_id = 18, monster_id = 20010801, pos = { x = 118.2, y = 39.6, z = 128.7 }, rot = { x = 0.0, y = 147.0, z = 0.0 }, level = 1, disableWander = true, affix = { 1002, 1007 }, isElite = true },
	{ config_id = 19, monster_id = 20010801, pos = { x = 119.4, y = 39.5, z = 128.1 }, rot = { x = 0.0, y = 318.1, z = 0.0 }, level = 1, disableWander = true, affix = { 1002, 1007 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6, gadget_id = 70320002, pos = { x = 93.9, y = 39.5, z = 129.8 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearAction1 },
	{ config_id = 7, gadget_id = 70350002, pos = { x = 173.9, y = 42.1, z = 120.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 8, gadget_id = 70310004, pos = { x = 148.4, y = 39.6, z = 120.9 }, rot = { x = 0.0, y = 289.4, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 63, gadget_id = 70320002, pos = { x = 122.0, y = 39.5, z = 130.2 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearAction1 },
	{ config_id = 69, gadget_id = 70320002, pos = { x = 124.1, y = 39.4, z = 130.2 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, state = GadgetState.GearAction1 }
}

-- 区域
regions = {
	{ config_id = 5001, shape = RegionShape.SPHERE, radius = 11.3, pos = { x = 71.8, y = 42.2, z = 121.1 } },
	{ config_id = 5002, shape = RegionShape.CUBIC, size = { x = 7.5, y = 12.9, z = 28.6 }, pos = { x = 111.5, y = 39.5, z = 122.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_5001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5001", action = "action_EVENT_ENTER_REGION_5001", forbid_guest = false },
	{ name = "ENTER_REGION_5002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5002", action = "action_EVENT_ENTER_REGION_5002", forbid_guest = false }
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
		monsters = { 15, 16, 17, 18, 19 },
		gadgets = { 6, 7, 8, 63, 69 },
		regions = { 5001, 5002 },
		triggers = { "ENTER_REGION_5001", "ENTER_REGION_5002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

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
	-- 调用提示id为 200220301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200220301) then
		return -1
	end
	
	-- 将configid为 63 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 63, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 6 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 69 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 69, GadgetState.GearStart) then
			return -1
		end 
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=71, y=42, z=121}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5002(context, evt)
	if evt.param1 ~= 5002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5002(context, evt)
	-- 调用提示id为 200220501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200220501) then
		return -1
	end
	
	return 0
end
