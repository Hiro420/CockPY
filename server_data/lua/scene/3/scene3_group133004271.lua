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
	{ config_id = 271001, gadget_id = 70220001, pos = { x = 2365.9, y = 260.0, z = -709.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 2 },
	{ config_id = 271002, gadget_id = 70220001, pos = { x = 2375.0, y = 260.0, z = -702.0 }, rot = { x = 0.0, y = 339.6, z = 0.0 }, level = 2 },
	{ config_id = 271004, gadget_id = 70220001, pos = { x = 2329.7, y = 260.0, z = -691.2 }, rot = { x = 0.0, y = 125.8, z = 0.0 }, level = 2 },
	{ config_id = 271005, gadget_id = 70220001, pos = { x = 2329.1, y = 260.0, z = -688.3 }, rot = { x = 0.0, y = 25.1, z = 0.0 }, level = 2 },
	{ config_id = 271006, gadget_id = 70220001, pos = { x = 2369.0, y = 260.0, z = -707.5 }, rot = { x = 0.0, y = 46.2, z = 0.0 }, level = 2 },
	{ config_id = 271007, gadget_id = 70220001, pos = { x = 2366.7, y = 260.0, z = -707.0 }, rot = { x = 0.0, y = 63.2, z = 0.0 }, level = 2 },
	{ config_id = 271008, gadget_id = 70220001, pos = { x = 2327.2, y = 260.0, z = -683.0 }, rot = { x = 0.0, y = 290.9, z = 0.0 }, level = 2 },
	{ config_id = 271010, gadget_id = 70220001, pos = { x = 2324.5, y = 260.0, z = -682.0 }, rot = { x = 0.0, y = 3.4, z = 0.0 }, level = 2 },
	{ config_id = 271011, gadget_id = 70220001, pos = { x = 2374.6, y = 260.0, z = -708.9 }, rot = { x = 0.0, y = 93.3, z = 0.0 }, level = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_271012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_271012", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 271001, 271002, 271004, 271005, 271006, 271007, 271008, 271010, 271011 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_271012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_271012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330042711") then
	  return -1
	end
	
	return 0
end
