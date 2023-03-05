-- Trigger变量
local defs = {
	group_id = 111101006,
	gadget_target_1 = 6003,
	monster_mole_1 = 6001,
	gadget_home_1 = 6004
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 28050201, pos = { x = 2594.8, y = 212.4, z = -1354.5 }, rot = { x = 0.0, y = 29.5, z = 0.0 }, level = 1 },
	{ config_id = 6002, monster_id = 28050201, pos = { x = 2603.1, y = 213.7, z = -1359.4 }, rot = { x = 0.0, y = 29.5, z = 0.0 }, level = 1, pose_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6003, gadget_id = 70360027, pos = { x = 2603.2, y = 213.6, z = -1359.6 }, rot = { x = 0.0, y = 104.1, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 6004, gadget_id = 70360015, pos = { x = 2595.1, y = 212.3, z = -1354.3 }, rot = { x = 0.0, y = 15.1, z = 0.0 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_6005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6005", action = "action_EVENT_ANY_MONSTER_DIE_6005" },
	{ name = "SELECT_OPTION_6006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6006", action = "action_EVENT_SELECT_OPTION_6006", trigger_count = 0, forbid_guest = false },
	{ name = "GADGET_STATE_CHANGE_6007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6007", action = "action_EVENT_GADGET_STATE_CHANGE_6007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_6008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6008", action = "action_EVENT_GADGET_STATE_CHANGE_6008", trigger_count = 0 },
	{ name = "GADGET_CREATE_6009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_6009", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "isActive", value = 0, no_refresh = true },
	{ name = "isFinish", value = 0, no_refresh = true }
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
		-- description = suite_1,
		monsters = { 6001 },
		gadgets = { 6003, 6004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6005", "SELECT_OPTION_6006", "GADGET_STATE_CHANGE_6007", "GADGET_STATE_CHANGE_6008", "GADGET_CREATE_6009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6005(context, evt)
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2006, 3, 1) then
	      return -1
	    end
	
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101006, suite = 2 }) then
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6006(context, evt)
	-- 判断是gadgetid 6004 option_id 171
	if 6004 ~= evt.param1 then
		return false	
	end
	
	if 171 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6006(context, evt)
	-- 改变指定group组111101006中， configid为6004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101006, 6004, GadgetState.GearStart) then
			return -1
		end 
	
	-- 删除指定group： 111101006 ；指定config：6004；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101006, 6004, 171) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2006, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6007(context, evt)
	if 6004 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101006, 6004, {171}) then
		return -1
	end
	
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6008(context, evt)
	if 6003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6002, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GADGET_CREATE_6009(context, evt)
	
	if defs.gadget_home_1 == evt.param1 and GadgetState.GearAction1 == ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_home_1, {171})
	end
	
	if defs.gadget_home_1 == evt.param1 and GadgetState.GearStart == ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) and 0 ==ScriptLib.GetGroupVariableValue(context, "isFinish")  then
		ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_home_1, {171})
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_home_1, GadgetState.GearAction1)
	end
	
	
	
	return 0
end
