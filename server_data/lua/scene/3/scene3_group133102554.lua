--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 554001, monster_id = 21010501, pos = { x = 1057.9, y = 200.8, z = 175.5 }, rot = { x = 0.0, y = 131.8, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 554002, monster_id = 21010501, pos = { x = 1052.6, y = 200.8, z = 168.9 }, rot = { x = 0.0, y = 131.8, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 554003, monster_id = 21011001, pos = { x = 1053.5, y = 206.1, z = 179.9 }, rot = { x = 0.0, y = 283.5, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 554004, monster_id = 21010301, pos = { x = 1039.6, y = 200.8, z = 179.9 }, rot = { x = 0.0, y = 310.2, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 554005, monster_id = 21010301, pos = { x = 1043.9, y = 200.8, z = 180.2 }, rot = { x = 0.0, y = 360.0, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 554006, monster_id = 21010601, pos = { x = 1028.6, y = 200.0, z = 173.6 }, rot = { x = 0.0, y = 70.1, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 554007, monster_id = 21010601, pos = { x = 1030.7, y = 200.0, z = 179.2 }, rot = { x = 0.0, y = 85.6, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 554008, monster_id = 21020101, pos = { x = 1028.7, y = 200.0, z = 176.3 }, rot = { x = 0.0, y = 81.4, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 554019, monster_id = 21010501, pos = { x = 1055.5, y = 200.8, z = 171.2 }, rot = { x = 0.0, y = 131.8, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 554009, gadget_id = 70300077, pos = { x = 1066.5, y = 200.7, z = 180.1 }, rot = { x = 0.0, y = 41.6, z = 0.0 }, level = 1 },
	{ config_id = 554010, gadget_id = 70220013, pos = { x = 1066.5, y = 200.7, z = 180.3 }, rot = { x = 0.0, y = 310.9, z = 0.0 }, level = 1 },
	{ config_id = 554011, gadget_id = 70220013, pos = { x = 1077.7, y = 200.9, z = 201.7 }, rot = { x = 0.1, y = 358.8, z = 359.7 }, level = 1 },
	{ config_id = 554012, gadget_id = 70300089, pos = { x = 1036.9, y = 200.5, z = 181.2 }, rot = { x = 0.0, y = 115.8, z = 0.0 }, level = 1 },
	{ config_id = 554013, gadget_id = 70300089, pos = { x = 1043.7, y = 200.7, z = 183.6 }, rot = { x = 0.0, y = 138.8, z = 0.0 }, level = 1 },
	{ config_id = 554014, gadget_id = 70300088, pos = { x = 1062.3, y = 200.6, z = 171.6 }, rot = { x = 360.0, y = 225.4, z = 3.8 }, level = 1 },
	{ config_id = 554015, gadget_id = 70300088, pos = { x = 1059.2, y = 200.6, z = 168.8 }, rot = { x = 358.3, y = 234.8, z = 2.3 }, level = 1 },
	{ config_id = 554016, gadget_id = 70300088, pos = { x = 1056.4, y = 200.4, z = 166.4 }, rot = { x = 358.6, y = 234.0, z = 1.1 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_554017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_554017", action = "action_EVENT_ANY_MONSTER_DIE_554017" },
	{ name = "ANY_MONSTER_LIVE_554018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_554018", action = "action_EVENT_ANY_MONSTER_LIVE_554018" }
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
		monsters = { 554001, 554002, 554003, 554004, 554005, 554019 },
		gadgets = { 554009, 554010, 554011, 554012, 554013, 554014, 554015, 554016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_554017", "ANY_MONSTER_LIVE_554018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_554017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_554017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1043, y=200, z=180}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 554007, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 554008, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 554006, delay_time = 3 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_554018(context, evt)
	--判断死亡怪物的configid是否为 554001
	if evt.param1 ~= 554001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_554018(context, evt)
	-- 通知groupid为133102554中,configid为：554008的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 554008, 133102554) then
	  return -1
	end
	
	-- 通知groupid为133102554中,configid为：554006的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 554006, 133102554) then
	  return -1
	end
	
	-- 通知groupid为133102554中,configid为：554007的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 554007, 133102554) then
	  return -1
	end
	
	return 0
end
