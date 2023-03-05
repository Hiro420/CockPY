--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 37001, monster_id = 25020201, pos = { x = -112.8, y = 0.5, z = -85.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 37002, monster_id = 25020201, pos = { x = -123.6, y = 0.5, z = -85.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 37003, monster_id = 25010201, pos = { x = -125.2, y = 0.5, z = -77.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 37004, monster_id = 25010201, pos = { x = -114.5, y = 0.5, z = -77.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 37005, monster_id = 25040201, pos = { x = -120.4, y = 0.5, z = -80.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 37012, monster_id = 25030201, pos = { x = -118.1, y = 0.5, z = -68.0 }, rot = { x = 0.0, y = 203.6, z = 0.0 }, level = 1 },
	{ config_id = 37013, monster_id = 25010201, pos = { x = -115.9, y = 0.5, z = -67.1 }, rot = { x = 0.0, y = 203.6, z = 0.0 }, level = 1 },
	{ config_id = 37014, monster_id = 25040201, pos = { x = -114.6, y = 0.5, z = -68.9 }, rot = { x = 0.0, y = 203.6, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 37006, gadget_id = 70300105, pos = { x = -123.6, y = 0.5, z = -89.0 }, rot = { x = 0.0, y = 265.9, z = 0.0 }, level = 1 },
	{ config_id = 37007, gadget_id = 70300094, pos = { x = -116.5, y = 0.5, z = -89.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 37008, gadget_id = 70300094, pos = { x = -128.0, y = 0.5, z = -85.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 37009, gadget_id = 70300093, pos = { x = -110.7, y = 0.5, z = -81.4 }, rot = { x = 0.0, y = 321.5, z = 0.0 }, level = 1 },
	{ config_id = 37010, gadget_id = 70310006, pos = { x = -118.6, y = 0.5, z = -83.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_37011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_37011", action = "action_EVENT_ANY_MONSTER_DIE_37011" },
	{ name = "ANY_MONSTER_LIVE_37015", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_37015", action = "action_EVENT_ANY_MONSTER_LIVE_37015" }
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
		monsters = { 37001, 37002, 37003, 37004, 37005 },
		gadgets = { 37006, 37007, 37008, 37009, 37010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_37011", "ANY_MONSTER_LIVE_37015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_37011(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_37011(context, evt)
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 37012, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 37013, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 37014, delay_time = 3 }) then
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 0, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_37015(context, evt)
	if 37012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_37015(context, evt)
	-- 通知groupid为250015037中,configid为：37012的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 37012, 250015037) then
	  return -1
	end
	
	-- 通知groupid为250015037中,configid为：37013的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 37013, 250015037) then
	  return -1
	end
	
	-- 通知groupid为250015037中,configid为：37014的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 37014, 250015037) then
	  return -1
	end
	
	return 0
end
