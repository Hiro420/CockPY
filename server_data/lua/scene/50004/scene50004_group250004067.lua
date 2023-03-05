--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 57, monster_id = 21010401, pos = { x = -64.7, y = -5.9, z = 381.7 }, rot = { x = 0.0, y = 157.3, z = 0.0 }, level = 10 },
	{ config_id = 58, monster_id = 21010401, pos = { x = -46.8, y = -5.9, z = 352.9 }, rot = { x = 0.0, y = 313.1, z = 0.0 }, level = 10 },
	{ config_id = 59, monster_id = 21010901, pos = { x = -43.9, y = -5.9, z = 380.1 }, rot = { x = 0.0, y = 236.6, z = 0.0 }, level = 10 },
	{ config_id = 60, monster_id = 21010901, pos = { x = -64.8, y = -5.9, z = 356.8 }, rot = { x = 0.0, y = 32.0, z = 0.0 }, level = 10 },
	{ config_id = 61, monster_id = 21030301, pos = { x = -50.0, y = -10.9, z = 373.2 }, rot = { x = 0.0, y = 232.0, z = 0.0 }, level = 12 },
	{ config_id = 62, monster_id = 21030301, pos = { x = -56.9, y = -10.9, z = 360.1 }, rot = { x = 0.0, y = 346.4, z = 0.0 }, level = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 613, gadget_id = 70360002, pos = { x = -54.0, y = -11.1, z = 367.5 }, rot = { x = 0.0, y = 268.9, z = 0.0 }, level = 1 },
	{ config_id = 614, gadget_id = 70211001, pos = { x = -53.7, y = -10.9, z = 364.9 }, rot = { x = 0.0, y = 275.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_114", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_114", action = "action_EVENT_GADGET_CREATE_114", trigger_count = 0 },
	{ name = "SELECT_OPTION_115", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_115", action = "action_EVENT_SELECT_OPTION_115", trigger_count = 0, forbid_guest = false },
	{ name = "ANY_MONSTER_DIE_116", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_116", action = "action_EVENT_ANY_MONSTER_DIE_116", trigger_count = 0 }
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
		gadgets = { 613 },
		regions = { },
		triggers = { "GADGET_CREATE_114", "SELECT_OPTION_115", "ANY_MONSTER_DIE_116" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_114(context, evt)
	if 613 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_114(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_115(context, evt)
	if 613 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_115(context, evt)
	-- 将configid为 613 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 613, GadgetState.GearStart) then
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 59, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 60, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 57, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 58, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 61, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 62, delay_time = 0 }) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 613 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_116(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250004067) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_116(context, evt)
	-- 创建id为614的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 614 }) then
	  return -1
	end
	
	-- 创建id为613的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 613 }) then
	  return -1
	end
	
	return 0
end
