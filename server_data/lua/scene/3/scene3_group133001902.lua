-- Trigger变量
local defs = {
	gadget_id_1 = 186,
	gadget_id_2 = 217
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 186, shape = RegionShape.SPHERE, radius = 56.8, pos = { x = 1377.4, y = 234.4, z = -1562.4 } },
	{ config_id = 217, shape = RegionShape.SPHERE, radius = 4, pos = { x = 1372.8, y = 236.0, z = -1570.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_186", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_186", action = "action_EVENT_ENTER_REGION_186", trigger_count = 0 },
	{ name = "ENTER_REGION_217", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_217", action = "", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "JZ", value = 0, no_refresh = false }
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
		monsters = { },
		gadgets = { },
		regions = { 186, 217 },
		triggers = { "ENTER_REGION_186", "ENTER_REGION_217" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_186(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 41801) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_1 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_ENTER_REGION_186(context, evt)
	-- 触发镜头注目，注目位置为坐标（1373，254，-1570），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1373, y=254, z=-1570}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_217(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 41803) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_2 then
		return true
	end
	return false
end

-- 触发操作
