--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 973, monster_id = 21010601, pos = { x = 1646.0, y = 265.8, z = -775.0 }, rot = { x = 0.0, y = 109.2, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 974, monster_id = 21010601, pos = { x = 1662.3, y = 266.6, z = -776.5 }, rot = { x = 0.0, y = 92.7, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 977, monster_id = 20011201, pos = { x = 1663.7, y = 267.1, z = -776.0 }, rot = { x = 0.0, y = 255.5, z = 0.0 }, level = 1, drop_tag = "史莱姆", pose_id = 901 },
	{ config_id = 978, monster_id = 21020201, pos = { x = 1659.3, y = 267.1, z = -765.8 }, rot = { x = 0.0, y = 209.7, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401 },
	{ config_id = 979, monster_id = 21030201, pos = { x = 1649.8, y = 265.1, z = -776.2 }, rot = { x = 0.0, y = 289.0, z = 0.0 }, level = 1, drop_tag = "丘丘萨满", pose_id = 9012 },
	{ config_id = 980, monster_id = 21020101, pos = { x = 1628.0, y = 268.5, z = -780.0 }, rot = { x = 0.0, y = 69.1, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 982, monster_id = 21010501, pos = { x = 1625.8, y = 268.5, z = -782.3 }, rot = { x = 0.0, y = 69.8, z = 0.0 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 983, monster_id = 21030301, pos = { x = 1623.8, y = 268.5, z = -780.0 }, rot = { x = 0.0, y = 97.2, z = 0.0 }, level = 1, drop_tag = "丘丘萨满" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2251, gadget_id = 70300102, pos = { x = 1646.0, y = 265.4, z = -774.8 }, rot = { x = 0.0, y = 0.0, z = 357.6 }, level = 1 },
	{ config_id = 2252, gadget_id = 70300102, pos = { x = 1662.5, y = 266.2, z = -776.5 }, rot = { x = 0.0, y = 0.0, z = 1.6 }, level = 1 },
	{ config_id = 2253, gadget_id = 70300087, pos = { x = 1663.7, y = 266.7, z = -776.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2254, gadget_id = 70300087, pos = { x = 1659.4, y = 265.9, z = -772.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2255, gadget_id = 70300087, pos = { x = 1643.1, y = 265.6, z = -776.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2256, gadget_id = 70220005, pos = { x = 1647.0, y = 265.8, z = -775.2 }, rot = { x = 0.0, y = 133.1, z = 0.0 }, level = 1 },
	{ config_id = 2257, gadget_id = 70220005, pos = { x = 1657.8, y = 265.9, z = -772.5 }, rot = { x = 0.0, y = 201.9, z = 0.0 }, level = 1 },
	{ config_id = 2258, gadget_id = 70220005, pos = { x = 1668.7, y = 267.8, z = -782.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2259, gadget_id = 70300084, pos = { x = 1663.0, y = 266.6, z = -787.5 }, rot = { x = 0.0, y = 80.9, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_350", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_350", action = "action_EVENT_ANY_MONSTER_DIE_350" }
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
		monsters = { 973, 974, 977, 978, 979 },
		gadgets = { 2251, 2252, 2253, 2254, 2255, 2256, 2257, 2258, 2259 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_350" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_350(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_350(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1654, y=265, z=-771}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 980, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 982, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 983, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end
