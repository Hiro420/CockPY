--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 355001, monster_id = 21010501, pos = { x = 1558.1, y = 232.0, z = 797.8 }, rot = { x = 0.0, y = 338.2, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 355002, monster_id = 21010501, pos = { x = 1554.4, y = 231.8, z = 798.6 }, rot = { x = 0.0, y = 20.8, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 355003, monster_id = 21010501, pos = { x = 1551.2, y = 231.6, z = 799.1 }, rot = { x = 0.0, y = 16.0, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 355004, monster_id = 21010301, pos = { x = 1549.5, y = 231.4, z = 794.5 }, rot = { x = 0.0, y = 48.2, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 355005, monster_id = 21010301, pos = { x = 1556.6, y = 232.0, z = 792.7 }, rot = { x = 0.0, y = 18.2, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 355006, monster_id = 21010601, pos = { x = 1566.4, y = 233.4, z = 791.7 }, rot = { x = 0.0, y = 32.3, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 355007, monster_id = 21010601, pos = { x = 1557.4, y = 233.2, z = 788.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 355008, monster_id = 21020101, pos = { x = 1560.7, y = 233.2, z = 790.9 }, rot = { x = 0.0, y = 46.1, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 355009, gadget_id = 70300077, pos = { x = 1559.0, y = 231.4, z = 805.9 }, rot = { x = 0.0, y = 72.7, z = 0.0 }, level = 1 },
	{ config_id = 355010, gadget_id = 70220013, pos = { x = 1559.2, y = 231.4, z = 806.2 }, rot = { x = 0.0, y = 328.3, z = 0.0 }, level = 1 },
	{ config_id = 355011, gadget_id = 70220013, pos = { x = 1549.2, y = 231.2, z = 806.2 }, rot = { x = 0.0, y = 342.9, z = 0.0 }, level = 1 },
	{ config_id = 355012, gadget_id = 70300089, pos = { x = 1549.7, y = 231.5, z = 796.0 }, rot = { x = 0.0, y = 99.9, z = 0.0 }, level = 1 },
	{ config_id = 355013, gadget_id = 70300089, pos = { x = 1556.7, y = 231.4, z = 794.4 }, rot = { x = 0.0, y = 122.9, z = 0.0 }, level = 1 },
	{ config_id = 355014, gadget_id = 70300088, pos = { x = 1556.7, y = 231.3, z = 805.9 }, rot = { x = 359.5, y = 97.2, z = 0.0 }, level = 1 },
	{ config_id = 355015, gadget_id = 70300088, pos = { x = 1552.4, y = 231.3, z = 805.4 }, rot = { x = 0.0, y = 100.6, z = 0.0 }, level = 1 },
	{ config_id = 355016, gadget_id = 70300088, pos = { x = 1546.8, y = 231.4, z = 805.5 }, rot = { x = 0.0, y = 61.7, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_355017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_355017", action = "action_EVENT_ANY_MONSTER_DIE_355017" },
	{ name = "ANY_MONSTER_LIVE_355018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_355018", action = "action_EVENT_ANY_MONSTER_LIVE_355018" }
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
		monsters = { 355001, 355002, 355003, 355004, 355005 },
		gadgets = { 355009, 355010, 355011, 355012, 355013, 355014, 355015, 355016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_355017", "ANY_MONSTER_LIVE_355018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_355017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_355017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1552, y=231, z=800}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 355007, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 355008, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 355006, delay_time = 3 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_355018(context, evt)
	--判断死亡怪物的configid是否为 355001
	if evt.param1 ~= 355001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_355018(context, evt)
	-- 通知groupid为133102355中,configid为：355008的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 355008, 133102355) then
	  return -1
	end
	
	-- 通知groupid为133102355中,configid为：355006的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 355006, 133102355) then
	  return -1
	end
	
	-- 通知groupid为133102355中,configid为：355007的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 355007, 133102355) then
	  return -1
	end
	
	return 0
end
