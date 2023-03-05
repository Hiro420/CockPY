--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1638, monster_id = 21010501, pos = { x = 2519.3, y = 202.9, z = -1122.4 }, rot = { x = 0.0, y = 338.2, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 1640, monster_id = 21010501, pos = { x = 2516.7, y = 202.7, z = -1120.1 }, rot = { x = 0.0, y = 128.9, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 1653, monster_id = 21020201, pos = { x = 2504.6, y = 203.0, z = -1136.0 }, rot = { x = 0.0, y = 70.8, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true },
	{ config_id = 1654, monster_id = 21010201, pos = { x = 2510.5, y = 202.5, z = -1134.1 }, rot = { x = 0.0, y = 337.4, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1655, monster_id = 21010201, pos = { x = 2516.4, y = 202.5, z = -1132.4 }, rot = { x = 0.0, y = 351.9, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1656, monster_id = 21010601, pos = { x = 2525.9, y = 204.8, z = -1146.0 }, rot = { x = 0.0, y = 32.3, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1657, monster_id = 21010601, pos = { x = 2516.3, y = 204.4, z = -1147.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1658, monster_id = 21020101, pos = { x = 2520.4, y = 204.8, z = -1145.8 }, rot = { x = 0.0, y = 357.8, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4264, gadget_id = 70220013, pos = { x = 2506.1, y = 202.5, z = -1127.8 }, rot = { x = 0.0, y = 328.3, z = 0.0 }, level = 1 },
	{ config_id = 4275, gadget_id = 70220013, pos = { x = 2507.1, y = 202.2, z = -1125.0 }, rot = { x = 7.3, y = 342.9, z = 359.6 }, level = 1 },
	{ config_id = 4277, gadget_id = 70300100, pos = { x = 2514.1, y = 202.5, z = -1129.7 }, rot = { x = 0.0, y = 152.3, z = 0.0 }, level = 1 },
	{ config_id = 4278, gadget_id = 70300100, pos = { x = 2508.9, y = 202.5, z = -1130.6 }, rot = { x = 0.0, y = 122.9, z = 0.0 }, level = 1 },
	{ config_id = 4454, gadget_id = 70300098, pos = { x = 2518.3, y = 202.8, z = -1121.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_569", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_569", action = "action_EVENT_ANY_MONSTER_DIE_569" },
	{ name = "ANY_MONSTER_LIVE_574", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_574", action = "action_EVENT_ANY_MONSTER_LIVE_574" }
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
		monsters = { 1638, 1640, 1653, 1654, 1655 },
		gadgets = { 4264, 4275, 4277, 4278, 4454 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_569", "ANY_MONSTER_LIVE_574" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_569(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_569(context, evt)
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1657, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1658, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1656, delay_time = 3 }) then
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2510, y=194, z=-1141}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_574(context, evt)
	if 1656 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_574(context, evt)
	-- 通知groupid为133003474中,configid为：1656的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1656, 133003474) then
	  return -1
	end
	
	-- 通知groupid为133003474中,configid为：1657的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1657, 133003474) then
	  return -1
	end
	
	-- 通知groupid为133003474中,configid为：1658的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1658, 133003474) then
	  return -1
	end
	
	return 0
end
