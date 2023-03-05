--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21010401, pos = { x = 489.0, y = -24.1, z = 127.0 }, rot = { x = 0.0, y = 240.0, z = 0.0 }, level = 3, pose_id = 402 },
	{ config_id = 3002, monster_id = 21010401, pos = { x = 488.5, y = -23.4, z = 116.2 }, rot = { x = 0.0, y = 305.5, z = 0.0 }, level = 3, pose_id = 402 },
	{ config_id = 3003, monster_id = 20011101, pos = { x = 486.6, y = -23.6, z = 120.9 }, rot = { x = 0.0, y = 269.3, z = 0.0 }, level = 3, disableWander = true, affix = { 1002 }, isElite = true },
	{ config_id = 3004, monster_id = 21010401, pos = { x = 489.8, y = -22.9, z = 121.2 }, rot = { x = 0.0, y = 280.5, z = 0.0 }, level = 3, pose_id = 402 },
	{ config_id = 3005, monster_id = 21010201, pos = { x = 480.1, y = -22.9, z = 126.7 }, rot = { x = 0.0, y = 140.1, z = 0.0 }, level = 3 },
	{ config_id = 3006, monster_id = 21010201, pos = { x = 481.1, y = -22.9, z = 116.1 }, rot = { x = 0.0, y = 53.7, z = 0.0 }, level = 3 },
	{ config_id = 3007, monster_id = 21010201, pos = { x = 492.0, y = -23.0, z = 116.6 }, rot = { x = 0.0, y = 298.0, z = 0.0 }, level = 3 },
	{ config_id = 3008, monster_id = 21010201, pos = { x = 492.0, y = -23.0, z = 126.5 }, rot = { x = 0.0, y = 225.3, z = 0.0 }, level = 3, affix = { 1001 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3009, gadget_id = 70350002, pos = { x = 463.7, y = -9.5, z = 120.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 3010, gadget_id = 70350002, pos = { x = 500.9, y = -23.2, z = 121.6 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 3011, gadget_id = 70310001, pos = { x = 460.1, y = -7.3, z = 126.8 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 3012, gadget_id = 70310001, pos = { x = 460.1, y = -7.2, z = 115.1 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 3013, gadget_id = 70310002, pos = { x = 498.7, y = -18.6, z = 127.4 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 3014, gadget_id = 70310002, pos = { x = 498.7, y = -18.5, z = 116.0 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 3015, gadget_id = 70310002, pos = { x = 430.3, y = -13.3, z = 128.5 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 3016, gadget_id = 70310002, pos = { x = 430.3, y = -13.4, z = 114.7 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 3017, gadget_id = 70310002, pos = { x = 430.3, y = -19.4, z = 128.5 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 3018, gadget_id = 70310002, pos = { x = 430.3, y = -19.4, z = 114.7 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1 },
	{ config_id = 3019, gadget_id = 70900202, pos = { x = 511.9, y = -24.3, z = 121.7 }, rot = { x = 0.0, y = 48.8, z = 0.0 }, level = 1 },
	{ config_id = 3020, gadget_id = 70900202, pos = { x = 532.8, y = -23.3, z = 123.1 }, rot = { x = 0.0, y = 215.6, z = 0.0 }, level = 1 },
	{ config_id = 3021, gadget_id = 70220013, pos = { x = 458.4, y = -9.4, z = 111.8 }, rot = { x = 0.0, y = 147.1, z = 0.0 }, level = 1 },
	{ config_id = 3022, gadget_id = 70220013, pos = { x = 455.7, y = -9.3, z = 111.3 }, rot = { x = 0.0, y = 241.3, z = 0.0 }, level = 1 },
	{ config_id = 3023, gadget_id = 70220013, pos = { x = 453.3, y = -9.3, z = 110.2 }, rot = { x = 0.0, y = 163.6, z = 0.0 }, level = 1 },
	{ config_id = 3024, gadget_id = 70220013, pos = { x = 459.2, y = -9.3, z = 109.2 }, rot = { x = 0.0, y = 239.0, z = 0.0 }, level = 1 },
	{ config_id = 3025, gadget_id = 70211101, pos = { x = 456.4, y = -9.3, z = 107.8 }, rot = { x = 0.0, y = 245.9, z = 0.0 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 3026, gadget_id = 70220014, pos = { x = 455.0, y = -9.4, z = 109.3 }, rot = { x = 0.0, y = 299.3, z = 0.0 }, level = 1 },
	{ config_id = 3027, gadget_id = 70220014, pos = { x = 456.5, y = -9.3, z = 113.2 }, rot = { x = 0.0, y = 34.8, z = 0.0 }, level = 1 },
	{ config_id = 3028, gadget_id = 70220014, pos = { x = 454.4, y = -9.4, z = 110.9 }, rot = { x = 0.0, y = 48.8, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 11, shape = RegionShape.SPHERE, radius = 7.3, pos = { x = 435.2, y = -7.7, z = 121.1 } },
	{ config_id = 26, shape = RegionShape.CUBIC, size = { x = 10.0, y = 8.0, z = 15.0 }, pos = { x = 505.9, y = -22.5, z = 121.3 } },
	{ config_id = 40, shape = RegionShape.SPHERE, radius = 5, pos = { x = 422.8, y = -24.3, z = 120.5 } },
	{ config_id = 41, shape = RegionShape.CUBIC, size = { x = 15.0, y = 3.0, z = 15.0 }, pos = { x = 427.0, y = -17.0, z = 121.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_11", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11", action = "action_EVENT_ENTER_REGION_11", forbid_guest = false },
	{ name = "VARIABLE_CHANGE_12", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_12", action = "action_EVENT_VARIABLE_CHANGE_12" },
	{ name = "ANY_MONSTER_DIE_22", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_22", action = "action_EVENT_ANY_MONSTER_DIE_22" },
	{ name = "ENTER_REGION_26", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_26", action = "action_EVENT_ENTER_REGION_26", forbid_guest = false },
	{ name = "ENTER_REGION_40", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_40", action = "action_EVENT_ENTER_REGION_40", forbid_guest = false },
	{ name = "ENTER_REGION_41", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_41", action = "action_EVENT_ENTER_REGION_41", forbid_guest = false },
	{ name = "ANY_MONSTER_DIE_66", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_66", action = "action_EVENT_ANY_MONSTER_DIE_66" },
	{ name = "ANY_MONSTER_DIE_67", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_67", action = "action_EVENT_ANY_MONSTER_DIE_67" },
	{ name = "ANY_MONSTER_DIE_68", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_68", action = "action_EVENT_ANY_MONSTER_DIE_68" },
	{ name = "ANY_MONSTER_DIE_69", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_69", action = "action_EVENT_ANY_MONSTER_DIE_69" },
	{ name = "ANY_MONSTER_DIE_70", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_70", action = "action_EVENT_ANY_MONSTER_DIE_70" },
	{ name = "ANY_MONSTER_DIE_71", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_71", action = "action_EVENT_ANY_MONSTER_DIE_71" },
	{ name = "ANY_MONSTER_DIE_72", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_72", action = "action_EVENT_ANY_MONSTER_DIE_72" },
	{ name = "ANY_MONSTER_DIE_73", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_73", action = "action_EVENT_ANY_MONSTER_DIE_73" }
}

-- 变量
variables = {
	{ name = "Key", value = 0, no_refresh = false }
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
		-- description = suite_1,
		monsters = { 3001, 3002, 3003, 3004 },
		gadgets = { 3009, 3010, 3011, 3012, 3013, 3014, 3015, 3016, 3017, 3018, 3021, 3022, 3023, 3024, 3025, 3026, 3027, 3028 },
		regions = { 11, 26, 40, 41 },
		triggers = { "ENTER_REGION_11", "VARIABLE_CHANGE_12", "ANY_MONSTER_DIE_22", "ENTER_REGION_26", "ENTER_REGION_40", "ENTER_REGION_41", "ANY_MONSTER_DIE_66", "ANY_MONSTER_DIE_67", "ANY_MONSTER_DIE_68", "ANY_MONSTER_DIE_69", "ANY_MONSTER_DIE_70", "ANY_MONSTER_DIE_71", "ANY_MONSTER_DIE_72", "ANY_MONSTER_DIE_73" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_11(context, evt)
	if evt.param1 ~= 11 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11(context, evt)
	-- 将configid为 3009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3009, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 3011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3011, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 3012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3012, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_12(context, evt)
	-- 判断变量"Key"为8
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 8 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_12(context, evt)
	-- 将configid为 3010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3010, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 3013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3013, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 3014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3014, GadgetState.GearStart) then
			return -1
		end 
	
	-- 创生gadget 3019
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3019 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_22(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_22(context, evt)
	-- 调用提示id为 1037001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1037001) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_26(context, evt)
	if evt.param1 ~= 26 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_26(context, evt)
	-- 调用提示id为 1041022 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1041022) then
		return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220011003, monsters = {}, gadgets = {3019} }) then
			return -1
		end
	
	-- 创生gadget 3020
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3020 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_40(context, evt)
	if evt.param1 ~= 40 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_40(context, evt)
	-- 将configid为 3017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3017, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 3018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3018, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_41(context, evt)
	if evt.param1 ~= 41 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_41(context, evt)
	-- 将configid为 3015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3015, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 3016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3016, GadgetState.GearStart) then
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220011002, monsters = {}, gadgets = {2014} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_66(context, evt)
	--判断死亡怪物的configid是否为 3005
	if evt.param1 ~= 3005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_66(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_67(context, evt)
	if 3006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_67(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_68(context, evt)
	if 3007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_68(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_69(context, evt)
	if 3008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_69(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_70(context, evt)
	--判断死亡怪物的configid是否为 3002
	if evt.param1 ~= 3002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_70(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3006, delay_time = 1 }) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_71(context, evt)
	--判断死亡怪物的configid是否为 3001
	if evt.param1 ~= 3001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_71(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3005, delay_time = 1 }) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_72(context, evt)
	--判断死亡怪物的configid是否为 3004
	if evt.param1 ~= 3004 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_72(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3007, delay_time = 1 }) then
	  return -1
	end
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3008, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_73(context, evt)
	--判断死亡怪物的configid是否为 3003
	if evt.param1 ~= 3003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_73(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  return -1
	end
	
	return 0
end
