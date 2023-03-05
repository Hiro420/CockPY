--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21020201, pos = { x = 191.0, y = 49.9, z = 189.0 }, rot = { x = 0.0, y = 176.7, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 3002, monster_id = 21010501, pos = { x = 178.9, y = 46.0, z = 172.4 }, rot = { x = 0.0, y = 125.3, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 3003, monster_id = 21010501, pos = { x = 204.3, y = 46.0, z = 173.2 }, rot = { x = 0.0, y = 234.3, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 3004, monster_id = 21011001, pos = { x = 183.1, y = 46.0, z = 180.6 }, rot = { x = 0.0, y = 154.3, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 3005, monster_id = 21010901, pos = { x = 198.3, y = 46.0, z = 180.3 }, rot = { x = 0.0, y = 200.9, z = 0.0 }, level = 1, disableWander = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3006, gadget_id = 70360002, pos = { x = 187.3, y = 49.9, z = 191.7 }, rot = { x = 0.0, y = 167.1, z = 0.0 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 3007, gadget_id = 70690001, pos = { x = 187.6, y = 63.3, z = 214.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3008, gadget_id = 70690001, pos = { x = 187.8, y = 65.1, z = 253.5 }, rot = { x = 41.9, y = 355.4, z = 353.5 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 25, shape = RegionShape.CUBIC, size = { x = 10.0, y = 10.0, z = 4.0 }, pos = { x = 190.4, y = 46.3, z = 145.5 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_5", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5", action = "action_EVENT_ANY_MONSTER_DIE_5" },
	{ name = "SELECT_OPTION_6", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6", action = "action_EVENT_SELECT_OPTION_6", forbid_guest = false },
	{ name = "ENTER_REGION_25", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25", action = "action_EVENT_ENTER_REGION_25", forbid_guest = false },
	{ name = "TIMER_EVENT_30", event = EventType.EVENT_TIMER_EVENT, source = "1", condition = "", action = "action_EVENT_TIMER_EVENT_30" }
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
		monsters = { 3001, 3002, 3003, 3004, 3005 },
		gadgets = { 3006 },
		regions = { 25 },
		triggers = { "ANY_MONSTER_DIE_5", "SELECT_OPTION_6", "ENTER_REGION_25", "TIMER_EVENT_30" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220024003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220024003, 3006, {7}) then
		return -1
	end
	
	-- 改变指定group组220024003中， configid为3006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220024003, 3006, GadgetState.GearStart) then
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（187，50，192），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=187, y=50, z=192}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6(context, evt)
	if 3006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6(context, evt)
	-- 删除指定group： 220024003 ；指定config：3006；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220024003, 3006, 7) then
		return -1
	end
	
	-- 改变指定group组220024003中， configid为3006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220024003, 3006, GadgetState.Default) then
			return -1
		end 
	
	-- 解锁目标1
	if 0 ~= ScriptLib.UnlockForce(context, 1) then
		return -1
	end
	
	-- 解锁目标2
	if 0 ~= ScriptLib.UnlockForce(context, 2) then
		return -1
	end
	
	-- 创建id为3007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3007 }) then
	  return -1
	end
	
	-- 创建id为3008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3008 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25(context, evt)
	if evt.param1 ~= 25 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25(context, evt)
	-- 改变指定group组220024002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220024002, 2001, GadgetState.GearStop) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220024003, 2002, {1}) then
		return -1
	end
	
	-- 改变指定group组220024003中， configid为2002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220024003, 2002, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_TIMER_EVENT_30(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220024002, 2002, {1}) then
		return -1
	end
	
	-- 改变指定group组220024002中， configid为2002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220024002, 2002, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end
