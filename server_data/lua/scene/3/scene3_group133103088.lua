--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 88001, monster_id = 28020201, pos = { x = 643.1, y = 187.4, z = 1228.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "走兽", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 286, gadget_id = 70500000, pos = { x = 639.2, y = 187.2, z = 1212.7 }, rot = { x = 0.0, y = 1.6, z = 0.0 }, level = 24, point_type = 2007 },
	{ config_id = 287, gadget_id = 70500000, pos = { x = 640.6, y = 186.7, z = 1218.5 }, rot = { x = 0.0, y = 1.6, z = 0.0 }, level = 24, point_type = 2007 },
	{ config_id = 288, gadget_id = 70500000, pos = { x = 642.3, y = 187.1, z = 1225.7 }, rot = { x = 0.0, y = 1.6, z = 0.0 }, level = 24, point_type = 2007 },
	{ config_id = 289, gadget_id = 70500000, pos = { x = 644.1, y = 188.3, z = 1233.2 }, rot = { x = 0.0, y = 1.6, z = 0.0 }, level = 24, point_type = 2007 },
	{ config_id = 290, gadget_id = 70500000, pos = { x = 646.3, y = 191.2, z = 1243.2 }, rot = { x = 0.0, y = 1.6, z = 0.0 }, level = 24, point_type = 2007 },
	{ config_id = 291, gadget_id = 70500000, pos = { x = 647.5, y = 194.0, z = 1248.6 }, rot = { x = 0.0, y = 1.6, z = 0.0 }, level = 24, point_type = 2007 }
}

-- 区域
regions = {
	{ config_id = 91, shape = RegionShape.SPHERE, radius = 2, pos = { x = 643.2, y = 187.5, z = 1229.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_91", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_91", action = "action_EVENT_ENTER_REGION_91" },
	{ name = "TIMER_EVENT_92", event = EventType.EVENT_TIMER_EVENT, source = "group88timer", condition = "", action = "action_EVENT_TIMER_EVENT_92" }
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
		monsters = { 88001 },
		gadgets = { },
		regions = { 91 },
		triggers = { "ENTER_REGION_91" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 286, 287, 288, 289, 290, 291 },
		regions = { },
		triggers = { "TIMER_EVENT_92" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_91(context, evt)
	if evt.param1 ~= 91 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_91(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103088, 2)
	
	-- 延迟10秒后,向groupId为：133103088的对象,请求一次调用,并将string参数："group88timer" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133103088, "group88timer", 10) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_92(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103088, 2)
	
	return 0
end
