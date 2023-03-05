--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 21010501, pos = { x = 3.6, y = -2.9, z = 27.0 }, rot = { x = 0.0, y = 356.9, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 4002, monster_id = 21010901, pos = { x = -7.9, y = 8.0, z = -14.9 }, rot = { x = 0.0, y = 5.3, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 4003, monster_id = 21011001, pos = { x = 13.8, y = 8.1, z = -15.0 }, rot = { x = 0.0, y = 349.6, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 4004, monster_id = 20011201, pos = { x = 1.2, y = 1.1, z = -7.0 }, rot = { x = 0.0, y = 85.1, z = 0.0 }, level = 1 },
	{ config_id = 4005, monster_id = 20011201, pos = { x = 6.5, y = 1.1, z = -7.1 }, rot = { x = 0.0, y = 263.8, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4006, gadget_id = 70220005, pos = { x = 15.3, y = 8.0, z = -15.1 }, rot = { x = 0.0, y = 210.9, z = 0.0 }, level = 15 },
	{ config_id = 4007, gadget_id = 70211001, pos = { x = -10.2, y = 0.0, z = 5.0 }, rot = { x = 0.0, y = 15.1, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 4008, gadget_id = 70350005, pos = { x = 3.9, y = 0.7, z = -21.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4009, gadget_id = 70310001, pos = { x = 17.5, y = 1.0, z = 19.7 }, rot = { x = 0.0, y = 156.4, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4010, gadget_id = 70310001, pos = { x = -9.5, y = 0.9, z = 19.5 }, rot = { x = 0.0, y = 73.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4011, gadget_id = 70211101, pos = { x = 5.4, y = -3.0, z = 55.2 }, rot = { x = 0.0, y = 185.7, z = 0.0 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 4012, gadget_id = 70211001, pos = { x = -9.9, y = 8.0, z = -18.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 4013, gadget_id = 70220004, pos = { x = -0.3, y = -2.8, z = 45.6 }, rot = { x = 0.0, y = 277.6, z = 0.0 }, level = 15 },
	{ config_id = 4014, gadget_id = 70220004, pos = { x = 13.7, y = 1.0, z = -3.5 }, rot = { x = 0.0, y = 313.4, z = 0.0 }, level = 15 },
	{ config_id = 4015, gadget_id = 70220013, pos = { x = 14.6, y = 8.0, z = -16.7 }, rot = { x = 0.0, y = 215.3, z = 0.0 }, level = 1 },
	{ config_id = 4016, gadget_id = 70220013, pos = { x = -5.7, y = 8.0, z = -16.4 }, rot = { x = 0.0, y = 37.3, z = 0.0 }, level = 1 },
	{ config_id = 4017, gadget_id = 70220014, pos = { x = -7.4, y = 8.0, z = -17.2 }, rot = { x = 0.0, y = 235.2, z = 0.0 }, level = 1 },
	{ config_id = 4018, gadget_id = 70220002, pos = { x = 1.2, y = 1.0, z = -6.8 }, rot = { x = 0.0, y = 230.2, z = 0.0 }, level = 1 },
	{ config_id = 4019, gadget_id = 70220002, pos = { x = 6.4, y = 1.0, z = -6.9 }, rot = { x = 0.0, y = 274.4, z = 0.0 }, level = 1 },
	{ config_id = 4020, gadget_id = 70220004, pos = { x = -7.4, y = 1.0, z = -5.5 }, rot = { x = 0.0, y = 188.1, z = 0.0 }, level = 15 },
	{ config_id = 4021, gadget_id = 70211002, pos = { x = 4.0, y = 1.0, z = -6.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
	{ config_id = 50, shape = RegionShape.CUBIC, size = { x = 40.0, y = 5.0, z = 10.0 }, pos = { x = 2.6, y = 1.0, z = -3.8 } }
}

-- 触发器
triggers = {
	{ name = "VARIABLE_CHANGE_24", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_24", action = "action_EVENT_VARIABLE_CHANGE_24" },
	{ name = "ENTER_REGION_50", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_50", action = "action_EVENT_ENTER_REGION_50", forbid_guest = false },
	{ name = "ANY_MONSTER_DIE_51", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51", action = "action_EVENT_ANY_MONSTER_DIE_51" },
	{ name = "ANY_MONSTER_DIE_52", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_52", action = "action_EVENT_ANY_MONSTER_DIE_52" },
	{ name = "ANY_MONSTER_DIE_53", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_53", action = "action_EVENT_ANY_MONSTER_DIE_53" },
	{ name = "ANY_MONSTER_DIE_54", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_54", action = "action_EVENT_ANY_MONSTER_DIE_54" }
}

-- 变量
variables = {
	{ name = "door", value = 0, no_refresh = false }
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
		monsters = { 4001, 4002, 4003 },
		gadgets = { 4006, 4007, 4008, 4009, 4010, 4011, 4012, 4013, 4014, 4015, 4016, 4017, 4018, 4019, 4020, 4021 },
		regions = { 50 },
		triggers = { "VARIABLE_CHANGE_24", "ENTER_REGION_50", "ANY_MONSTER_DIE_51", "ANY_MONSTER_DIE_52", "ANY_MONSTER_DIE_53", "ANY_MONSTER_DIE_54" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_24(context, evt)
	-- 判断变量"door"为4
	if ScriptLib.GetGroupVariableValue(context, "door") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_24(context, evt)
	-- 将configid为 4008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4008, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 4021 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4021, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_50(context, evt)
	if evt.param1 ~= 50 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_50(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4004, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4005, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51(context, evt)
	--判断死亡怪物的configid是否为 4002
	if evt.param1 ~= 4002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51(context, evt)
	-- 针对当前group内变量名为 "door" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "door", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_52(context, evt)
	--判断死亡怪物的configid是否为 4003
	if evt.param1 ~= 4003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_52(context, evt)
	-- 针对当前group内变量名为 "door" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "door", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_53(context, evt)
	--判断死亡怪物的configid是否为 4004
	if evt.param1 ~= 4004 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_53(context, evt)
	-- 针对当前group内变量名为 "door" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "door", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_54(context, evt)
	--判断死亡怪物的configid是否为 4005
	if evt.param1 ~= 4005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_54(context, evt)
	-- 针对当前group内变量名为 "door" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "door", 1) then
	  return -1
	end
	
	return 0
end
