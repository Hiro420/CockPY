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
	{ config_id = 36, gadget_id = 70900033, pos = { x = 447.2, y = 3.2, z = -38.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 37, gadget_id = 70220020, pos = { x = 453.4, y = 4.0, z = -33.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 38, gadget_id = 70220020, pos = { x = 453.8, y = 4.0, z = -43.1 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 39, gadget_id = 70220020, pos = { x = 457.0, y = 4.0, z = -35.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 40, gadget_id = 70220020, pos = { x = 460.8, y = 4.0, z = -41.2 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 41, gadget_id = 70220020, pos = { x = 464.6, y = 4.0, z = -34.6 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 42, gadget_id = 70220020, pos = { x = 469.3, y = 4.0, z = -37.7 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 43, gadget_id = 70220020, pos = { x = 473.0, y = 4.0, z = -42.7 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 44, gadget_id = 70220020, pos = { x = 473.2, y = 4.0, z = -32.3 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 45, gadget_id = 70220020, pos = { x = 465.6, y = 4.0, z = -43.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 46, gadget_id = 70220020, pos = { x = 461.1, y = 4.0, z = -32.1 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 47, gadget_id = 70220020, pos = { x = 457.0, y = 4.0, z = -39.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 48, gadget_id = 70211032, pos = { x = 479.2, y = 4.0, z = -38.1 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, drop_tag = "战斗超级蒙德", state = GadgetState.ChestLocked, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 49, gadget_id = 70300057, pos = { x = 479.2, y = 4.0, z = -38.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_22", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_22", action = "action_EVENT_GADGET_STATE_CHANGE_22", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_23", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_23", action = "action_EVENT_GADGET_STATE_CHANGE_23", trigger_count = 0 }
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
		gadgets = { 36, 48 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_22", "GADGET_STATE_CHANGE_23" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_22(context, evt)
	if 36 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_22(context, evt)
	-- 创建id为37的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 37 }) then
	  return -1
	end
	
	-- 创建id为38的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 38 }) then
	  return -1
	end
	
	-- 创建id为39的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 39 }) then
	  return -1
	end
	
	-- 创建id为40的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 40 }) then
	  return -1
	end
	
	-- 创建id为41的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 41 }) then
	  return -1
	end
	
	-- 创建id为42的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 42 }) then
	  return -1
	end
	
	-- 创建id为43的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 43 }) then
	  return -1
	end
	
	-- 创建id为44的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 44 }) then
	  return -1
	end
	
	-- 创建id为45的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 45 }) then
	  return -1
	end
	
	-- 创建id为46的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 46 }) then
	  return -1
	end
	
	-- 创建id为47的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 47 }) then
	  return -1
	end
	
	-- 解锁目标48
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 48, state = GadgetState.Default }) then
		return -1
	end
	
	-- 创建id为49的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 49 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_23(context, evt)
	if 36 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_23(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 37 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 38 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 39 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 40 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 41 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 42 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 43 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 44 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 45 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 46 }) then
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 47 }) then
		    return -1
		end
		
	
	-- 将configid为 48 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48, GadgetState.ChestLocked) then
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 49 }) then
		    return -1
		end
		
	
	return 0
end
