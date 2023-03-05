--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 256001, monster_id = 21020301, pos = { x = 632.6, y = 200.0, z = 564.6 }, rot = { x = 0.0, y = 32.7, z = 0.0 }, level = 19, drop_id = 1000100, affix = { 1001 }, isElite = true },
	{ config_id = 256002, monster_id = 21011001, pos = { x = 636.4, y = 200.0, z = 561.2 }, rot = { x = 0.0, y = 17.2, z = 0.0 }, level = 19, drop_id = 1000100 },
	{ config_id = 256003, monster_id = 21010301, pos = { x = 628.5, y = 200.1, z = 569.2 }, rot = { x = 0.0, y = 61.3, z = 0.0 }, level = 19, drop_id = 1000100 },
	{ config_id = 256004, monster_id = 21011001, pos = { x = 628.2, y = 200.0, z = 564.9 }, rot = { x = 0.0, y = 10.8, z = 0.0 }, level = 19, drop_id = 1000100 },
	{ config_id = 256005, monster_id = 21011001, pos = { x = 631.1, y = 200.0, z = 561.5 }, rot = { x = 0.0, y = 25.7, z = 0.0 }, level = 19, drop_id = 1000100 },
	{ config_id = 256006, monster_id = 21010301, pos = { x = 636.5, y = 200.0, z = 564.8 }, rot = { x = 0.0, y = 19.8, z = 0.0 }, level = 19, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 256007, shape = RegionShape.SPHERE, radius = 4.08, pos = { x = 635.3, y = 200.0, z = 578.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_256007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_256007", action = "action_EVENT_ENTER_REGION_256007" },
	{ name = "ANY_MONSTER_DIE_256008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_256008", action = "action_EVENT_ANY_MONSTER_DIE_256008" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { 256007 },
		triggers = { "ENTER_REGION_256007", "ANY_MONSTER_DIE_256008" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_256007(context, evt)
	if evt.param1 ~= 256007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_256007(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=634, y=200, z=549}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 256001, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1.2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 256002, delay_time = 1.2 }) then
	  return -1
	end
	
	-- 延迟1.2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 256003, delay_time = 1.2 }) then
	  return -1
	end
	
	-- 延迟1.2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 256004, delay_time = 1.2 }) then
	  return -1
	end
	
	-- 延迟1.2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 256005, delay_time = 1.2 }) then
	  return -1
	end
	
	-- 延迟1.2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 256006, delay_time = 1.2 }) then
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310525601") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_256008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_256008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310525602") then
	  return -1
	end
	
	return 0
end
