--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 984, monster_id = 21010601, pos = { x = 2050.1, y = 247.6, z = -446.8 }, rot = { x = 0.0, y = 343.7, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 985, monster_id = 21010601, pos = { x = 2054.9, y = 248.0, z = -450.8 }, rot = { x = 0.0, y = 86.1, z = 0.0 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 987, monster_id = 21020201, pos = { x = 2057.1, y = 248.8, z = -437.3 }, rot = { x = 0.0, y = 205.0, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401 },
	{ config_id = 988, monster_id = 20011201, pos = { x = 2049.5, y = 248.0, z = -445.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "史莱姆", pose_id = 901 },
	{ config_id = 990, monster_id = 20011201, pos = { x = 2057.1, y = 248.5, z = -457.4 }, rot = { x = 0.0, y = 212.9, z = 0.0 }, level = 1, drop_tag = "史莱姆", disableWander = true, pose_id = 0 },
	{ config_id = 991, monster_id = 21020101, pos = { x = 2039.9, y = 248.3, z = -465.0 }, rot = { x = 0.0, y = 17.9, z = 0.0 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 992, monster_id = 21030101, pos = { x = 2036.1, y = 249.4, z = -465.7 }, rot = { x = 0.0, y = 26.7, z = 0.0 }, level = 1, drop_tag = "丘丘萨满" },
	{ config_id = 993, monster_id = 21030101, pos = { x = 2041.8, y = 248.0, z = -468.4 }, rot = { x = 0.0, y = 337.0, z = 0.0 }, level = 1, drop_tag = "丘丘萨满" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2262, gadget_id = 70300102, pos = { x = 2055.7, y = 247.6, z = -450.7 }, rot = { x = 2.5, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2263, gadget_id = 70300102, pos = { x = 2050.4, y = 247.1, z = -446.1 }, rot = { x = 358.8, y = 242.1, z = 357.8 }, level = 1 },
	{ config_id = 2264, gadget_id = 70300102, pos = { x = 2057.2, y = 247.5, z = -443.9 }, rot = { x = 357.4, y = 307.9, z = 2.6 }, level = 1 },
	{ config_id = 2265, gadget_id = 70300087, pos = { x = 2054.5, y = 247.4, z = -447.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2266, gadget_id = 70300084, pos = { x = 2061.2, y = 248.0, z = -460.2 }, rot = { x = 0.0, y = 68.7, z = 0.0 }, level = 1 },
	{ config_id = 2267, gadget_id = 70300084, pos = { x = 2053.4, y = 247.8, z = -461.2 }, rot = { x = 357.7, y = 95.5, z = 0.0 }, level = 1 },
	{ config_id = 2268, gadget_id = 70300084, pos = { x = 2036.7, y = 248.9, z = -454.0 }, rot = { x = 7.9, y = 133.5, z = 5.1 }, level = 1 },
	{ config_id = 2269, gadget_id = 70300084, pos = { x = 2064.9, y = 249.2, z = -436.2 }, rot = { x = 356.5, y = 322.5, z = 6.1 }, level = 1 },
	{ config_id = 2270, gadget_id = 70300084, pos = { x = 2068.8, y = 249.2, z = -442.9 }, rot = { x = 354.8, y = 340.5, z = 4.7 }, level = 1 },
	{ config_id = 2271, gadget_id = 70300077, pos = { x = 2057.9, y = 248.8, z = -435.0 }, rot = { x = 0.0, y = 19.3, z = 0.0 }, level = 1 },
	{ config_id = 2272, gadget_id = 70300078, pos = { x = 2060.6, y = 248.1, z = -458.1 }, rot = { x = 0.0, y = 329.9, z = 0.0 }, level = 1 },
	{ config_id = 2273, gadget_id = 70300078, pos = { x = 2053.9, y = 248.0, z = -458.4 }, rot = { x = 0.0, y = 4.5, z = 0.0 }, level = 1 },
	{ config_id = 2276, gadget_id = 70300087, pos = { x = 2057.0, y = 248.1, z = -457.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2277, gadget_id = 70300087, pos = { x = 2054.3, y = 247.8, z = -441.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2278, gadget_id = 70300087, pos = { x = 2049.4, y = 247.5, z = -445.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 2279, gadget_id = 70220005, pos = { x = 2057.7, y = 248.0, z = -443.8 }, rot = { x = 0.0, y = 55.9, z = 0.0 }, level = 1 },
	{ config_id = 2280, gadget_id = 70220005, pos = { x = 2056.3, y = 248.0, z = -450.7 }, rot = { x = 0.0, y = 110.4, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_351", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_351", action = "action_EVENT_ANY_MONSTER_DIE_351" }
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
		monsters = { 984, 985, 987, 988, 990 },
		gadgets = { 2262, 2263, 2264, 2265, 2266, 2267, 2268, 2269, 2270, 2271, 2272, 2273, 2276, 2277, 2278, 2279, 2280 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_351" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_351(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_351(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2044, y=247, z=-448}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 991, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 992, delay_time = 2 }) then
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 993, delay_time = 2 }) then
	  return -1
	end
	
	return 0
end
