--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 555001, monster_id = 21010101, pos = { x = 1440.7, y = 200.1, z = 149.7 }, rot = { x = 358.3, y = 41.7, z = 3.3 }, level = 1, drop_tag = "丘丘人", pose_id = 9011 },
	{ config_id = 555002, monster_id = 21010101, pos = { x = 1454.2, y = 201.8, z = 147.7 }, rot = { x = 3.7, y = 244.7, z = 350.6 }, level = 1, drop_tag = "丘丘人", pose_id = 9011 },
	{ config_id = 555003, monster_id = 21020201, pos = { x = 1454.0, y = 201.2, z = 150.6 }, rot = { x = 2.6, y = 270.3, z = 4.8 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 555004, monster_id = 21030101, pos = { x = 1452.9, y = 201.0, z = 159.1 }, rot = { x = 21.3, y = 251.7, z = 0.7 }, level = 1, drop_tag = "丘丘萨满", pose_id = 9012 },
	{ config_id = 555005, monster_id = 20011201, pos = { x = 1441.8, y = 200.8, z = 150.7 }, rot = { x = 1.0, y = 358.9, z = 3.6 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 555006, monster_id = 20011201, pos = { x = 1453.0, y = 202.2, z = 147.1 }, rot = { x = 350.7, y = 110.6, z = 3.9 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 555007, monster_id = 21020101, pos = { x = 1444.7, y = 200.0, z = 170.6 }, rot = { x = 357.7, y = 160.5, z = 5.9 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 555008, monster_id = 21010601, pos = { x = 1441.7, y = 200.0, z = 168.1 }, rot = { x = 356.8, y = 160.8, z = 355.2 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 555009, monster_id = 21010601, pos = { x = 1443.0, y = 200.0, z = 169.6 }, rot = { x = 0.0, y = 160.7, z = 0.0 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 555011, gadget_id = 70300102, pos = { x = 1441.6, y = 200.1, z = 150.6 }, rot = { x = 0.9, y = 359.3, z = 3.6 }, level = 1 },
	{ config_id = 555012, gadget_id = 70300102, pos = { x = 1453.3, y = 201.4, z = 146.6 }, rot = { x = 7.1, y = 0.4, z = 7.1 }, level = 1 },
	{ config_id = 555013, gadget_id = 70300087, pos = { x = 1441.7, y = 200.6, z = 150.7 }, rot = { x = 1.0, y = 358.7, z = 3.6 }, level = 1 },
	{ config_id = 555014, gadget_id = 70220005, pos = { x = 1449.9, y = 200.7, z = 149.6 }, rot = { x = 6.5, y = 330.2, z = 2.4 }, level = 1 },
	{ config_id = 555015, gadget_id = 70220005, pos = { x = 1440.7, y = 200.5, z = 151.5 }, rot = { x = 0.9, y = 359.6, z = 3.6 }, level = 1 },
	{ config_id = 555017, gadget_id = 70300087, pos = { x = 1453.0, y = 201.8, z = 147.1 }, rot = { x = 6.8, y = 1.3, z = 7.5 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_555018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_555018", action = "action_EVENT_ANY_MONSTER_DIE_555018" }
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
		monsters = { 555001, 555002, 555003, 555004, 555005, 555006 },
		gadgets = { 555011, 555012, 555013, 555014, 555015, 555017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_555018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_555018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_555018(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1054, y=201, z=159}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 555007, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 555008, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 555009, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 555010, delay_time = 3 }) then
	  return -1
	end
	
	return 0
end
