--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 290, monster_id = 20020101, pos = { x = 1833.0, y = 246.7, z = -594.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 9, drop_tag = "元素之核" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1384, gadget_id = 70620001, pos = { x = 1859.2, y = 258.3, z = -575.7 }, rot = { x = 0.0, y = 134.2, z = 0.0 }, level = 10, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 153, shape = RegionShape.SPHERE, radius = 42.4, pos = { x = 1858.0, y = 258.3, z = -575.1 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_129", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_129", action = "action_EVENT_ANY_MONSTER_DIE_129", tlog_tag = "酒庄_114_酒庄女神像_挑战成功" },
	{ name = "ENTER_REGION_153", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_153", action = "action_EVENT_ENTER_REGION_153" }
}

-- 变量
variables = {
	{ name = "isoff", value = 0, no_refresh = true }
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
		monsters = { 290 },
		gadgets = { 1384 },
		regions = { 153 },
		triggers = { "ANY_MONSTER_DIE_129", "ENTER_REGION_153" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_129(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_129(context, evt)
		-- 杀死Group内所有实体
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133002114, kill_policy = GroupKillPolicy.GROUP_KILL_ALL }) then
			return -1
		end
		
	
	-- 触发镜头注目，注目位置为坐标（1859，264，-575），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1859, y=264, z=-575}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 3 }) then
					return -1
				end 
	
	-- 将本组内变量名为 "isoff" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isoff", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_153(context, evt)
	if evt.param1 ~= 153 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"isoff"为0
	if ScriptLib.GetGroupVariableValue(context, "isoff") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_153(context, evt)
	-- 调用提示id为 1003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1003) then
		return -1
	end
	
	return 0
end
