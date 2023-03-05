--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1700, monster_id = 21010101, pos = { x = 2186.9, y = 213.1, z = -1469.7 }, rot = { x = 0.0, y = 27.2, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1701, monster_id = 21010601, pos = { x = 2190.4, y = 213.0, z = -1487.1 }, rot = { x = 0.0, y = 73.4, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1702, monster_id = 20011201, pos = { x = 2191.9, y = 213.4, z = -1486.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "史莱姆", pose_id = 901 },
	{ config_id = 1703, monster_id = 20011201, pos = { x = 2185.6, y = 213.1, z = -1474.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "史莱姆", pose_id = 0 },
	{ config_id = 1705, monster_id = 21020201, pos = { x = 2184.3, y = 213.0, z = -1481.7 }, rot = { x = 0.0, y = 304.9, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 0 },
	{ config_id = 1707, monster_id = 21010601, pos = { x = 2205.2, y = 213.9, z = -1485.9 }, rot = { x = 0.0, y = 316.1, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1709, monster_id = 21020101, pos = { x = 2205.1, y = 213.9, z = -1483.9 }, rot = { x = 0.0, y = 312.0, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 1710, monster_id = 21030101, pos = { x = 2208.5, y = 213.9, z = -1485.7 }, rot = { x = 0.0, y = 295.9, z = 0.0 }, level = 1, drop_tag = "丘丘萨满" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4318, gadget_id = 70300102, pos = { x = 2191.1, y = 212.5, z = -1487.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4319, gadget_id = 70300102, pos = { x = 2187.0, y = 212.6, z = -1469.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4320, gadget_id = 70300087, pos = { x = 2191.9, y = 213.0, z = -1486.7 }, rot = { x = 0.0, y = 307.6, z = 0.0 }, level = 1 },
	{ config_id = 4321, gadget_id = 70300087, pos = { x = 2185.6, y = 212.6, z = -1474.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4322, gadget_id = 70300087, pos = { x = 2187.0, y = 212.8, z = -1484.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4323, gadget_id = 70220005, pos = { x = 2187.5, y = 213.1, z = -1468.8 }, rot = { x = 0.0, y = 242.8, z = 0.0 }, level = 1 },
	{ config_id = 4324, gadget_id = 70220005, pos = { x = 2198.1, y = 212.3, z = -1471.7 }, rot = { x = 0.2, y = 211.1, z = 0.0 }, level = 1 },
	{ config_id = 4325, gadget_id = 70220005, pos = { x = 2197.7, y = 212.3, z = -1471.0 }, rot = { x = 359.9, y = 312.1, z = 0.2 }, level = 1 },
	{ config_id = 4326, gadget_id = 70220013, pos = { x = 2199.9, y = 212.3, z = -1471.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4327, gadget_id = 70220013, pos = { x = 2204.0, y = 212.3, z = -1475.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4328, gadget_id = 70220013, pos = { x = 2204.2, y = 213.9, z = -1491.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4329, gadget_id = 70220013, pos = { x = 2196.5, y = 212.7, z = -1487.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_584", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_584", action = "action_EVENT_ANY_MONSTER_DIE_584" }
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
		monsters = { 1700, 1701, 1702, 1703, 1705 },
		gadgets = { 4318, 4319, 4320, 4321, 4322, 4323, 4324, 4325, 4326, 4327, 4328, 4329 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_584" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_584(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_584(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2192, y=212, z=-1476}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1709, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1707, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1710, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end
