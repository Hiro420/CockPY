--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 255001, monster_id = 21020201, pos = { x = 662.8, y = 200.8, z = 129.5 }, rot = { x = 0.0, y = 186.8, z = 0.0 }, level = 16, drop_id = 1000100, affix = { 1001 }, isElite = true },
	{ config_id = 255002, monster_id = 21010901, pos = { x = 666.1, y = 201.2, z = 132.2 }, rot = { x = 0.0, y = 185.0, z = 0.0 }, level = 16, drop_id = 1000100 },
	{ config_id = 255003, monster_id = 21010701, pos = { x = 659.7, y = 200.6, z = 128.1 }, rot = { x = 0.0, y = 175.9, z = 0.0 }, level = 19, drop_id = 1000100 },
	{ config_id = 255004, monster_id = 21010901, pos = { x = 659.6, y = 200.6, z = 132.0 }, rot = { x = 0.0, y = 168.9, z = 0.0 }, level = 16, drop_id = 1000100 },
	{ config_id = 255005, monster_id = 21010901, pos = { x = 662.8, y = 200.8, z = 133.1 }, rot = { x = 0.0, y = 183.8, z = 0.0 }, level = 16, drop_id = 1000100 },
	{ config_id = 255008, monster_id = 21010701, pos = { x = 665.8, y = 201.0, z = 128.4 }, rot = { x = 0.0, y = 177.9, z = 0.0 }, level = 16, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 255006, shape = RegionShape.SPHERE, radius = 4.08, pos = { x = 665.6, y = 201.1, z = 116.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_255006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_255006", action = "action_EVENT_ENTER_REGION_255006" },
	{ name = "ANY_MONSTER_DIE_255007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_255007", action = "action_EVENT_ANY_MONSTER_DIE_255007" }
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
		regions = { 255006 },
		triggers = { "ENTER_REGION_255006", "ANY_MONSTER_DIE_255007" },
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
function condition_EVENT_ENTER_REGION_255006(context, evt)
	if evt.param1 ~= 255006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_255006(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=665, y=200, z=116}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 255001, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1.2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 255002, delay_time = 1.2 }) then
	  return -1
	end
	
	-- 延迟1.2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 255003, delay_time = 1.2 }) then
	  return -1
	end
	
	-- 延迟1.2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 255004, delay_time = 1.2 }) then
	  return -1
	end
	
	-- 延迟1.2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 255005, delay_time = 1.2 }) then
	  return -1
	end
	
	-- 延迟1.2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 255008, delay_time = 1.2 }) then
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310525501") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_255007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_255007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310525502") then
	  return -1
	end
	
	return 0
end
