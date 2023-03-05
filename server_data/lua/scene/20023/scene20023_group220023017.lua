--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17001, monster_id = 20030101, pos = { x = 203.0, y = 15.9, z = -31.9 }, rot = { x = 0.0, y = 159.0, z = 0.0 }, level = 1 },
	{ config_id = 17002, monster_id = 20030101, pos = { x = 206.3, y = 15.9, z = -30.8 }, rot = { x = 0.0, y = 203.0, z = 0.0 }, level = 1 },
	{ config_id = 17003, monster_id = 20030101, pos = { x = 208.6, y = 15.9, z = -31.4 }, rot = { x = 0.0, y = 212.5, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 17004, gadget_id = 70211002, pos = { x = 207.5, y = 15.8, z = -36.5 }, rot = { x = 0.0, y = 359.5, z = 0.0 }, level = 10, chest_drop_id = 11010800, drop_count = 1, state = GadgetState.ChestLocked },
	{ config_id = 17005, gadget_id = 70211002, pos = { x = 207.5, y = 15.8, z = -36.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, chest_drop_id = 11010700, drop_count = 1, state = GadgetState.ChestLocked },
	{ config_id = 17006, gadget_id = 70350003, pos = { x = 207.6, y = 15.7, z = -18.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 17007, gadget_id = 70310002, pos = { x = 210.8, y = 21.8, z = -11.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 17008, gadget_id = 70310002, pos = { x = 204.6, y = 21.8, z = -11.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 30, shape = RegionShape.SPHERE, radius = 5, pos = { x = 207.5, y = 16.5, z = -36.7 } },
	{ config_id = 40, shape = RegionShape.SPHERE, radius = 5, pos = { x = 207.7, y = 16.5, z = -36.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_30", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_30", action = "action_EVENT_ENTER_REGION_30", forbid_guest = false },
	{ name = "GADGET_STATE_CHANGE_31", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_31", action = "action_EVENT_GADGET_STATE_CHANGE_31" },
	{ name = "ANY_MONSTER_DIE_36", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_36", action = "action_EVENT_ANY_MONSTER_DIE_36" },
	{ name = "QUEST_FINISH_39", event = EventType.EVENT_QUEST_FINISH, source = "2010140", condition = "condition_EVENT_QUEST_FINISH_39", action = "action_EVENT_QUEST_FINISH_39" },
	{ name = "ENTER_REGION_40", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_40", action = "action_EVENT_ENTER_REGION_40", forbid_guest = false },
	{ name = "ANY_MONSTER_DIE_41", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_41", action = "action_EVENT_ANY_MONSTER_DIE_41" },
	{ name = "GADGET_STATE_CHANGE_42", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_42", action = "action_EVENT_GADGET_STATE_CHANGE_42" }
}

-- 变量
variables = {
	{ name = "isdone", value = 0, no_refresh = true }
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
		gadgets = { 17004, 17006, 17007, 17008 },
		regions = { 30 },
		triggers = { "ENTER_REGION_30", "GADGET_STATE_CHANGE_31", "ANY_MONSTER_DIE_36", "QUEST_FINISH_39" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 17005, 17006, 17007, 17008 },
		regions = { 40 },
		triggers = { "ENTER_REGION_40", "ANY_MONSTER_DIE_41", "GADGET_STATE_CHANGE_42" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_30(context, evt)
	if evt.param1 ~= 30 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_30(context, evt)
	-- 将configid为 17004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17004, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 17001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 17002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 17003, delay_time = 0 }) then
	  return -1
	end
	
	-- 将configid为 17006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17006, GadgetState.Default) then
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220023012, monsters = {}, gadgets = {12003} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_31(context, evt)
	if 17004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_31(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "220023017") then
	  return -1
	end
	
	-- 将本组内变量名为 "isdone" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isdone", 1) then
	  return -1
	end
	
	-- 将configid为 17006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17006, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 17007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17007, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 17008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17008, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_36(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_36(context, evt)
	-- 解锁目标17004
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 17004, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_39(context, evt)
	--检查ID为2010140的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2010140 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"isdone"为0
	if ScriptLib.GetGroupVariableValue(context, "isdone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_39(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220023017, suite = 2 }) then
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
	-- 将configid为 17005 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17005, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 17001, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 17002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 17003, delay_time = 0 }) then
	  return -1
	end
	
	-- 将configid为 17006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17006, GadgetState.Default) then
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220023012, monsters = {}, gadgets = {12003} }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_41(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_41(context, evt)
	-- 解锁目标17005
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 17005, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_42(context, evt)
	if 17005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_42(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "220023017") then
	  return -1
	end
	
	-- 将configid为 17006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17006, GadgetState.GearStart) then
			return -1
		end 
	
	-- 将configid为 17007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17007, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 17008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17008, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
