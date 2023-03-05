--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1273, monster_id = 21010201, pos = { x = 1277.2, y = 258.2, z = -1437.1 }, rot = { x = 0.0, y = 127.8, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9011 },
	{ config_id = 1274, monster_id = 21010201, pos = { x = 1256.3, y = 258.6, z = -1411.1 }, rot = { x = 0.0, y = 82.1, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 1275, monster_id = 21010201, pos = { x = 1261.6, y = 258.6, z = -1411.1 }, rot = { x = 0.0, y = 281.4, z = 0.0 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9012 },
	{ config_id = 1276, monster_id = 21010601, pos = { x = 1258.9, y = 258.6, z = -1408.0 }, rot = { x = 0.0, y = 180.7, z = 0.0 }, level = 15, drop_id = 1000200, affix = { 1901 }, isElite = true, pose_id = 9003 },
	{ config_id = 1373, monster_id = 21010201, pos = { x = 1276.4, y = 258.2, z = -1437.5 }, rot = { x = 0.0, y = 121.5, z = 0.0 }, level = 15, drop_id = 1000200, disableWander = true, affix = { 1901 }, isElite = true, pose_id = 9016 },
	{ config_id = 1374, monster_id = 21010601, pos = { x = 1259.5, y = 258.6, z = -1408.1 }, rot = { x = 0.0, y = 180.7, z = 0.0 }, level = 15, drop_tag = "丘丘人", pose_id = 9003 },
	{ config_id = 1375, monster_id = 21011001, pos = { x = 1252.2, y = 261.5, z = -1446.8 }, rot = { x = 0.0, y = 165.7, z = 0.0 }, level = 19, drop_id = 1000200, disableWander = true, affix = { 1901 }, isElite = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3174, gadget_id = 70210102, pos = { x = 1252.8, y = 261.5, z = -1446.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 3175, gadget_id = 70220014, pos = { x = 1252.6, y = 261.5, z = -1445.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 3176, gadget_id = 70220014, pos = { x = 1273.1, y = 257.7, z = -1438.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 3177, gadget_id = 70220014, pos = { x = 1277.3, y = 257.6, z = -1432.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 3178, gadget_id = 70220013, pos = { x = 1278.1, y = 257.5, z = -1433.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 3179, gadget_id = 70210102, pos = { x = 1275.3, y = 258.2, z = -1438.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, chest_drop_id = 1000100, drop_count = 1, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 3180, gadget_id = 70310004, pos = { x = 1258.5, y = 258.6, z = -1410.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 3181, gadget_id = 70310001, pos = { x = 1252.9, y = 258.6, z = -1408.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 3182, gadget_id = 70310001, pos = { x = 1257.8, y = 258.6, z = -1404.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 3183, gadget_id = 70310001, pos = { x = 1264.8, y = 258.6, z = -1407.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 3184, gadget_id = 70310001, pos = { x = 1263.0, y = 258.6, z = -1413.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 3294, gadget_id = 70300109, pos = { x = 1411.2, y = 234.7, z = -1539.0 }, rot = { x = 0.0, y = 266.9, z = 0.0 }, level = 15 },
	{ config_id = 3295, gadget_id = 70300109, pos = { x = 1396.9, y = 234.4, z = -1538.5 }, rot = { x = 0.0, y = 266.9, z = 0.0 }, level = 15 },
	{ config_id = 3296, gadget_id = 70300109, pos = { x = 1384.3, y = 234.4, z = -1543.0 }, rot = { x = 0.0, y = 279.5, z = 0.0 }, level = 15 },
	{ config_id = 3297, gadget_id = 70300109, pos = { x = 1368.0, y = 235.4, z = -1539.1 }, rot = { x = 0.0, y = 279.5, z = 0.0 }, level = 15 },
	{ config_id = 3298, gadget_id = 70300109, pos = { x = 1350.9, y = 236.5, z = -1535.1 }, rot = { x = 0.0, y = 279.5, z = 0.0 }, level = 15 },
	{ config_id = 3299, gadget_id = 70300109, pos = { x = 1333.2, y = 241.4, z = -1532.7 }, rot = { x = 0.0, y = 262.7, z = 0.0 }, level = 15 },
	{ config_id = 3300, gadget_id = 70300109, pos = { x = 1310.3, y = 246.8, z = -1534.6 }, rot = { x = 346.6, y = 272.6, z = 357.7 }, level = 15 },
	{ config_id = 3301, gadget_id = 70300109, pos = { x = 1288.3, y = 251.8, z = -1528.6 }, rot = { x = 0.0, y = 302.6, z = 0.0 }, level = 15 },
	{ config_id = 3302, gadget_id = 70300109, pos = { x = 1276.5, y = 252.8, z = -1519.9 }, rot = { x = 0.0, y = 336.6, z = 0.0 }, level = 15 },
	{ config_id = 3303, gadget_id = 70300109, pos = { x = 1275.8, y = 254.7, z = -1506.0 }, rot = { x = 0.0, y = 42.2, z = 0.0 }, level = 15 },
	{ config_id = 3304, gadget_id = 70300109, pos = { x = 1282.2, y = 254.7, z = -1491.5 }, rot = { x = 0.0, y = 285.4, z = 0.0 }, level = 15 },
	{ config_id = 3305, gadget_id = 70300109, pos = { x = 1269.3, y = 255.1, z = -1482.4 }, rot = { x = 0.0, y = 26.7, z = 0.0 }, level = 15 },
	{ config_id = 3306, gadget_id = 70300109, pos = { x = 1274.7, y = 255.1, z = -1468.1 }, rot = { x = 0.0, y = 329.7, z = 0.0 }, level = 15 },
	{ config_id = 3307, gadget_id = 70300109, pos = { x = 1264.4, y = 255.2, z = -1449.7 }, rot = { x = 0.0, y = 333.0, z = 0.0 }, level = 15 },
	{ config_id = 3308, gadget_id = 70300109, pos = { x = 1258.8, y = 256.0, z = -1427.1 }, rot = { x = 0.0, y = 356.5, z = 0.0 }, level = 15 },
	{ config_id = 3309, gadget_id = 70300109, pos = { x = 1258.1, y = 258.6, z = -1415.8 }, rot = { x = 0.0, y = 356.5, z = 0.0 }, level = 15 },
	{ config_id = 3310, gadget_id = 70300109, pos = { x = 1267.7, y = 257.3, z = -1428.5 }, rot = { x = 0.0, y = 129.3, z = 0.0 }, level = 15 },
	{ config_id = 3311, gadget_id = 70300109, pos = { x = 1252.0, y = 254.9, z = -1437.7 }, rot = { x = 0.0, y = 198.7, z = 0.0 }, level = 15 },
	{ config_id = 3323, gadget_id = 70300086, pos = { x = 1387.9, y = 233.9, z = -1536.9 }, rot = { x = 0.0, y = 0.0, z = 88.5 }, level = 15 },
	{ config_id = 3324, gadget_id = 70220014, pos = { x = 1445.9, y = 239.7, z = -1584.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 3325, gadget_id = 70220014, pos = { x = 1451.1, y = 241.5, z = -1602.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 3326, gadget_id = 70220014, pos = { x = 1487.7, y = 243.0, z = -1586.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 3327, gadget_id = 70220014, pos = { x = 1542.2, y = 243.1, z = -1584.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 3328, gadget_id = 70220014, pos = { x = 1578.4, y = 244.2, z = -1572.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 3329, gadget_id = 70220014, pos = { x = 1597.8, y = 246.2, z = -1602.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_493", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_493", action = "action_EVENT_GADGET_STATE_CHANGE_493", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_494", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_494", action = "action_EVENT_GADGET_STATE_CHANGE_494" },
	{ name = "GADGET_STATE_CHANGE_495", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_495", action = "action_EVENT_GADGET_STATE_CHANGE_495" },
	{ name = "ANY_MONSTER_DIE_496", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_496", action = "action_EVENT_ANY_MONSTER_DIE_496" }
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
		monsters = { },
		gadgets = { 3323, 3324, 3325, 3326, 3327, 3328, 3329 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1273, 1274, 1275, 1276 },
		gadgets = { 3174, 3175, 3176, 3177, 3178, 3179, 3180, 3181, 3182, 3183, 3184, 3294, 3295, 3296, 3297, 3298, 3299, 3300, 3301, 3302, 3303, 3304, 3305, 3306, 3307, 3308, 3309, 3310, 3311, 3323, 3324, 3325, 3326, 3327, 3328, 3329 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_493", "GADGET_STATE_CHANGE_494", "GADGET_STATE_CHANGE_495", "ANY_MONSTER_DIE_496" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 1274, 1275, 1373, 1374 },
		gadgets = { 3174, 3175, 3176, 3177, 3178, 3179, 3180, 3181, 3182, 3183, 3184, 3294, 3295, 3296, 3297, 3298, 3299, 3300, 3301, 3302, 3303, 3304, 3305, 3306, 3307, 3308, 3309, 3310, 3311, 3323, 3324, 3325, 3326, 3327, 3328, 3329 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 1273, 1374, 1375 },
		gadgets = { 3174, 3175, 3176, 3177, 3178, 3179, 3180, 3181, 3182, 3183, 3184, 3294, 3295, 3296, 3297, 3298, 3299, 3300, 3301, 3302, 3303, 3304, 3305, 3306, 3307, 3308, 3309, 3310, 3311, 3323, 3324, 3325, 3326, 3327, 3328, 3329 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_493(context, evt)
	if 3179 == evt.param2 and GadgetState.ChestOpened == evt.param1 then
		return true
	end
	
	if 3174 == evt.param2 and GadgetState.ChestOpened == evt.param1 then
		return false
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_493(context, evt)
	-- 调用提示id为 1110004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110004) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_494(context, evt)
	if 3179 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_494(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133001303, monsters = {}, gadgets = {3310} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_495(context, evt)
	if 3174 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_495(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133001303, monsters = {}, gadgets = {3311} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_496(context, evt)
	if 1276 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_496(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133001303, monsters = {}, gadgets = {3309,3308} }) then
			return -1
		end
	
	return 0
end
