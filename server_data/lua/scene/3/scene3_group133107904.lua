--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 904001, monster_id = 28030301, pos = { x = -552.8, y = 240.1, z = 320.0 }, rot = { x = 0.0, y = 354.9, z = 0.0 }, level = 18, drop_tag = "鸟类", disableWander = true, pose_id = 2 },
	{ config_id = 904003, monster_id = 28030305, pos = { x = -552.0, y = 240.1, z = 321.0 }, rot = { x = 0.0, y = 171.8, z = 0.0 }, level = 18, drop_tag = "鸟类", disableWander = true, pose_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 904006, shape = RegionShape.CUBIC, size = { x = 3.0, y = 3.0, z = 3.0 }, pos = { x = -565.3, y = 240.5, z = 314.6 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_904002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_904002", action = "action_EVENT_ANY_MONSTER_DIE_904002", trigger_count = 0 },
	{ name = "ENTER_REGION_904006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_904006", action = "action_EVENT_ENTER_REGION_904006" }
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
		regions = { 904006 },
		triggers = { "ANY_MONSTER_DIE_904002", "ENTER_REGION_904006" },
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
function condition_EVENT_ANY_MONSTER_DIE_904002(context, evt)
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_904002(context, evt)
	-- 调用提示id为 1110074 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110074) then
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310790402") then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_904006(context, evt)
	if evt.param1 ~= 904006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_904006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 904001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0.1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 904003, delay_time = 0.1 }) then
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-552，240，320），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-552, y=240, z=320}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 调用提示id为 1110051 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110051) then
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310790401") then
	  return -1
	end
	
	return 0
end
