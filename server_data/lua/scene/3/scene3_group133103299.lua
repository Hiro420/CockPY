--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 299001, monster_id = 25020201, pos = { x = 765.1, y = 294.2, z = 1427.5 }, rot = { x = 0.0, y = 182.7, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 299002, monster_id = 25020201, pos = { x = 759.4, y = 294.6, z = 1425.4 }, rot = { x = 0.0, y = 142.4, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 299003, monster_id = 25010201, pos = { x = 765.7, y = 293.7, z = 1421.5 }, rot = { x = 0.0, y = 142.4, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 299004, monster_id = 25010201, pos = { x = 760.4, y = 293.2, z = 1413.6 }, rot = { x = 0.0, y = 142.4, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 299005, monster_id = 25040201, pos = { x = 761.2, y = 293.3, z = 1420.7 }, rot = { x = 0.0, y = 142.4, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 299006, monster_id = 25030201, pos = { x = 779.7, y = 297.2, z = 1408.5 }, rot = { x = 0.0, y = 280.6, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 299007, monster_id = 25020201, pos = { x = 778.6, y = 297.4, z = 1406.2 }, rot = { x = 0.0, y = 305.9, z = 0.0 }, level = 1, drop_tag = "盗宝团" },
	{ config_id = 299008, monster_id = 25010201, pos = { x = 780.2, y = 296.7, z = 1411.2 }, rot = { x = 0.0, y = 263.5, z = 0.0 }, level = 1, drop_tag = "盗宝团" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_299009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_299009", action = "action_EVENT_ANY_MONSTER_DIE_299009" },
	{ name = "ANY_MONSTER_LIVE_299010", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_299010", action = "action_EVENT_ANY_MONSTER_LIVE_299010" }
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
		monsters = { 299001, 299002, 299003, 299004, 299005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_299009", "ANY_MONSTER_LIVE_299010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_299009(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_299009(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 299006, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 299007, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 299008, delay_time = 2 }) then
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=761, y=293, z=1415}
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
function condition_EVENT_ANY_MONSTER_LIVE_299010(context, evt)
	if 299006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_299010(context, evt)
	-- 通知groupid为133103299中,configid为：299006的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 299006, 133103299) then
	  return -1
	end
	
	-- 通知groupid为133103299中,configid为：299007的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 299007, 133103299) then
	  return -1
	end
	
	-- 通知groupid为133103299中,configid为：299008的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 299008, 133103299) then
	  return -1
	end
	
	return 0
end
