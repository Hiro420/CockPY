--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 21, monster_id = 21010501, pos = { x = 224.7, y = 4.0, z = -32.7 }, rot = { x = 0.0, y = 338.2, z = 0.0 }, level = 1, disableWander = true, pose_id = 9013 },
	{ config_id = 22, monster_id = 21010501, pos = { x = 221.0, y = 4.0, z = -31.9 }, rot = { x = 0.0, y = 20.8, z = 0.0 }, level = 1, disableWander = true, pose_id = 9013 },
	{ config_id = 23, monster_id = 21010501, pos = { x = 217.8, y = 4.0, z = -31.4 }, rot = { x = 0.0, y = 16.0, z = 0.0 }, level = 1, disableWander = true, pose_id = 9013 },
	{ config_id = 24, monster_id = 21010301, pos = { x = 216.1, y = 4.0, z = -36.0 }, rot = { x = 0.0, y = 48.2, z = 0.0 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 25, monster_id = 21010301, pos = { x = 223.2, y = 4.0, z = -37.8 }, rot = { x = 0.0, y = 18.2, z = 0.0 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 26, monster_id = 21010601, pos = { x = 234.6, y = 4.0, z = -45.3 }, rot = { x = 0.0, y = 32.3, z = 0.0 }, level = 1 },
	{ config_id = 27, monster_id = 21010601, pos = { x = 225.0, y = 4.0, z = -46.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 28, monster_id = 21020101, pos = { x = 229.1, y = 4.0, z = -45.1 }, rot = { x = 0.0, y = 46.1, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 198, gadget_id = 70300077, pos = { x = 225.6, y = 4.0, z = -24.6 }, rot = { x = 0.0, y = 72.7, z = 0.0 }, level = 1 },
	{ config_id = 199, gadget_id = 70220013, pos = { x = 225.8, y = 3.5, z = -24.3 }, rot = { x = 0.0, y = 328.3, z = 0.0 }, level = 1 },
	{ config_id = 200, gadget_id = 70220013, pos = { x = 215.8, y = 4.0, z = -24.3 }, rot = { x = 0.0, y = 342.9, z = 0.0 }, level = 1 },
	{ config_id = 202, gadget_id = 70300089, pos = { x = 216.3, y = 4.0, z = -34.5 }, rot = { x = 0.0, y = 99.9, z = 0.0 }, level = 1 },
	{ config_id = 203, gadget_id = 70300089, pos = { x = 223.3, y = 4.0, z = -36.1 }, rot = { x = 0.0, y = 122.9, z = 0.0 }, level = 1 },
	{ config_id = 225, gadget_id = 70300088, pos = { x = 223.3, y = 4.0, z = -24.6 }, rot = { x = 359.5, y = 97.2, z = 0.0 }, level = 1 },
	{ config_id = 226, gadget_id = 70300088, pos = { x = 219.0, y = 4.0, z = -25.1 }, rot = { x = 0.0, y = 100.6, z = 0.0 }, level = 1 },
	{ config_id = 227, gadget_id = 70300088, pos = { x = 213.4, y = 4.0, z = -25.0 }, rot = { x = 0.0, y = 61.7, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_130", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_130", action = "action_EVENT_ANY_MONSTER_DIE_130" },
	{ name = "ANY_MONSTER_LIVE_131", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_131", action = "action_EVENT_ANY_MONSTER_LIVE_131" }
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
		monsters = { 21, 22, 23, 24, 25 },
		gadgets = { 198, 199, 200, 202, 203, 225, 226, 227 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_130", "ANY_MONSTER_LIVE_131" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_130(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_130(context, evt)
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 27, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 28, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 26, delay_time = 3 }) then
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2510, y=194, z=-1141}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_131(context, evt)
	if 1644 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_131(context, evt)
	-- 通知groupid为57中,configid为：28的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 28, 57) then
	  return -1
	end
	
	-- 通知groupid为57中,configid为：26的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 26, 57) then
	  return -1
	end
	
	-- 通知groupid为57中,configid为：27的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 27, 57) then
	  return -1
	end
	
	return 0
end
