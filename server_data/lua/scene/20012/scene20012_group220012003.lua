-- Trigger变量
local defs = {
	monster_id_1 = 3006,
	monster_id_2 = 3007,
	monster_id_3 = 3008,
	monster_id_4 = 3009
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21010501, pos = { x = -16.5, y = 50.2, z = 111.8 }, rot = { x = 0.0, y = 148.9, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 3002, monster_id = 21010501, pos = { x = -14.5, y = 50.2, z = 114.3 }, rot = { x = 0.0, y = 158.1, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 3003, monster_id = 21020101, pos = { x = -4.4, y = 42.0, z = 107.9 }, rot = { x = 0.0, y = 178.8, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 3004, monster_id = 21010201, pos = { x = -6.9, y = 42.0, z = 98.1 }, rot = { x = 0.0, y = 80.3, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 3005, monster_id = 21010201, pos = { x = -4.5, y = 42.0, z = 95.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 3006, monster_id = 21010301, pos = { x = 27.7, y = 42.0, z = 130.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3007, monster_id = 21010301, pos = { x = 27.6, y = 42.0, z = 131.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3008, monster_id = 21010201, pos = { x = 25.2, y = 42.0, z = 130.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3009, monster_id = 21010201, pos = { x = 24.9, y = 42.0, z = 131.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3010, gadget_id = 70220010, pos = { x = 5.8, y = 42.1, z = 109.1 }, rot = { x = 0.0, y = 187.2, z = 0.0 }, level = 1 },
	{ config_id = 3011, gadget_id = 70220010, pos = { x = 5.7, y = 42.0, z = 98.2 }, rot = { x = 0.0, y = 185.7, z = 0.0 }, level = 1 },
	{ config_id = 3012, gadget_id = 70220010, pos = { x = -4.5, y = 42.0, z = 98.3 }, rot = { x = 0.0, y = 158.7, z = 0.0 }, level = 1 },
	{ config_id = 3013, gadget_id = 70220004, pos = { x = -17.0, y = 42.0, z = 109.5 }, rot = { x = 0.0, y = 229.5, z = 0.0 }, level = 1 },
	{ config_id = 3014, gadget_id = 70220004, pos = { x = -13.3, y = 42.0, z = 109.4 }, rot = { x = 0.0, y = 102.1, z = 0.0 }, level = 1 },
	{ config_id = 3015, gadget_id = 70220004, pos = { x = -19.6, y = 44.2, z = 109.6 }, rot = { x = 270.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 3016, gadget_id = 70220004, pos = { x = -19.4, y = 47.5, z = 109.5 }, rot = { x = 270.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 3017, gadget_id = 70220004, pos = { x = -19.4, y = 50.5, z = 109.6 }, rot = { x = 270.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 3018, gadget_id = 70220004, pos = { x = -19.5, y = 50.8, z = 112.8 }, rot = { x = 270.0, y = 270.0, z = 0.0 }, level = 10 },
	{ config_id = 3019, gadget_id = 70220005, pos = { x = -15.6, y = 50.2, z = 113.7 }, rot = { x = 0.0, y = 14.7, z = 0.0 }, level = 10 },
	{ config_id = 3020, gadget_id = 70900201, pos = { x = 55.0, y = 44.2, z = 120.9 }, rot = { x = 0.0, y = 158.8, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 11, shape = RegionShape.SPHERE, radius = 5, pos = { x = 58.9, y = 42.0, z = 121.1 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_1", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1", action = "action_EVENT_ANY_MONSTER_DIE_1" },
	{ name = "ANY_MONSTER_DIE_10", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10", action = "action_EVENT_ANY_MONSTER_DIE_10" },
	{ name = "ENTER_REGION_11", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11", action = "action_EVENT_ENTER_REGION_11", forbid_guest = false }
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
	rand_suite = true,
	npcs = { }
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
		monsters = { 3001, 3002, 3003, 3004, 3005 },
		gadgets = { 3010, 3011, 3012, 3013, 3014, 3015, 3016, 3017, 3018, 3019 },
		regions = { 11 },
		triggers = { "ANY_MONSTER_DIE_1", "ANY_MONSTER_DIE_10", "ENTER_REGION_11" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 判断剩余怪物数量是否是4
	if ScriptLib.GetGroupMonsterCount(context) ~= 4 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_1, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_2, delay_time = 0.5 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_3, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_4, delay_time = 1.5 }) then
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-4, y=42, z=107}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 1005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1005) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10(context, evt)
	-- 改变指定group组220012004中， configid为17的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220012004, 17, GadgetState.GearStart) then
			return -1
		end 
	
	-- 创生gadget 3020
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3020 }) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（48，45，120），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=48, y=45, z=120}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11(context, evt)
	if evt.param1 ~= 11 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220012003, monsters = {}, gadgets = {3020} }) then
			return -1
		end
	
	return 0
end
