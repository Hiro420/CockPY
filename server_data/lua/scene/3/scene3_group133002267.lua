--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 955, monster_id = 21010501, pos = { x = 1786.2, y = 244.9, z = -657.0 }, rot = { x = 0.0, y = 338.2, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 956, monster_id = 21010501, pos = { x = 1786.8, y = 244.9, z = -659.3 }, rot = { x = 0.0, y = 20.8, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 957, monster_id = 21020101, pos = { x = 1782.8, y = 244.9, z = -659.6 }, rot = { x = 0.0, y = 78.6, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 0 },
	{ config_id = 958, monster_id = 21010901, pos = { x = 1786.6, y = 245.2, z = -665.3 }, rot = { x = 0.0, y = 2.1, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 959, monster_id = 21010901, pos = { x = 1787.2, y = 245.1, z = -663.0 }, rot = { x = 0.0, y = 18.2, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 960, monster_id = 21010601, pos = { x = 1762.0, y = 249.3, z = -663.9 }, rot = { x = 0.0, y = 91.4, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 961, monster_id = 21010601, pos = { x = 1762.2, y = 249.1, z = -662.4 }, rot = { x = 0.0, y = 64.3, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 962, monster_id = 21020201, pos = { x = 1764.8, y = 248.8, z = -660.9 }, rot = { x = 0.0, y = 123.4, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2240, gadget_id = 70220013, pos = { x = 1782.2, y = 244.9, z = -666.6 }, rot = { x = 0.0, y = 328.3, z = 0.0 }, level = 1 },
	{ config_id = 2241, gadget_id = 70220013, pos = { x = 1780.4, y = 244.9, z = -665.3 }, rot = { x = 0.0, y = 342.9, z = 0.0 }, level = 1 },
	{ config_id = 2248, gadget_id = 70300106, pos = { x = 1796.3, y = 246.2, z = -661.1 }, rot = { x = 0.0, y = 172.8, z = 0.0 }, level = 1 },
	{ config_id = 2249, gadget_id = 70300106, pos = { x = 1795.2, y = 246.0, z = -656.7 }, rot = { x = 0.0, y = 173.4, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_346", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_346", action = "action_EVENT_ANY_MONSTER_DIE_346" },
	{ name = "ANY_MONSTER_LIVE_347", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_347", action = "action_EVENT_ANY_MONSTER_LIVE_347" }
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
		monsters = { 955, 956, 957, 958, 959 },
		gadgets = { 2240, 2241, 2248, 2249 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_346", "ANY_MONSTER_LIVE_347" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_346(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_346(context, evt)
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 961, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 962, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 960, delay_time = 3 }) then
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
function condition_EVENT_ANY_MONSTER_LIVE_347(context, evt)
	if 1644 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_347(context, evt)
	-- 通知groupid为133002267中,configid为：962的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 962, 133002267) then
	  return -1
	end
	
	-- 通知groupid为133002267中,configid为：960的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 960, 133002267) then
	  return -1
	end
	
	-- 通知groupid为133002267中,configid为：961的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 961, 133002267) then
	  return -1
	end
	
	return 0
end
