--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 721, monster_id = 21010601, pos = { x = 2603.4, y = 203.7, z = -541.7 }, rot = { x = 0.0, y = 346.3, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 722, monster_id = 21010601, pos = { x = 2614.0, y = 204.3, z = -544.6 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 723, monster_id = 21020101, pos = { x = 2609.9, y = 204.0, z = -534.2 }, rot = { x = 0.0, y = 182.5, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 301 },
	{ config_id = 725, monster_id = 20011201, pos = { x = 2614.8, y = 205.7, z = -545.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "史莱姆", pose_id = 901 },
	{ config_id = 727, monster_id = 20011201, pos = { x = 2596.9, y = 202.7, z = -543.1 }, rot = { x = 0.0, y = 63.3, z = 0.0 }, level = 1, drop_tag = "史莱姆", disableWander = true, pose_id = 0 },
	{ config_id = 728, monster_id = 21020201, pos = { x = 2631.3, y = 204.7, z = -542.5 }, rot = { x = 0.0, y = 269.3, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 729, monster_id = 21010501, pos = { x = 2633.5, y = 204.7, z = -545.2 }, rot = { x = 0.0, y = 251.9, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 730, monster_id = 21010501, pos = { x = 2636.4, y = 205.0, z = -540.8 }, rot = { x = 0.0, y = 252.2, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1450, gadget_id = 70300102, pos = { x = 2614.6, y = 203.8, z = -544.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1451, gadget_id = 70300102, pos = { x = 2603.6, y = 203.3, z = -541.3 }, rot = { x = 4.2, y = 238.8, z = 0.0 }, level = 1 },
	{ config_id = 1452, gadget_id = 70300087, pos = { x = 2596.9, y = 202.2, z = -543.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1453, gadget_id = 70300087, pos = { x = 2599.0, y = 202.3, z = -546.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1456, gadget_id = 70300087, pos = { x = 2615.5, y = 204.3, z = -544.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 1457, gadget_id = 70300084, pos = { x = 2618.3, y = 203.8, z = -530.2 }, rot = { x = 0.0, y = 295.7, z = 0.0 }, level = 1 },
	{ config_id = 1458, gadget_id = 70300084, pos = { x = 2611.2, y = 203.6, z = -527.7 }, rot = { x = 0.0, y = 280.8, z = 0.0 }, level = 1 },
	{ config_id = 1459, gadget_id = 70300084, pos = { x = 2623.9, y = 203.9, z = -536.1 }, rot = { x = 0.1, y = 338.7, z = 0.1 }, level = 1 },
	{ config_id = 1460, gadget_id = 70300084, pos = { x = 2624.2, y = 203.6, z = -550.8 }, rot = { x = 356.8, y = 11.8, z = 0.1 }, level = 1 },
	{ config_id = 1461, gadget_id = 70300084, pos = { x = 2620.9, y = 202.9, z = -558.0 }, rot = { x = 357.0, y = 33.7, z = 358.9 }, level = 1 },
	{ config_id = 1463, gadget_id = 70300078, pos = { x = 2621.0, y = 204.0, z = -538.0 }, rot = { x = 0.0, y = 52.7, z = 0.0 }, level = 1 },
	{ config_id = 1464, gadget_id = 70300078, pos = { x = 2616.4, y = 203.9, z = -533.5 }, rot = { x = 0.0, y = 30.6, z = 0.0 }, level = 1 },
	{ config_id = 1465, gadget_id = 70220005, pos = { x = 2603.0, y = 203.7, z = -540.5 }, rot = { x = 0.0, y = 344.2, z = 0.0 }, level = 1 },
	{ config_id = 1466, gadget_id = 70220005, pos = { x = 2617.9, y = 203.9, z = -535.5 }, rot = { x = 0.0, y = 237.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_311", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_311", action = "action_EVENT_ANY_MONSTER_DIE_311" }
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
		monsters = { 721, 722, 723, 725, 727 },
		gadgets = { 1450, 1451, 1452, 1453, 1456, 1457, 1458, 1459, 1460, 1461, 1463, 1464, 1465, 1466 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_311" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_311(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_311(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2615, y=205, z=-545}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 728, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 729, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 730, delay_time = 3 }) then
	  return -1
	end
	
	return 0
end
