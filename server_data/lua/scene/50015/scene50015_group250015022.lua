--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 22001, monster_id = 21011201, pos = { x = -56.2, y = 0.5, z = 30.0 }, rot = { x = 0.0, y = 238.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 22002, monster_id = 21011201, pos = { x = -56.4, y = 0.5, z = 25.2 }, rot = { x = 0.0, y = 331.5, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 22003, monster_id = 21011201, pos = { x = -61.4, y = 0.5, z = 26.5 }, rot = { x = 0.0, y = 16.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 22004, monster_id = 21011201, pos = { x = -62.2, y = 0.5, z = 29.8 }, rot = { x = 0.0, y = 85.8, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 22005, monster_id = 20010601, pos = { x = -58.5, y = 0.5, z = 27.7 }, rot = { x = 0.0, y = 18.2, z = 0.0 }, level = 10, disableWander = true },
	{ config_id = 22006, monster_id = 20011401, pos = { x = -64.5, y = 0.5, z = 24.2 }, rot = { x = 0.0, y = 32.3, z = 0.0 }, level = 1 },
	{ config_id = 22007, monster_id = 20011401, pos = { x = -65.4, y = 0.5, z = 29.1 }, rot = { x = 0.0, y = 113.7, z = 0.0 }, level = 1 },
	{ config_id = 22008, monster_id = 21020301, pos = { x = -64.4, y = 0.5, z = 27.0 }, rot = { x = 0.0, y = 78.3, z = 0.0 }, level = 1 },
	{ config_id = 22019, monster_id = 20011301, pos = { x = -52.1, y = 0.5, z = 22.7 }, rot = { x = 0.0, y = 18.2, z = 0.0 }, level = 10, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 22009, gadget_id = 70300077, pos = { x = -53.6, y = 0.5, z = 33.3 }, rot = { x = 0.0, y = 72.7, z = 0.0 }, level = 1 },
	{ config_id = 22010, gadget_id = 70220013, pos = { x = -53.4, y = 0.5, z = 33.6 }, rot = { x = 0.0, y = 328.3, z = 0.0 }, level = 1 },
	{ config_id = 22011, gadget_id = 70220013, pos = { x = -63.4, y = 0.5, z = 33.6 }, rot = { x = 0.0, y = 342.9, z = 0.0 }, level = 1 },
	{ config_id = 22012, gadget_id = 70300089, pos = { x = -62.9, y = 0.5, z = 23.4 }, rot = { x = 0.0, y = 99.9, z = 0.0 }, level = 1 },
	{ config_id = 22013, gadget_id = 70300089, pos = { x = -55.9, y = 0.5, z = 21.8 }, rot = { x = 0.0, y = 122.9, z = 0.0 }, level = 1 },
	{ config_id = 22014, gadget_id = 70300088, pos = { x = -55.9, y = 0.5, z = 33.3 }, rot = { x = 359.5, y = 97.2, z = 0.0 }, level = 1 },
	{ config_id = 22015, gadget_id = 70300088, pos = { x = -60.2, y = 0.5, z = 32.8 }, rot = { x = 0.0, y = 100.6, z = 0.0 }, level = 1 },
	{ config_id = 22016, gadget_id = 70300088, pos = { x = -65.8, y = 0.5, z = 32.9 }, rot = { x = 0.0, y = 61.7, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_22017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_22017", action = "action_EVENT_ANY_MONSTER_DIE_22017" },
	{ name = "ANY_MONSTER_LIVE_22018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_22018", action = "action_EVENT_ANY_MONSTER_LIVE_22018" }
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
		-- description = suite_1,
		monsters = { 22001, 22002, 22003, 22004, 22005, 22019 },
		gadgets = { 22009, 22010, 22011, 22012, 22013, 22014, 22015, 22016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_22017", "ANY_MONSTER_LIVE_22018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_22017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_22017(context, evt)
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22007, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22008, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22006, delay_time = 3 }) then
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
function condition_EVENT_ANY_MONSTER_LIVE_22018(context, evt)
	if 1644 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_22018(context, evt)
	-- 通知groupid为250015022中,configid为：22008的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 22008, 250015022) then
	  return -1
	end
	
	-- 通知groupid为250015022中,configid为：22006的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 22006, 250015022) then
	  return -1
	end
	
	-- 通知groupid为250015022中,configid为：22007的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1, 22007, 250015022) then
	  return -1
	end
	
	return 0
end
