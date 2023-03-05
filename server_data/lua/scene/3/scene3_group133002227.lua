-- Trigger变量
local defs = {
	gadget_id_1 = 1941,
	gadget_id_2 = 1965,
	gadget_id_3 = 1966
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
	{ config_id = 1941, gadget_id = 70300055, pos = { x = 1818.4, y = 219.4, z = -410.7 }, rot = { x = 0.0, y = 111.2, z = 0.0 }, level = 10 },
	{ config_id = 1965, gadget_id = 70300055, pos = { x = 1815.4, y = 219.5, z = -415.5 }, rot = { x = 0.0, y = 130.4, z = 0.0 }, level = 10 },
	{ config_id = 1966, gadget_id = 70300055, pos = { x = 1814.4, y = 219.9, z = -394.0 }, rot = { x = 0.0, y = 277.5, z = 0.0 }, level = 10 },
	{ config_id = 1967, gadget_id = 70300063, pos = { x = 1814.4, y = 219.9, z = -394.0 }, rot = { x = 0.0, y = 277.0, z = 0.0 }, level = 10 },
	{ config_id = 1968, gadget_id = 70300063, pos = { x = 1818.4, y = 219.4, z = -410.7 }, rot = { x = 0.0, y = 111.9, z = 0.0 }, level = 10 },
	{ config_id = 1969, gadget_id = 70300063, pos = { x = 1815.4, y = 219.5, z = -415.5 }, rot = { x = 0.0, y = 131.1, z = 0.0 }, level = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_276", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_276", action = "action_EVENT_ANY_GADGET_DIE_276", trigger_count = 0 }
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
		gadgets = { 1967, 1968, 1969 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 1941, 1965, 1966 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_276" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_276(context, evt)
	if defs.gadget_id_1 == evt.param1 then
		return true
	end
	
	if defs.gadget_id_2== evt.param1 then
		return true
	end
	
	if defs.gadget_id_3 == evt.param1 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_276(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002227") then
	  return -1
	end
	
	return 0
end
