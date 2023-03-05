--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1659, monster_id = 21010901, pos = { x = 2213.9, y = 224.0, z = -1188.3 }, rot = { x = 0.0, y = 136.0, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 1660, monster_id = 21010401, pos = { x = 2215.4, y = 227.2, z = -1190.7 }, rot = { x = 0.0, y = 94.7, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 1661, monster_id = 21020101, pos = { x = 2218.2, y = 224.1, z = -1184.4 }, rot = { x = 0.0, y = 116.9, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 1662, monster_id = 21010201, pos = { x = 2223.6, y = 224.7, z = -1188.6 }, rot = { x = 0.0, y = 108.4, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1663, monster_id = 21010201, pos = { x = 2220.5, y = 224.5, z = -1189.3 }, rot = { x = 0.0, y = 211.2, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1664, monster_id = 21010601, pos = { x = 2244.6, y = 226.1, z = -1183.4 }, rot = { x = 0.0, y = 278.4, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1665, monster_id = 21010601, pos = { x = 2243.5, y = 226.0, z = -1187.7 }, rot = { x = 0.0, y = 301.8, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1666, monster_id = 21020201, pos = { x = 2244.6, y = 226.1, z = -1185.3 }, rot = { x = 0.0, y = 284.3, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4280, gadget_id = 70220013, pos = { x = 2223.3, y = 225.9, z = -1174.5 }, rot = { x = 0.0, y = 328.3, z = 0.0 }, level = 1 },
	{ config_id = 4281, gadget_id = 70220013, pos = { x = 2217.6, y = 224.3, z = -1190.3 }, rot = { x = 0.0, y = 342.9, z = 0.0 }, level = 1 },
	{ config_id = 4282, gadget_id = 70300100, pos = { x = 2220.4, y = 224.5, z = -1190.9 }, rot = { x = 6.4, y = 196.7, z = 7.9 }, level = 1 },
	{ config_id = 4284, gadget_id = 70300100, pos = { x = 2224.7, y = 224.7, z = -1190.3 }, rot = { x = 0.0, y = 122.9, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_575", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_575", action = "action_EVENT_ANY_MONSTER_DIE_575" },
	{ name = "ANY_MONSTER_LIVE_576", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_576", action = "action_EVENT_ANY_MONSTER_LIVE_576" }
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
		monsters = { 1659, 1660, 1661, 1662, 1663 },
		gadgets = { 4280, 4281, 4282, 4284 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_575", "ANY_MONSTER_LIVE_576" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_575(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_575(context, evt)
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
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1664, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1665, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1666, delay_time = 3 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_576(context, evt)
	if 1644 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_576(context, evt)
	-- 通知groupid为133003477中,configid为：1666的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1666, 133003477) then
	  return -1
	end
	
	-- 通知groupid为133003477中,configid为：1664的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1664, 133003477) then
	  return -1
	end
	
	-- 通知groupid为133003477中,configid为：1665的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1665, 133003477) then
	  return -1
	end
	
	-- 通知groupid为133003477中,configid为：1660的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 1660, 133003477) then
	  return -1
	end
	
	return 0
end
