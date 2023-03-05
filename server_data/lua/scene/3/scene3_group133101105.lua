--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 105001, monster_id = 21011001, pos = { x = 1320.2, y = 229.6, z = 1267.7 }, rot = { x = 0.8, y = 110.6, z = 4.7 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 105002, monster_id = 21011001, pos = { x = 1320.7, y = 229.6, z = 1262.7 }, rot = { x = 4.6, y = 45.5, z = 1.2 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 105003, monster_id = 21030101, pos = { x = 1323.2, y = 228.5, z = 1266.0 }, rot = { x = 3.3, y = 76.1, z = 3.4 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012 },
	{ config_id = 105004, monster_id = 21010301, pos = { x = 1328.3, y = 227.6, z = 1261.4 }, rot = { x = 4.7, y = 41.4, z = 0.9 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 },
	{ config_id = 105005, monster_id = 21010301, pos = { x = 1328.1, y = 227.9, z = 1270.5 }, rot = { x = 0.4, y = 304.7, z = 355.2 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 },
	{ config_id = 105006, monster_id = 21010601, pos = { x = 1334.9, y = 227.3, z = 1267.7 }, rot = { x = 358.6, y = 283.7, z = 355.4 }, level = 1, drop_tag = "丘丘人", pose_id = 0 },
	{ config_id = 105007, monster_id = 21010601, pos = { x = 1335.4, y = 227.3, z = 1264.6 }, rot = { x = 359.7, y = 297.4, z = 355.2 }, level = 1, drop_tag = "丘丘人", pose_id = 0 },
	{ config_id = 105008, monster_id = 21020201, pos = { x = 1335.7, y = 227.4, z = 1266.2 }, rot = { x = 358.5, y = 282.2, z = 355.5 }, level = 1, drop_tag = "丘丘暴徒" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 105009, gadget_id = 70300084, pos = { x = 1319.3, y = 229.3, z = 1259.8 }, rot = { x = 7.5, y = 131.1, z = 8.9 }, level = 1 },
	{ config_id = 105010, gadget_id = 70220013, pos = { x = 1319.8, y = 228.4, z = 1273.5 }, rot = { x = 343.7, y = 237.1, z = 357.8 }, level = 1 },
	{ config_id = 105011, gadget_id = 70220013, pos = { x = 1324.0, y = 229.0, z = 1257.4 }, rot = { x = 341.7, y = 253.1, z = 359.2 }, level = 1 },
	{ config_id = 105012, gadget_id = 70300100, pos = { x = 1327.9, y = 227.3, z = 1263.0 }, rot = { x = 8.3, y = 7.3, z = 338.1 }, level = 1 },
	{ config_id = 105013, gadget_id = 70300100, pos = { x = 1326.5, y = 227.7, z = 1271.6 }, rot = { x = 14.2, y = 31.5, z = 3.6 }, level = 1 },
	{ config_id = 105014, gadget_id = 70300088, pos = { x = 1320.2, y = 228.9, z = 1271.4 }, rot = { x = 12.2, y = 3.9, z = 350.4 }, level = 1 },
	{ config_id = 105015, gadget_id = 70300088, pos = { x = 1317.4, y = 229.8, z = 1264.7 }, rot = { x = 12.7, y = 347.3, z = 344.1 }, level = 1 },
	{ config_id = 105016, gadget_id = 70300088, pos = { x = 1326.5, y = 228.4, z = 1254.7 }, rot = { x = 2.0, y = 324.7, z = 355.6 }, level = 1 },
	{ config_id = 105019, gadget_id = 70300084, pos = { x = 1327.2, y = 227.7, z = 1250.7 }, rot = { x = 12.5, y = 80.1, z = 347.6 }, level = 1 },
	{ config_id = 105020, gadget_id = 70300084, pos = { x = 1317.1, y = 229.6, z = 1267.2 }, rot = { x = 355.6, y = 188.6, z = 359.3 }, level = 1 },
	{ config_id = 105021, gadget_id = 70220014, pos = { x = 1318.7, y = 229.0, z = 1272.1 }, rot = { x = 341.5, y = 212.4, z = 6.5 }, level = 1 },
	{ config_id = 105022, gadget_id = 70310001, pos = { x = 1323.9, y = 228.0, z = 1263.6 }, rot = { x = 3.4, y = 359.7, z = 356.8 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_105017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_105017", action = "action_EVENT_ANY_MONSTER_DIE_105017" }
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
		monsters = { 105001, 105002, 105003, 105004, 105005 },
		gadgets = { 105009, 105010, 105011, 105012, 105013, 105014, 105015, 105016, 105019, 105020, 105021, 105022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_105017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_105017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_105017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1325, y=230, z=1262}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 105007, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 105008, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 105006, delay_time = 3 }) then
	  return -1
	end
	
	return 0
end
