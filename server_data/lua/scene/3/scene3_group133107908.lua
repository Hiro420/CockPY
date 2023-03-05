--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 908002, monster_id = 28020403, pos = { x = -687.6, y = 220.6, z = 249.6 }, rot = { x = 0.0, y = 332.0, z = 0.0 }, level = 18, drop_tag = "走兽", disableWander = true, pose_id = 2 },
	{ config_id = 908003, monster_id = 28020403, pos = { x = -690.0, y = 220.6, z = 248.7 }, rot = { x = 0.0, y = 35.2, z = 0.0 }, level = 18, drop_tag = "走兽", disableWander = true, pose_id = 3 },
	{ config_id = 908004, monster_id = 28020403, pos = { x = -689.2, y = 220.6, z = 251.8 }, rot = { x = 0.0, y = 176.7, z = 0.0 }, level = 18, drop_tag = "走兽", disableWander = true, pose_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 908001, shape = RegionShape.SPHERE, radius = 1.93, pos = { x = -676.9, y = 221.0, z = 262.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_908001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_908001", action = "action_EVENT_ENTER_REGION_908001" },
	{ name = "MONSTER_BATTLE_908005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_908005", action = "action_EVENT_MONSTER_BATTLE_908005" },
	{ name = "ANY_MONSTER_DIE_908006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_908006", action = "action_EVENT_ANY_MONSTER_DIE_908006" }
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
		regions = { 908001 },
		triggers = { "ENTER_REGION_908001", "MONSTER_BATTLE_908005", "ANY_MONSTER_DIE_908006" },
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
function condition_EVENT_ENTER_REGION_908001(context, evt)
	if evt.param1 ~= 908001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_908001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 908002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 908003, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 908004, delay_time = 0 }) then
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-689，221，249），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-689, y=221, z=249}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 调用提示id为 1110064 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110064) then
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310790801") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_908005(context, evt)
	if 908004 == evt.param1 then
		return true
	end
	
	if 908003 == evt.param1 then
		return true
	end
	
	if 908002 == evt.param1 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_908005(context, evt)
	-- 调用提示id为 1110083 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110083) then
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1310790802") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_908006(context, evt)
	--判断死亡怪物的死亡类型是否为2，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 2 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_908006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310790802") then
	  return -1
	end
	
	-- 调用提示id为 1110083 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110083) then
		return -1
	end
	
	return 0
end
