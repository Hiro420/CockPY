--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1311, monster_id = 21010201, pos = { x = 1881.5, y = 195.8, z = -1548.1 }, rot = { x = 0.0, y = 175.9, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1312, monster_id = 21010201, pos = { x = 1876.1, y = 196.0, z = -1547.7 }, rot = { x = 0.0, y = 195.4, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1313, monster_id = 21020101, pos = { x = 1871.9, y = 196.3, z = -1546.6 }, rot = { x = 0.0, y = 199.0, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 0 },
	{ config_id = 1314, monster_id = 21010201, pos = { x = 1872.0, y = 196.6, z = -1548.8 }, rot = { x = 0.0, y = 70.0, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1315, monster_id = 21010201, pos = { x = 1881.0, y = 195.8, z = -1550.3 }, rot = { x = 0.0, y = 43.1, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1316, monster_id = 21010601, pos = { x = 1892.0, y = 197.5, z = -1533.5 }, rot = { x = 0.0, y = 203.1, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1317, monster_id = 21010601, pos = { x = 1893.9, y = 197.7, z = -1533.6 }, rot = { x = 0.0, y = 219.0, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1318, monster_id = 21020201, pos = { x = 1894.1, y = 197.5, z = -1536.3 }, rot = { x = 0.0, y = 230.0, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3238, gadget_id = 70220013, pos = { x = 1883.9, y = 195.8, z = -1546.5 }, rot = { x = 355.6, y = 328.3, z = 359.6 }, level = 1 },
	{ config_id = 3239, gadget_id = 70220013, pos = { x = 1867.5, y = 196.1, z = -1542.0 }, rot = { x = 5.6, y = 343.0, z = 3.0 }, level = 1 },
	{ config_id = 3241, gadget_id = 70300100, pos = { x = 1874.8, y = 196.1, z = -1549.2 }, rot = { x = 0.0, y = 152.3, z = 0.0 }, level = 1 },
	{ config_id = 3242, gadget_id = 70300100, pos = { x = 1881.4, y = 195.7, z = -1549.6 }, rot = { x = 0.0, y = 122.9, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_467", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_467", action = "action_EVENT_ANY_MONSTER_DIE_467" },
	{ name = "ANY_MONSTER_LIVE_468", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_468", action = "action_EVENT_ANY_MONSTER_LIVE_468" }
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
		monsters = { 1311, 1312, 1313, 1314, 1315 },
		gadgets = { 3238, 3239, 3241, 3242 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_467", "ANY_MONSTER_LIVE_468" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_467(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_467(context, evt)
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1317, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1318, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1316, delay_time = 3 }) then
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
function condition_EVENT_ANY_MONSTER_LIVE_468(context, evt)
	if 1644 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_468(context, evt)
	-- 通知groupid为133001306中,configid为：1318的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1318, 133001306) then
	  return -1
	end
	
	-- 通知groupid为133001306中,configid为：1316的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1316, 133001306) then
	  return -1
	end
	
	-- 通知groupid为133001306中,configid为：1317的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1317, 133001306) then
	  return -1
	end
	
	return 0
end
