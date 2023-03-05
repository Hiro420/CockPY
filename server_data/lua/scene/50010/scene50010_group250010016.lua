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
	{ config_id = 97, gadget_id = 70900254, pos = { x = 80.3, y = 4.0, z = -88.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 98, gadget_id = 70900254, pos = { x = 92.8, y = 31.5, z = -88.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 99, gadget_id = 70900254, pos = { x = 108.6, y = 31.3, z = -62.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 100, gadget_id = 70900254, pos = { x = 123.5, y = 4.0, z = -70.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 101, gadget_id = 70900254, pos = { x = 98.3, y = 63.3, z = -64.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 102, gadget_id = 70290012, pos = { x = 100.0, y = 86.7, z = -83.8 }, rot = { x = 0.0, y = 305.7, z = 0.0 }, level = 1 },
	{ config_id = 103, gadget_id = 70500000, pos = { x = 88.4, y = 92.5, z = -89.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 3101, owner = 102 },
	{ config_id = 104, gadget_id = 70500000, pos = { x = 88.4, y = 92.5, z = -89.8 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 1, point_type = 3102 },
	{ config_id = 105, gadget_id = 70900305, pos = { x = 88.4, y = 3.9, z = -89.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 119, gadget_id = 70290012, pos = { x = 90.1, y = 69.4, z = -74.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 120, gadget_id = 70500000, pos = { x = 78.3, y = 75.9, z = -76.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 3101, owner = 119 },
	{ config_id = 121, gadget_id = 70500000, pos = { x = 78.3, y = 75.9, z = -76.5 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 1, point_type = 3102 },
	{ config_id = 122, gadget_id = 70900305, pos = { x = 78.3, y = 3.9, z = -76.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 123, gadget_id = 70290012, pos = { x = 114.2, y = 31.6, z = -64.5 }, rot = { x = 0.0, y = 138.1, z = 0.0 }, level = 1 },
	{ config_id = 124, gadget_id = 70500000, pos = { x = 121.6, y = 38.1, z = -55.1 }, rot = { x = 0.0, y = 138.1, z = 0.0 }, level = 1, point_type = 3101, owner = 123 },
	{ config_id = 125, gadget_id = 70500000, pos = { x = 121.6, y = 38.1, z = -55.1 }, rot = { x = 90.0, y = 0.0, z = 0.0 }, level = 1, point_type = 3102 },
	{ config_id = 126, gadget_id = 70900305, pos = { x = 121.6, y = 3.9, z = -55.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_50", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_50", action = "action_EVENT_ANY_GADGET_DIE_50" },
	{ name = "ANY_GADGET_DIE_61", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_61", action = "action_EVENT_ANY_GADGET_DIE_61" },
	{ name = "ANY_GADGET_DIE_62", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_62", action = "action_EVENT_ANY_GADGET_DIE_62" }
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
	rand_suite = false,
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
		gadgets = { 97, 98, 99, 100, 101, 102, 103, 105, 119, 120, 122, 123, 124, 126 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_50", "ANY_GADGET_DIE_61", "ANY_GADGET_DIE_62" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_50(context, evt)
	if 103 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_50(context, evt)
	-- 创建采集物
	ScriptLib.CreateGather(context, { config_id = 104, gather_id = 50010035 })
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_61(context, evt)
	if 120 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_61(context, evt)
	-- 创建采集物
	ScriptLib.CreateGather(context, { config_id = 121, gather_id = 50010035 })
	
	-- 触发镜头注目，注目位置为坐标（78，75，-76），持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=78, y=75, z=-76}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 1, is_force = true, is_broadcast = false }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_62(context, evt)
	if 124 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_62(context, evt)
	-- 创建采集物
	ScriptLib.CreateGather(context, { config_id = 125, gather_id = 50010035 })
	
	return 0
end
