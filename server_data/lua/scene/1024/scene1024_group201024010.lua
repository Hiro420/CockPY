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
	{ config_id = 74, gadget_id = 70350014, pos = { x = 98.4, y = -92.7, z = -201.0 }, rot = { x = 0.0, y = 272.4, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 75, gadget_id = 70350013, pos = { x = 148.9, y = -92.3, z = -201.1 }, rot = { x = 0.0, y = 270.6, z = 0.0 }, level = 1 },
	{ config_id = 107, gadget_id = 70360010, pos = { x = 124.5, y = -92.2, z = -201.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, state = GadgetState.GearStop }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_11", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11", action = "action_EVENT_ANY_MONSTER_DIE_11" },
	{ name = "SELECT_OPTION_16", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_16", action = "action_EVENT_SELECT_OPTION_16", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 74, 75, 107 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_11", "SELECT_OPTION_16" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11(context, evt)
	-- 将configid为 75 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 75, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_16(context, evt)
	-- 判断是gadgetid 107 option_id 7
	if 107 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_16(context, evt)
	-- 将configid为 107 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 107, GadgetState.GearStop) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201024016, suite = 1 }) then
			return -1
		end
	
	-- 删除指定group： 201024010 ；指定config：107；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201024010, 107, 7) then
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（134，-87，-200），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=134, y=-87, z=-200}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	-- 改变指定group组201024019中， configid为114的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201024019, 114, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组201024019中， configid为117的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201024019, 117, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组201024019中， configid为119的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201024019, 119, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组201024019中， configid为120的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201024019, 120, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组201024019中， configid为121的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201024019, 121, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组201024019中， configid为122的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201024019, 122, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组201024010中， configid为74的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201024010, 74, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
