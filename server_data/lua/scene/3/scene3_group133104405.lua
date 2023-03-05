--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 405001, monster_id = 21010101, pos = { x = 663.8, y = 201.5, z = 337.8 }, rot = { x = 0.0, y = 69.0, z = 0.0 }, level = 1, drop_tag = "丘丘人", pose_id = 9011 },
	{ config_id = 405002, monster_id = 21010101, pos = { x = 654.6, y = 201.5, z = 339.3 }, rot = { x = 358.3, y = 325.1, z = 1.9 }, level = 1, drop_tag = "丘丘人", pose_id = 9011 },
	{ config_id = 405003, monster_id = 21020201, pos = { x = 660.0, y = 201.0, z = 341.4 }, rot = { x = 0.0, y = 198.6, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401 },
	{ config_id = 405004, monster_id = 21030301, pos = { x = 656.5, y = 201.1, z = 334.1 }, rot = { x = 1.8, y = 86.9, z = 359.9 }, level = 1, drop_tag = "丘丘萨满", pose_id = 9012 },
	{ config_id = 405005, monster_id = 20011201, pos = { x = 653.8, y = 202.0, z = 340.4 }, rot = { x = 359.8, y = 99.6, z = 359.8 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 405006, monster_id = 20011201, pos = { x = 665.3, y = 202.0, z = 338.3 }, rot = { x = 359.8, y = 0.0, z = 0.3 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 405007, monster_id = 21020101, pos = { x = 656.1, y = 200.4, z = 311.1 }, rot = { x = 350.3, y = 0.5, z = 354.6 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 405008, monster_id = 21010601, pos = { x = 657.8, y = 200.4, z = 311.5 }, rot = { x = 350.3, y = 0.5, z = 354.6 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 405009, monster_id = 21010601, pos = { x = 655.0, y = 200.5, z = 312.0 }, rot = { x = 350.3, y = 0.5, z = 354.6 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 405010, monster_id = 21010601, pos = { x = 656.8, y = 200.5, z = 311.9 }, rot = { x = 350.3, y = 0.5, z = 354.6 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 405011, gadget_id = 70300102, pos = { x = 665.2, y = 201.0, z = 338.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 405012, gadget_id = 70300102, pos = { x = 653.6, y = 201.0, z = 340.5 }, rot = { x = 0.0, y = 360.0, z = 0.0 }, level = 1 },
	{ config_id = 405013, gadget_id = 70300087, pos = { x = 665.1, y = 201.5, z = 338.3 }, rot = { x = 359.8, y = 0.0, z = 0.3 }, level = 1 },
	{ config_id = 405014, gadget_id = 70220005, pos = { x = 666.2, y = 201.5, z = 337.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 405015, gadget_id = 70220005, pos = { x = 652.6, y = 201.5, z = 339.5 }, rot = { x = 6.2, y = 359.8, z = 355.5 }, level = 1 },
	{ config_id = 405016, gadget_id = 70300084, pos = { x = 647.0, y = 201.0, z = 340.8 }, rot = { x = 3.6, y = 206.5, z = 10.7 }, level = 1 },
	{ config_id = 405017, gadget_id = 70300087, pos = { x = 653.6, y = 201.5, z = 340.4 }, rot = { x = 359.8, y = 0.0, z = 0.3 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_405018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_405018", action = "action_EVENT_ANY_MONSTER_DIE_405018" }
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
		monsters = { 405001, 405002, 405003, 405004, 405005, 405006 },
		gadgets = { 405011, 405012, 405013, 405014, 405015, 405016, 405017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_405018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_405018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_405018(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=653, y=201, z=332}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 405007, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 405008, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 405009, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 405010, delay_time = 3 }) then
	  return -1
	end
	
	return 0
end
