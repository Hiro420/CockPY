--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 86001, monster_id = 21010301, pos = { x = -98.9, y = 203.0, z = -996.9 }, rot = { x = 0.0, y = 333.5, z = 0.0 }, level = 1, drop_tag = "丘丘人", affix = { 1403, 1405, 1411 }, isElite = true, pose_id = 0 },
	{ config_id = 86002, monster_id = 21011001, pos = { x = -98.0, y = 203.0, z = -998.2 }, rot = { x = 0.0, y = 330.2, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 1403, 1405, 1411 }, isElite = true, pose_id = 32 },
	{ config_id = 86003, monster_id = 22010101, pos = { x = -103.0, y = 202.9, z = -991.1 }, rot = { x = 0.0, y = 28.1, z = 0.0 }, level = 1, drop_tag = "深渊法师", affix = { 1411 }, isElite = true },
	{ config_id = 86004, monster_id = 21010201, pos = { x = -97.1, y = 203.0, z = -987.5 }, rot = { x = 0.0, y = 66.6, z = 0.0 }, level = 1, drop_tag = "丘丘人", affix = { 1403, 1405, 1411 }, isElite = true, pose_id = 9011 },
	{ config_id = 86005, monster_id = 21010201, pos = { x = -109.2, y = 202.9, z = -994.5 }, rot = { x = 0.0, y = 255.7, z = 0.0 }, level = 1, drop_tag = "丘丘人", affix = { 1403, 1405, 1411 }, isElite = true, pose_id = 9011 },
	{ config_id = 86006, monster_id = 21010201, pos = { x = -104.5, y = 202.9, z = -989.4 }, rot = { x = 0.0, y = 169.6, z = 0.0 }, level = 1, drop_tag = "丘丘人", affix = { 1403, 1405, 1411 }, isElite = true },
	{ config_id = 86007, monster_id = 21010601, pos = { x = -108.2, y = 203.0, z = -985.8 }, rot = { x = 0.0, y = 28.1, z = 0.0 }, level = 1, drop_tag = "丘丘人", affix = { 1403, 1405, 1411 }, isElite = true },
	{ config_id = 86008, monster_id = 21010301, pos = { x = -99.9, y = 203.0, z = -998.0 }, rot = { x = 0.0, y = 28.1, z = 0.0 }, level = 1, drop_tag = "丘丘人", affix = { 1403, 1405, 1411 }, isElite = true },
	{ config_id = 86009, monster_id = 21010301, pos = { x = -97.5, y = 203.0, z = -995.1 }, rot = { x = 0.0, y = 28.1, z = 0.0 }, level = 1, drop_tag = "丘丘人", affix = { 1403, 1405, 1411 }, isElite = true },
	{ config_id = 86010, monster_id = 21010501, pos = { x = -108.0, y = 203.0, z = -984.0 }, rot = { x = 0.0, y = 140.2, z = 0.0 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 1007, 1403, 1405, 1411 }, isElite = true, pose_id = 32 },
	{ config_id = 86011, monster_id = 21010601, pos = { x = -105.4, y = 202.9, z = -991.7 }, rot = { x = 0.0, y = 73.3, z = 0.0 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1403, 1405, 1411 }, isElite = true, pose_id = 9011 },
	{ config_id = 86012, monster_id = 21030301, pos = { x = -97.1, y = 203.0, z = -997.3 }, rot = { x = 358.4, y = 335.1, z = 0.0 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 1403, 1405 }, isElite = true },
	{ config_id = 86013, monster_id = 21030301, pos = { x = -108.0, y = 203.0, z = -983.8 }, rot = { x = 0.0, y = 152.6, z = 0.0 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 1403, 1405 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 86014, gadget_id = 70220014, pos = { x = -110.1, y = 203.3, z = -999.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 86015, gadget_id = 70220014, pos = { x = -96.5, y = 202.9, z = -985.0 }, rot = { x = 357.2, y = 321.9, z = 0.0 }, level = 1 },
	{ config_id = 86016, gadget_id = 70300086, pos = { x = -111.4, y = 203.4, z = -997.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 86017, gadget_id = 70300089, pos = { x = -108.9, y = 202.9, z = -998.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 86018, gadget_id = 70300100, pos = { x = -110.8, y = 202.8, z = -995.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 86019, gadget_id = 70300100, pos = { x = -95.5, y = 203.1, z = -986.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 86020, gadget_id = 70220013, pos = { x = -110.2, y = 202.8, z = -984.7 }, rot = { x = 0.0, y = 141.9, z = 0.0 }, level = 32 },
	{ config_id = 86021, gadget_id = 70220014, pos = { x = -106.7, y = 202.9, z = -982.8 }, rot = { x = 0.0, y = 156.2, z = 0.0 }, level = 1 },
	{ config_id = 86022, gadget_id = 70220013, pos = { x = -105.1, y = 202.9, z = -982.4 }, rot = { x = 0.0, y = 94.6, z = 0.0 }, level = 32 },
	{ config_id = 86023, gadget_id = 70220013, pos = { x = -99.9, y = 202.9, z = -999.8 }, rot = { x = 0.0, y = 17.1, z = 0.0 }, level = 1 },
	{ config_id = 86024, gadget_id = 70300100, pos = { x = -104.2, y = 202.8, z = -991.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 86025, shape = RegionShape.SPHERE, radius = 24.4, pos = { x = -99.3, y = 202.9, z = -992.0 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_86025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_86025", action = "action_EVENT_ENTER_REGION_86025" },
	{ name = "ANY_MONSTER_DIE_86026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_86026", action = "action_EVENT_ANY_MONSTER_DIE_86026" },
	{ name = "ANY_MONSTER_DIE_86027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_86027", action = "action_EVENT_ANY_MONSTER_DIE_86027" }
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
		monsters = { 86001, 86002, 86004, 86005, 86010, 86011 },
		gadgets = { 86014, 86015, 86016, 86017, 86018, 86019, 86020, 86021, 86022, 86023, 86024 },
		regions = { 86025 },
		triggers = { "ENTER_REGION_86025", "ANY_MONSTER_DIE_86026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 86006, 86007, 86008, 86009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_86027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 86003, 86012, 86013 },
		gadgets = { },
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
function condition_EVENT_ENTER_REGION_86025(context, evt)
	if evt.param1 ~= 86025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_86025(context, evt)
	-- 调用提示id为 1110086 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110086) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_86026(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_86026(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108086, 2)
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-105, y=202, z=-995}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_86027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_86027(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108086, 3)
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-105, y=202, z=-995}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
		return -1
	end
	
	return 0
end
