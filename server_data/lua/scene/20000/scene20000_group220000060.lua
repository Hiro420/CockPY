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
	{ config_id = 328, gadget_id = 70900238, pos = { x = 5.9, y = 1.3, z = 380.6 }, rot = { x = 0.0, y = 180.3, z = 0.0 }, level = 1 },
	{ config_id = 329, gadget_id = 70900238, pos = { x = -18.1, y = 1.3, z = 375.6 }, rot = { x = 0.0, y = 180.3, z = 0.0 }, level = 1 },
	{ config_id = 330, gadget_id = 70900238, pos = { x = -18.3, y = 1.3, z = 381.5 }, rot = { x = 0.0, y = 180.3, z = 0.0 }, level = 1 },
	{ config_id = 331, gadget_id = 70900238, pos = { x = -22.2, y = 1.3, z = 390.2 }, rot = { x = 0.0, y = 180.3, z = 0.0 }, level = 1 },
	{ config_id = 332, gadget_id = 70900238, pos = { x = -25.3, y = 1.3, z = 398.8 }, rot = { x = 0.0, y = 180.3, z = 0.0 }, level = 1 },
	{ config_id = 333, gadget_id = 70900238, pos = { x = -23.2, y = 1.3, z = 407.6 }, rot = { x = 0.0, y = 180.3, z = 0.0 }, level = 1 },
	{ config_id = 334, gadget_id = 70900238, pos = { x = -26.3, y = 1.3, z = 422.3 }, rot = { x = 0.0, y = 180.3, z = 0.0 }, level = 1 },
	{ config_id = 335, gadget_id = 70900238, pos = { x = -23.7, y = 1.3, z = 428.5 }, rot = { x = 0.0, y = 180.3, z = 0.0 }, level = 1 },
	{ config_id = 336, gadget_id = 70900238, pos = { x = -20.5, y = 1.3, z = 435.3 }, rot = { x = 0.0, y = 180.3, z = 0.0 }, level = 1 },
	{ config_id = 337, gadget_id = 70900238, pos = { x = -30.0, y = 1.3, z = 358.4 }, rot = { x = 0.0, y = 180.3, z = 0.0 }, level = 1 },
	{ config_id = 338, gadget_id = 70900238, pos = { x = -49.0, y = 1.3, z = 358.6 }, rot = { x = 0.0, y = 180.3, z = 0.0 }, level = 1 },
	{ config_id = 339, gadget_id = 70900238, pos = { x = -8.4, y = 1.4, z = 368.9 }, rot = { x = 0.0, y = 180.3, z = 0.0 }, level = 1 },
	{ config_id = 340, gadget_id = 70220014, pos = { x = -39.2, y = 0.5, z = 372.5 }, rot = { x = 0.0, y = 23.5, z = 0.0 }, level = 1 },
	{ config_id = 341, gadget_id = 70220014, pos = { x = -39.2, y = 0.5, z = 381.1 }, rot = { x = 0.0, y = 359.5, z = 0.0 }, level = 1 },
	{ config_id = 342, gadget_id = 70220014, pos = { x = -39.4, y = 0.5, z = 388.0 }, rot = { x = 0.0, y = 295.1, z = 0.0 }, level = 1 },
	{ config_id = 343, gadget_id = 70220014, pos = { x = -39.9, y = 0.5, z = 395.8 }, rot = { x = 0.0, y = 20.6, z = 0.0 }, level = 1 },
	{ config_id = 344, gadget_id = 70220014, pos = { x = -40.2, y = 0.5, z = 404.7 }, rot = { x = 0.0, y = 262.7, z = 0.0 }, level = 1 },
	{ config_id = 345, gadget_id = 70220014, pos = { x = -49.2, y = 0.5, z = 429.4 }, rot = { x = 0.0, y = 347.6, z = 0.0 }, level = 1 },
	{ config_id = 346, gadget_id = 70220014, pos = { x = -29.8, y = 0.5, z = 372.0 }, rot = { x = 0.0, y = 260.8, z = 0.0 }, level = 1 },
	{ config_id = 347, gadget_id = 70220014, pos = { x = -30.0, y = 0.5, z = 379.9 }, rot = { x = 0.0, y = 273.3, z = 0.0 }, level = 1 },
	{ config_id = 348, gadget_id = 70220014, pos = { x = -29.7, y = 0.5, z = 387.4 }, rot = { x = 0.0, y = 352.5, z = 0.0 }, level = 1 },
	{ config_id = 349, gadget_id = 70220014, pos = { x = -30.0, y = 0.5, z = 395.5 }, rot = { x = 0.0, y = 248.9, z = 0.0 }, level = 1 },
	{ config_id = 350, gadget_id = 70220014, pos = { x = -29.9, y = 0.5, z = 403.4 }, rot = { x = 0.0, y = 150.6, z = 0.0 }, level = 1 },
	{ config_id = 351, gadget_id = 70220014, pos = { x = -30.5, y = 15.8, z = 383.0 }, rot = { x = 0.0, y = 202.2, z = 0.0 }, level = 1 },
	{ config_id = 352, gadget_id = 70220014, pos = { x = 6.0, y = 0.5, z = 415.1 }, rot = { x = 0.0, y = 202.2, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_106", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_106", action = "action_EVENT_ANY_GADGET_DIE_106", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_107", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_107", action = "action_EVENT_ANY_GADGET_DIE_107", trigger_count = 0 }
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
		gadgets = { 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 352 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_106", "ANY_GADGET_DIE_107" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_106(context, evt)
	if 328 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_106(context, evt)
	-- 创建id为328的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 328 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_107(context, evt)
	if 352 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_107(context, evt)
	-- 创建id为352的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 352 }) then
	  return -1
	end
	
	-- 调用提示id为 1001003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1001003) then
		return -1
	end
	
	return 0
end
