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
	{ config_id = 370, gadget_id = 70900206, pos = { x = -212.3, y = -11.0, z = -295.8 }, rot = { x = 0.0, y = 89.7, z = 0.0 }, level = 1 },
	{ config_id = 371, gadget_id = 71000004, pos = { x = -211.7, y = -11.0, z = -266.1 }, rot = { x = 0.0, y = 325.4, z = 0.0 }, level = 1 },
	{ config_id = 372, gadget_id = 71000004, pos = { x = -205.0, y = -11.0, z = -265.2 }, rot = { x = 0.0, y = 78.2, z = 0.0 }, level = 1 },
	{ config_id = 373, gadget_id = 71000004, pos = { x = -220.1, y = -11.0, z = -266.6 }, rot = { x = 0.0, y = 275.2, z = 0.0 }, level = 1 },
	{ config_id = 374, gadget_id = 71000004, pos = { x = -211.9, y = -11.0, z = -288.2 }, rot = { x = 0.0, y = 325.4, z = 0.0 }, level = 1 },
	{ config_id = 375, gadget_id = 71000004, pos = { x = -205.2, y = -11.0, z = -287.3 }, rot = { x = 0.0, y = 78.2, z = 0.0 }, level = 1 },
	{ config_id = 376, gadget_id = 71000004, pos = { x = -220.3, y = -11.0, z = -288.7 }, rot = { x = 0.0, y = 275.2, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 71, shape = RegionShape.SPHERE, radius = 5, pos = { x = -212.3, y = -10.7, z = -278.5 } },
	{ config_id = 72, shape = RegionShape.SPHERE, radius = 5, pos = { x = -212.2, y = -10.3, z = -296.4 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_71", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_71", action = "action_EVENT_ENTER_REGION_71", forbid_guest = false },
	{ name = "ENTER_REGION_72", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_72", action = "action_EVENT_ENTER_REGION_72", forbid_guest = false }
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
		gadgets = { 370, 371, 372, 373, 374, 375, 376 },
		regions = { 71, 72 },
		triggers = { "ENTER_REGION_71", "ENTER_REGION_72" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

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
	-- 将configid为 370 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 370, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_72(context, evt)
	if evt.param1 ~= 72 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_72(context, evt)
	-- 将configid为 370 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 370, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
