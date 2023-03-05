--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 49, monster_id = 21010401, pos = { x = -142.9, y = -5.9, z = 608.7 }, rot = { x = 0.0, y = 123.7, z = 0.0 }, level = 20, disableWander = true },
	{ config_id = 50, monster_id = 21010501, pos = { x = -130.7, y = -5.9, z = 619.8 }, rot = { x = 0.0, y = 165.4, z = 0.0 }, level = 20, disableWander = true },
	{ config_id = 51, monster_id = 21010901, pos = { x = -125.4, y = -5.9, z = 618.1 }, rot = { x = 0.0, y = 222.5, z = 0.0 }, level = 20, disableWander = true },
	{ config_id = 52, monster_id = 21011001, pos = { x = -137.1, y = -5.9, z = 618.2 }, rot = { x = 0.0, y = 147.9, z = 0.0 }, level = 20, disableWander = true },
	{ config_id = 54, monster_id = 21010401, pos = { x = -120.9, y = -5.9, z = 613.4 }, rot = { x = 0.0, y = 236.5, z = 0.0 }, level = 20, disableWander = true },
	{ config_id = 55, monster_id = 21010401, pos = { x = -141.9, y = -5.9, z = 614.0 }, rot = { x = 0.0, y = 139.6, z = 0.0 }, level = 20, disableWander = true },
	{ config_id = 56, monster_id = 21010401, pos = { x = -119.6, y = -5.9, z = 607.5 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 20, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 605, gadget_id = 70211001, pos = { x = -131.0, y = -6.0, z = 620.0 }, rot = { x = 0.0, y = 180.8, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 606, gadget_id = 70360002, pos = { x = -131.6, y = -7.7, z = 606.1 }, rot = { x = 0.0, y = 181.5, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_110", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_110", action = "action_EVENT_ANY_MONSTER_DIE_110", trigger_count = 0 },
	{ name = "GADGET_CREATE_111", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_111", action = "action_EVENT_GADGET_CREATE_111", trigger_count = 0 },
	{ name = "SELECT_OPTION_112", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_112", action = "action_EVENT_SELECT_OPTION_112", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 606 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_110", "GADGET_CREATE_111", "SELECT_OPTION_112" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_110(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250004063) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_110(context, evt)
	-- 创建id为605的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 605 }) then
	  return -1
	end
	
	-- 创建id为606的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_111(context, evt)
	if 606 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_111(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250004063, 606, {104}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_112(context, evt)
	if 606 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_112(context, evt)
	-- 将configid为 606 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 606, GadgetState.GearStart) then
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 51, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 49, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 54, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 55, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 56, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 50, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 52, delay_time = 0 }) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 606 }) then
		    return -1
		end
		
	
	return 0
end
