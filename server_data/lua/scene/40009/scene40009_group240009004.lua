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
	{ config_id = 4001, gadget_id = 70380002, pos = { x = -127.0, y = -10.3, z = 95.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 4 },
	{ config_id = 4002, gadget_id = 70690006, pos = { x = -127.0, y = -26.8, z = 95.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4003, gadget_id = 70380002, pos = { x = -135.1, y = -8.3, z = 91.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 5 },
	{ config_id = 4004, gadget_id = 70690006, pos = { x = -135.1, y = -18.3, z = 91.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4005, gadget_id = 70380002, pos = { x = -145.1, y = -3.4, z = 89.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, route_id = 6 },
	{ config_id = 4006, gadget_id = 70690006, pos = { x = -145.1, y = -7.0, z = 89.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 4010, shape = RegionShape.CUBIC, size = { x = 5.0, y = 8.0, z = 5.0 }, pos = { x = -127.6, y = -12.4, z = 105.7 } }
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_4007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_4007", action = "action_EVENT_ANY_GADGET_DIE_4007" },
	{ name = "ANY_GADGET_DIE_4008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_4008", action = "action_EVENT_ANY_GADGET_DIE_4008" },
	{ name = "ANY_GADGET_DIE_4009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_4009", action = "action_EVENT_ANY_GADGET_DIE_4009" },
	{ name = "ENTER_REGION_4010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4010", action = "action_EVENT_ENTER_REGION_4010" }
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
		gadgets = { 4001, 4003, 4005 },
		regions = { 4010 },
		triggers = { "ANY_GADGET_DIE_4007", "ANY_GADGET_DIE_4008", "ANY_GADGET_DIE_4009", "ENTER_REGION_4010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 4002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 4004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 4006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_4007(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_4007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240009004, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_4008(context, evt)
	if 4003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_4008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240009004, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_4009(context, evt)
	if 4005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_4009(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240009004, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4010(context, evt)
	if evt.param1 ~= 4010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4010(context, evt)
	-- 触发镜头注目，注目位置为坐标（-145，-3，89），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-145, y=-3, z=89}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end
