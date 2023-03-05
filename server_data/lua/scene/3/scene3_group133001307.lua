--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1319, monster_id = 21010501, pos = { x = 1757.6, y = 195.5, z = -1520.8 }, rot = { x = 0.0, y = 199.3, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 1320, monster_id = 21010501, pos = { x = 1753.9, y = 195.5, z = -1520.0 }, rot = { x = 0.0, y = 203.7, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 1322, monster_id = 21010301, pos = { x = 1762.9, y = 195.4, z = -1516.8 }, rot = { x = 0.0, y = 47.9, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1323, monster_id = 21010301, pos = { x = 1761.8, y = 195.4, z = -1519.0 }, rot = { x = 0.0, y = 49.8, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1324, monster_id = 21010601, pos = { x = 1773.1, y = 194.6, z = -1493.7 }, rot = { x = 0.0, y = 203.6, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1325, monster_id = 21010601, pos = { x = 1763.5, y = 194.6, z = -1494.7 }, rot = { x = 0.0, y = 187.2, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1326, monster_id = 21020101, pos = { x = 1767.6, y = 194.6, z = -1493.5 }, rot = { x = 0.0, y = 178.5, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 1327, monster_id = 21020201, pos = { x = 1748.2, y = 195.3, z = -1523.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3244, gadget_id = 70220013, pos = { x = 1762.9, y = 195.3, z = -1514.3 }, rot = { x = 0.0, y = 328.3, z = 0.0 }, level = 1 },
	{ config_id = 3245, gadget_id = 70300098, pos = { x = 1762.6, y = 195.4, z = -1517.9 }, rot = { x = 0.0, y = 342.9, z = 0.0 }, level = 1 },
	{ config_id = 3278, gadget_id = 70300106, pos = { x = 1752.5, y = 195.3, z = -1525.5 }, rot = { x = 0.0, y = 301.1, z = 0.0 }, level = 1 },
	{ config_id = 3349, gadget_id = 70300106, pos = { x = 1755.9, y = 194.8, z = -1527.3 }, rot = { x = 0.0, y = 289.1, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_469", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_469", action = "action_EVENT_ANY_MONSTER_DIE_469" },
	{ name = "ANY_MONSTER_LIVE_470", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_470", action = "action_EVENT_ANY_MONSTER_LIVE_470" }
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
		monsters = { 1319, 1320, 1322, 1323, 1327 },
		gadgets = { 3244, 3245, 3278, 3349 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_469", "ANY_MONSTER_LIVE_470" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_469(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_469(context, evt)
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1325, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1326, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1324, delay_time = 3 }) then
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
function condition_EVENT_ANY_MONSTER_LIVE_470(context, evt)
	if 1644 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_470(context, evt)
	-- 通知groupid为133001307中,configid为：1326的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1326, 133001307) then
	  return -1
	end
	
	-- 通知groupid为133001307中,configid为：1324的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1324, 133001307) then
	  return -1
	end
	
	-- 通知groupid为133001307中,configid为：1325的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1325, 133001307) then
	  return -1
	end
	
	return 0
end
