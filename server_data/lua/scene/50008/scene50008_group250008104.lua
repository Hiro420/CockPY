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
	{ config_id = 104001, gadget_id = 70360025, pos = { x = -27.0, y = 4.0, z = -424.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 104003, gadget_id = 70220005, pos = { x = -17.6, y = 3.5, z = -424.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 104004, gadget_id = 70220005, pos = { x = -17.6, y = 4.0, z = -402.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 104005, gadget_id = 70360024, pos = { x = -27.0, y = 4.0, z = -402.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 104002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -17.6, y = 3.5, z = -424.1 } },
	{ config_id = 104006, shape = RegionShape.SPHERE, radius = 5, pos = { x = -17.6, y = 4.0, z = -402.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_104002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_104002", action = "action_EVENT_ENTER_REGION_104002", forbid_guest = false },
	{ name = "ENTER_REGION_104006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_104006", action = "action_EVENT_ENTER_REGION_104006", forbid_guest = false }
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
		gadgets = { 104003, 104004 },
		regions = { 104002, 104006 },
		triggers = { "ENTER_REGION_104002", "ENTER_REGION_104006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_104002(context, evt)
	if evt.param1 ~= 104002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_104002(context, evt)
	-- 创建id为104001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 104001 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_104006(context, evt)
	if evt.param1 ~= 104006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_104006(context, evt)
	-- 创建id为104005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 104005 }) then
	  return -1
	end
	
	return 0
end
