--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 261001, monster_id = 21010101, pos = { x = 797.4, y = 239.0, z = -223.7 }, rot = { x = 0.0, y = 69.3, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 261002, monster_id = 21010101, pos = { x = 798.6, y = 239.0, z = -224.8 }, rot = { x = 0.0, y = 10.7, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 261003, monster_id = 21020201, pos = { x = 790.5, y = 239.4, z = -224.3 }, rot = { x = 0.0, y = 105.8, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 261004, monster_id = 21030101, pos = { x = 801.5, y = 240.7, z = -222.1 }, rot = { x = 0.0, y = 255.0, z = 0.0 }, level = 1, drop_tag = "丘丘萨满" },
	{ config_id = 261005, monster_id = 20011201, pos = { x = 799.0, y = 239.9, z = -222.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "史莱姆", pose_id = 901 },
	{ config_id = 261006, monster_id = 20011201, pos = { x = 794.5, y = 240.6, z = -232.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "史莱姆", pose_id = 901 },
	{ config_id = 261007, monster_id = 21020101, pos = { x = 800.9, y = 239.7, z = -243.1 }, rot = { x = 0.0, y = 357.2, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 261008, monster_id = 21010601, pos = { x = 803.7, y = 240.3, z = -247.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "丘丘人", pose_id = 0 },
	{ config_id = 261009, monster_id = 21010601, pos = { x = 798.9, y = 239.5, z = -247.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "丘丘人", pose_id = 0 },
	{ config_id = 261010, monster_id = 21010601, pos = { x = 801.1, y = 239.9, z = -245.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "丘丘人", pose_id = 0 },
	{ config_id = 261019, monster_id = 21011001, pos = { x = 781.6, y = 244.6, z = -238.1 }, rot = { x = 0.0, y = 55.9, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 261011, gadget_id = 70300102, pos = { x = 793.8, y = 239.4, z = -232.4 }, rot = { x = 1.4, y = 359.9, z = 357.4 }, level = 1 },
	{ config_id = 261012, gadget_id = 70300102, pos = { x = 798.5, y = 238.5, z = -223.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 261013, gadget_id = 70300087, pos = { x = 794.5, y = 239.7, z = -232.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 261014, gadget_id = 70220005, pos = { x = 804.0, y = 240.7, z = -221.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 261015, gadget_id = 70220005, pos = { x = 805.2, y = 240.7, z = -221.4 }, rot = { x = 0.0, y = 105.8, z = 0.0 }, level = 1 },
	{ config_id = 261016, gadget_id = 70300084, pos = { x = 786.2, y = 238.6, z = -249.3 }, rot = { x = 0.0, y = 121.9, z = 0.0 }, level = 1 },
	{ config_id = 261017, gadget_id = 70300087, pos = { x = 799.1, y = 239.0, z = -222.9 }, rot = { x = 0.0, y = 24.1, z = 0.0 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_261018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_261018", action = "action_EVENT_ANY_MONSTER_DIE_261018" }
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
		monsters = { 261001, 261002, 261003, 261004, 261005, 261006, 261019 },
		gadgets = { 261011, 261012, 261013, 261014, 261015, 261016, 261017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_261018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_261018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_261018(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=796, y=238, z=-229}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 261007, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 261008, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 261009, delay_time = 3 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 261010, delay_time = 3 }) then
	  return -1
	end
	
	return 0
end
