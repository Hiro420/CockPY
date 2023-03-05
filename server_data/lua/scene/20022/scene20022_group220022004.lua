--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 21010301, pos = { x = 5.4, y = 42.0, z = 107.0 }, rot = { x = 0.0, y = 220.6, z = 0.0 }, level = 1, disableWander = true, affix = { 1002, 1006, 1007, 1008 }, isElite = true },
	{ config_id = 4002, monster_id = 21030101, pos = { x = 6.1, y = 42.1, z = 111.4 }, rot = { x = 0.0, y = 220.6, z = 0.0 }, level = 1, disableWander = true, affix = { 1002, 1006, 1007, 1008 }, isElite = true },
	{ config_id = 4008, monster_id = 21010301, pos = { x = 7.3, y = 42.0, z = 105.5 }, rot = { x = 0.0, y = 232.1, z = 0.0 }, level = 1, disableWander = true, affix = { 1002, 1006, 1007, 1008 }, isElite = true },
	{ config_id = 4009, monster_id = 21010301, pos = { x = 0.5, y = 42.0, z = 108.7 }, rot = { x = 0.0, y = 183.3, z = 360.0 }, level = 1, disableWander = true, affix = { 1002, 1006, 1007, 1008 }, isElite = true },
	{ config_id = 4010, monster_id = 21010301, pos = { x = 3.0, y = 42.0, z = 108.1 }, rot = { x = 0.0, y = 202.5, z = 0.0 }, level = 1, disableWander = true, affix = { 1002, 1006, 1007, 1008 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4003, gadget_id = 70350003, pos = { x = 54.8, y = 42.0, z = 120.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 4011, gadget_id = 70900201, pos = { x = 54.4, y = 44.1, z = 120.9 }, rot = { x = 0.0, y = 179.6, z = 0.0 }, level = 1 },
	{ config_id = 4012, gadget_id = 70220007, pos = { x = -5.6, y = 41.9, z = 118.6 }, rot = { x = 0.0, y = 4.9, z = 0.0 }, level = 1 },
	{ config_id = 4013, gadget_id = 70220013, pos = { x = -2.1, y = 42.0, z = 118.5 }, rot = { x = 0.0, y = 254.6, z = 0.0 }, level = 1 },
	{ config_id = 4014, gadget_id = 70220013, pos = { x = 4.6, y = 42.0, z = 73.2 }, rot = { x = 0.0, y = 265.5, z = 0.0 }, level = 1 },
	{ config_id = 4015, gadget_id = 70220013, pos = { x = 2.9, y = 42.0, z = 73.0 }, rot = { x = 0.0, y = 265.5, z = 0.0 }, level = 1 },
	{ config_id = 4016, gadget_id = 70220013, pos = { x = -9.5, y = 46.9, z = 60.0 }, rot = { x = 0.0, y = 272.4, z = 0.0 }, level = 1 },
	{ config_id = 4017, gadget_id = 70220013, pos = { x = 15.0, y = 42.0, z = 117.0 }, rot = { x = 0.0, y = 272.4, z = 0.0 }, level = 1 },
	{ config_id = 4018, gadget_id = 70220013, pos = { x = 15.3, y = 42.0, z = 118.9 }, rot = { x = 0.0, y = 297.7, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 6, shape = RegionShape.SPHERE, radius = 5, pos = { x = 61.4, y = 41.6, z = 121.1 } },
	{ config_id = 4004, shape = RegionShape.CUBIC, size = { x = 49.9, y = 27.4, z = 5.0 }, pos = { x = -4.3, y = 42.0, z = 85.3 } }
}

-- 触发器
triggers = {
	{ name = "CHALLENGE_SUCCESS_4", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_4" },
	{ name = "ENTER_REGION_6", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6", action = "action_EVENT_ENTER_REGION_6", forbid_guest = false },
	{ name = "ENTER_REGION_4004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4004", action = "action_EVENT_ENTER_REGION_4004", forbid_guest = false },
	{ name = "TIMER_EVENT_4005", event = EventType.EVENT_TIMER_EVENT, source = "Trigger", condition = "", action = "action_EVENT_TIMER_EVENT_4005" },
	{ name = "ANY_MONSTER_LIVE_4006", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4006", action = "action_EVENT_ANY_MONSTER_LIVE_4006" },
	{ name = "CHALLENGE_FAIL_4007", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4007" }
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
	suite = 2,
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
		gadgets = { 4003, 4012, 4013, 4014, 4015, 4016, 4017, 4018 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_4", "CHALLENGE_FAIL_4007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 4003, 4012, 4013, 4014, 4015, 4016, 4017, 4018 },
		regions = { 6, 4004 },
		triggers = { "CHALLENGE_SUCCESS_4", "ENTER_REGION_6", "ENTER_REGION_4004", "TIMER_EVENT_4005", "ANY_MONSTER_LIVE_4006", "CHALLENGE_FAIL_4007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_4(context, evt)
	-- 将configid为 4003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4003, GadgetState.GearStart) then
			return -1
		end 
	
	-- 创生gadget 4011
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4011 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6(context, evt)
	if evt.param1 ~= 6 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220022004, monsters = {}, gadgets = {4011} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4004(context, evt)
	if evt.param1 ~= 4004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4004(context, evt)
	-- 调用提示id为 200220201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200220201) then
		return -1
	end
	
	-- 延迟2秒后,向groupId为：220022004的对象,请求一次调用,并将string参数："Trigger" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220022004, "Trigger", 2) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_4005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4010, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4008, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4009, delay_time = 0 }) then
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=14, y=42, z=101}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4006(context, evt)
	if 4002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4006(context, evt)
	-- 创建编号为1001（该挑战的识别id),挑战内容为2004的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1001, 2004, 220022004, 5, 0, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220022004, suite = 1 }) then
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220022004, suite = 2 }) then
			return -1
		end
	
	return 0
end
