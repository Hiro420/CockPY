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
	{ config_id = 1406, gadget_id = 70900039, pos = { x = 2652.4, y = 203.0, z = -679.5 }, rot = { x = 0.0, y = 120.8, z = 0.0 }, level = 2 },
	{ config_id = 1407, gadget_id = 70690006, pos = { x = 2652.4, y = 203.0, z = -679.5 }, rot = { x = 0.0, y = 77.9, z = 0.0 }, level = 2 },
	{ config_id = 1408, gadget_id = 70690001, pos = { x = 2652.4, y = 210.0, z = -679.5 }, rot = { x = 90.0, y = 77.9, z = 0.0 }, level = 2 },
	{ config_id = 1409, gadget_id = 70690001, pos = { x = 2652.4, y = 225.0, z = -679.5 }, rot = { x = 90.0, y = 77.9, z = 0.0 }, level = 2 },
	{ config_id = 1410, gadget_id = 70690001, pos = { x = 2652.4, y = 240.0, z = -679.5 }, rot = { x = 90.0, y = 77.9, z = 0.0 }, level = 2 },
	{ config_id = 1411, gadget_id = 70690001, pos = { x = 2652.4, y = 255.0, z = -679.5 }, rot = { x = 90.0, y = 77.9, z = 0.0 }, level = 2 },
	{ config_id = 1412, gadget_id = 70690001, pos = { x = 2652.4, y = 270.0, z = -679.5 }, rot = { x = 90.0, y = 77.9, z = 0.0 }, level = 2 },
	{ config_id = 1413, gadget_id = 70500000, pos = { x = 2652.4, y = 285.0, z = -679.5 }, rot = { x = 0.0, y = 135.9, z = 0.0 }, level = 2, point_type = 4001001 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_281", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_281", action = "action_EVENT_GADGET_STATE_CHANGE_281" }
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
	rand_suite = true
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
		gadgets = { 1406, 1413 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_281" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_281(context, evt)
	if 1406 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_281(context, evt)
	-- 创建id为1409的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1409 }) then
	  return -1
	end
	
	-- 创建id为1410的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1410 }) then
	  return -1
	end
	
	-- 创建id为1411的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1411 }) then
	  return -1
	end
	
	-- 创建id为1412的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1412 }) then
	  return -1
	end
	
	-- 创建id为1407的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1407 }) then
	  return -1
	end
	
	-- 创建id为1408的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1408 }) then
	  return -1
	end
	
	-- 创建id为1413的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1413 }) then
	  return -1
	end
	
	return 0
end
