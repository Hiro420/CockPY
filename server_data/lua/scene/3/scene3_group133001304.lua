--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1292, monster_id = 21010101, pos = { x = 1738.8, y = 215.1, z = -1364.2 }, rot = { x = 0.0, y = 96.6, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1294, monster_id = 21010101, pos = { x = 1721.3, y = 214.3, z = -1382.4 }, rot = { x = 0.0, y = 138.0, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 1296, monster_id = 21020201, pos = { x = 1743.9, y = 214.9, z = -1372.3 }, rot = { x = 0.0, y = 270.3, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401 },
	{ config_id = 1297, monster_id = 21030101, pos = { x = 1724.9, y = 213.9, z = -1381.2 }, rot = { x = 0.0, y = 240.8, z = 0.0 }, level = 1, drop_tag = "丘丘萨满", pose_id = 9012 },
	{ config_id = 1300, monster_id = 20011201, pos = { x = 1734.0, y = 214.9, z = -1362.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "史莱姆", disableWander = true, pose_id = 0 },
	{ config_id = 1302, monster_id = 20011201, pos = { x = 1722.3, y = 214.6, z = -1383.5 }, rot = { x = 0.0, y = 292.9, z = 0.0 }, level = 1, drop_tag = "史莱姆", disableWander = true, pose_id = 0 },
	{ config_id = 1303, monster_id = 21020101, pos = { x = 1718.3, y = 214.0, z = -1399.1 }, rot = { x = 0.0, y = 20.4, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 1304, monster_id = 21010601, pos = { x = 1714.8, y = 213.7, z = -1403.0 }, rot = { x = 0.0, y = 14.9, z = 0.0 }, level = 1, drop_tag = "丘丘人", affix = { 1019 }, isElite = true },
	{ config_id = 1305, monster_id = 21010601, pos = { x = 1716.2, y = 213.5, z = -1405.8 }, rot = { x = 0.0, y = 14.9, z = 0.0 }, level = 1, drop_tag = "丘丘人", affix = { 1019 }, isElite = true },
	{ config_id = 1306, monster_id = 21010601, pos = { x = 1711.9, y = 213.2, z = -1404.0 }, rot = { x = 0.0, y = 45.6, z = 0.0 }, level = 1, drop_tag = "丘丘人", affix = { 1019 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3204, gadget_id = 70300102, pos = { x = 1739.5, y = 214.6, z = -1364.5 }, rot = { x = 359.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3206, gadget_id = 70300102, pos = { x = 1721.6, y = 213.9, z = -1383.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3207, gadget_id = 70300087, pos = { x = 1734.0, y = 214.5, z = -1362.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3209, gadget_id = 70220005, pos = { x = 1742.1, y = 214.8, z = -1363.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3211, gadget_id = 70220005, pos = { x = 1739.9, y = 215.1, z = -1364.2 }, rot = { x = 0.0, y = 118.0, z = 0.0 }, level = 1 },
	{ config_id = 3221, gadget_id = 70300084, pos = { x = 1743.6, y = 214.9, z = -1361.0 }, rot = { x = 2.6, y = 320.9, z = 7.1 }, level = 1 },
	{ config_id = 3227, gadget_id = 70300087, pos = { x = 1722.4, y = 214.3, z = -1383.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_460", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_460", action = "action_EVENT_ANY_MONSTER_DIE_460" }
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
		monsters = { 1292, 1294, 1296, 1297, 1300, 1302 },
		gadgets = { 3204, 3206, 3207, 3209, 3211, 3221, 3227 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_460" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_460(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_460(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1738, y=214, z=-1372}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1303, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1304, delay_time = 3 }) then
	  return -1
	end
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1305, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1306, delay_time = 3 }) then
	  return -1
	end
	
	return 0
end
