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
	{ config_id = 567, gadget_id = 70900242, pos = { x = 1159.0, y = 208.0, z = 462.0 }, rot = { x = 0.0, y = 78.9, z = 0.0 }, level = 1, route_id = 50004014 },
	{ config_id = 568, gadget_id = 70500000, pos = { x = 1178.0, y = 261.0, z = 450.6 }, rot = { x = 0.0, y = 30.6, z = 0.0 }, level = 1, point_type = 20001001 }
}

-- 区域
regions = {
	{ config_id = 93, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1159.2, y = 232.9, z = 461.5 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_93", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_93", action = "action_EVENT_ENTER_REGION_93", trigger_count = 0, forbid_guest = false },
	{ name = "CLIENT_EXECUTE_94", event = EventType.EVENT_CLIENT_EXECUTE, source = "MoveStone", condition = "condition_EVENT_CLIENT_EXECUTE_94", action = "action_EVENT_CLIENT_EXECUTE_94", trigger_count = 0 }
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
	rand_suite = true,
	npcs = { }
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
		gadgets = { 567, 568 },
		regions = { 93 },
		triggers = { "ENTER_REGION_93", "CLIENT_EXECUTE_94" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_93(context, evt)
	if evt.param1 ~= 93 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_93(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 567, 50004015) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_94(context, evt)
	if 567 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_94(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 567, 50004014) then
	  return -1
	end
	
	return 0
end
