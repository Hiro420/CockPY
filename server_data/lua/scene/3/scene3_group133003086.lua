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
	{ config_id = 69, shape = RegionShape.SPHERE, radius = 46.23, pos = { x = 2176.8, y = 210.6, z = -881.6 } },
	{ config_id = 70, shape = RegionShape.SPHERE, radius = 6.35, pos = { x = 2442.2, y = 199.9, z = -1169.8 } },
	{ config_id = 71, shape = RegionShape.SPHERE, radius = 10.51, pos = { x = 2421.9, y = 200.9, z = -1162.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_69", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_69", action = "action_EVENT_ENTER_REGION_69" },
	{ name = "ENTER_REGION_70", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_70", action = "action_EVENT_ENTER_REGION_70" },
	{ name = "ENTER_REGION_71", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_71", action = "action_EVENT_ENTER_REGION_71" }
}

-- 变量
variables = {
	{ name = "is_TutorialOver", value = 0, no_refresh = true },
	{ name = "from_north", value = 0, no_refresh = false },
	{ name = "from_south", value = 0, no_refresh = false }
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
		regions = { 69, 70, 71 },
		triggers = { "ENTER_REGION_69", "ENTER_REGION_70", "ENTER_REGION_71" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_69(context, evt)
	if evt.param1 ~= 69 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_69(context, evt)
	-- 变量"is_TutorialOver"赋值为0
	ScriptLib.SetGroupVariableValue(context, "is_TutorialOver", 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_70(context, evt)
	if evt.param1 ~= 70 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_70(context, evt)
	-- 将本组内变量名为 "from_north" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "from_north", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_71(context, evt)
	if evt.param1 ~= 71 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_71(context, evt)
	--当教学阶段过后，玩家再次游历这片森林会触发遭遇战斗
	math.randomseed(os.time())
	local n = math.random(1,3)
	local c_tutorialover = ScriptLib.GetGroupVariableValue(context, "is_TutorialOver")
	
	local c_direction = ScriptLib.GetGroupVariableValue(context, "from_north")
	
	if c_tutorialover ~= 0 then
	-- 判断玩家从北方进入
	if c_direction ~= 0 then
		-- 重新生成指定group，指定suite
	
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003087, suite = n }) then
			return -1
		end
	
	end
	end
	return 0
end
