--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 91001, monster_id = 21010101, pos = { x = -125.7, y = 200.3, z = -846.6 }, rot = { x = 0.0, y = 141.9, z = 0.0 }, level = 1, drop_tag = "丘丘人", pose_id = 9011 },
	{ config_id = 91002, monster_id = 21010101, pos = { x = -118.0, y = 200.4, z = -855.9 }, rot = { x = 0.0, y = 104.2, z = 0.0 }, level = 1, drop_tag = "丘丘人", pose_id = 9011 },
	{ config_id = 91003, monster_id = 21020201, pos = { x = -120.3, y = 200.4, z = -861.7 }, rot = { x = 0.0, y = 334.5, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 91004, monster_id = 21030101, pos = { x = -115.3, y = 200.2, z = -858.6 }, rot = { x = 0.0, y = 338.5, z = 0.0 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012 },
	{ config_id = 91005, monster_id = 20011201, pos = { x = -111.7, y = 200.4, z = -856.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "史莱姆", pose_id = 901 },
	{ config_id = 91006, monster_id = 20011201, pos = { x = -124.4, y = 200.8, z = -847.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "史莱姆", pose_id = 901 },
	{ config_id = 91007, monster_id = 21020301, pos = { x = -123.0, y = 200.9, z = -867.8 }, rot = { x = 0.0, y = 41.4, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 91008, monster_id = 21010601, pos = { x = -124.4, y = 201.0, z = -871.7 }, rot = { x = 0.0, y = 36.0, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 91009, monster_id = 21010601, pos = { x = -126.6, y = 200.9, z = -870.0 }, rot = { x = 0.0, y = 37.0, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 91010, monster_id = 21010601, pos = { x = -125.0, y = 200.9, z = -870.1 }, rot = { x = 358.6, y = 34.1, z = 359.1 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 91011, gadget_id = 70300102, pos = { x = -124.9, y = 199.9, z = -847.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 91012, gadget_id = 70300102, pos = { x = -117.6, y = 199.9, z = -856.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 91013, gadget_id = 70300087, pos = { x = -124.4, y = 200.3, z = -847.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 91014, gadget_id = 70220005, pos = { x = -116.6, y = 200.3, z = -856.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 91015, gadget_id = 70220005, pos = { x = -134.0, y = 200.5, z = -848.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 91017, gadget_id = 70300087, pos = { x = -119.3, y = 200.0, z = -851.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 91020, gadget_id = 70220005, pos = { x = -133.3, y = 200.6, z = -849.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 91021, gadget_id = 70300087, pos = { x = -111.7, y = 200.0, z = -856.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 91022, gadget_id = 70300087, pos = { x = -106.7, y = 199.9, z = -856.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 91023, gadget_id = 70220013, pos = { x = -105.7, y = 200.2, z = -860.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 91024, gadget_id = 70220013, pos = { x = -104.0, y = 200.1, z = -859.3 }, rot = { x = 0.0, y = 320.6, z = 0.0 }, level = 1 },
	{ config_id = 91025, gadget_id = 70300084, pos = { x = -109.7, y = 201.3, z = -869.1 }, rot = { x = 5.7, y = 56.2, z = 4.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_91018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_91018", action = "action_EVENT_ANY_MONSTER_DIE_91018" }
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
		monsters = { 91001, 91002, 91003, 91004, 91005, 91006 },
		gadgets = { 91011, 91012, 91013, 91014, 91015, 91017, 91020, 91021, 91022, 91023, 91024, 91025 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_91018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_91018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_91018(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-124, y=200, z=-855}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91007, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91008, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91009, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91010, delay_time = 3 }) then
	  return -1
	end
	
	return 0
end
