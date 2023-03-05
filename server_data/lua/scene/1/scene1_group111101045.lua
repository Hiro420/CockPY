-- Trigger变量
local defs = {
	group_id = 111101045,
	gadget_target_1 = 45003,
	monster_mole_1 = 45001,
	gadget_home_1 = 45004
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 45001, monster_id = 28050201, pos = { x = 2305.4, y = 251.5, z = -1426.8 }, rot = { x = 0.0, y = 29.5, z = 0.0 }, level = 1 },
	{ config_id = 45002, monster_id = 28050201, pos = { x = 2318.4, y = 253.7, z = -1428.8 }, rot = { x = 0.0, y = 29.5, z = 0.0 }, level = 1, pose_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 45003, gadget_id = 70360027, pos = { x = 2318.5, y = 253.7, z = -1429.0 }, rot = { x = 0.0, y = 104.1, z = 0.0 }, level = 1, persistent = true },
	{ config_id = 45004, gadget_id = 70360015, pos = { x = 2305.6, y = 251.3, z = -1426.7 }, rot = { x = 0.0, y = 15.1, z = 0.0 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_45005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_45005", action = "action_EVENT_ANY_MONSTER_DIE_45005" },
	{ name = "SELECT_OPTION_45006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_45006", action = "action_EVENT_SELECT_OPTION_45006", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_45007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_45007", action = "action_EVENT_GADGET_STATE_CHANGE_45007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_45008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_45008", action = "action_EVENT_GADGET_STATE_CHANGE_45008", trigger_count = 0 },
	{ name = "GADGET_CREATE_45009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_45009", action = "action_EVENT_GADGET_CREATE_45009", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_45010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_45010", action = "action_EVENT_GADGET_STATE_CHANGE_45010", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "isActive", value = 0, no_refresh = false },
	{ name = "isFinish", value = 0, no_refresh = false },
	{ name = "isSpawn", value = 0, no_refresh = false }
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
		monsters = { 45001 },
		gadgets = { 45003, 45004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_45005", "SELECT_OPTION_45006", "GADGET_STATE_CHANGE_45007", "GADGET_STATE_CHANGE_45008", "GADGET_CREATE_45009", "GADGET_STATE_CHANGE_45010" },
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
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 45002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_45005(context, evt)
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_45005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2006, 3, 1) then
	      return -1
	    end
	
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 111101045, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_45006(context, evt)
	-- 判断是gadgetid 45004 option_id 171
	if 45004 ~= evt.param1 then
		return false	
	end
	
	if 171 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_45006(context, evt)
	-- 改变指定group组111101045中， configid为45004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101045, 45004, GadgetState.GearAction2) then
			return -1
		end 
	
	-- 删除指定group： 111101045 ；指定config：45004；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101045, 45004, 171) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2006, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_45007(context, evt)
	if 45004 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_45007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101045, 45004, {171}) then
		return -1
	end
	
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_45008(context, evt)
	if 45003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_45008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101045, 3)
	
	-- 将本组内变量名为 "isSpawn" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isSpawn", 1) then
	  return -1
	end
	
	-- 将configid为 45004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 45004, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_45009(context, evt)
	if 45003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_45009(context, evt)
	--如果是鼹鼠洞创生，并且鼹鼠洞不是默认不可见状态，并且鼹鼠终点没有被触发的情况下，即鼹鼠洞被调查过，但是鼹鼠并没有从终点出来的情况下将鼹鼠洞设置为可以交互状态（添加按钮，并且改变鼹鼠洞状态）
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, defs.gadget_home_1) 
	and GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, defs.gadget_target_1) 
	then
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_home_1, GadgetState.GearAction1)
		ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_home_1, {171})
	end
	
	--如果是鼹鼠洞创生，并且鼹鼠终点已经被开启过了。则直接设置鼹鼠洞为调查之后的状态
	if  GadgetState.GearStart == ScriptLib.GetGadgetStateByConfigId(context, 0, defs.gadget_target_1) 
	then
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_home_1, GadgetState.GearStart)
	end
	
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_45010(context, evt)
	if 45004 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_45010(context, evt)
	--如果鼹鼠洞发射子弹5秒后，没有到达终点，（到达终点的情况下会改动这个鼹鼠洞到GearStart状态，就不会走到这里）
	--没有到达终点的情况下，将鼹鼠洞重新设置回到GearAction1的状态
	
	--这里判断鼹鼠终点的状态，如果是没有刷新鼹鼠的Default状态，则回滚设置鼹鼠洞为可以调查的GearAction1状态，
	if GadgetState.Default == ScriptLib.GetGadgetStateByConfigId(context, 0, defs.gadget_target_1) then
	 ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_home_1, GadgetState.GearAction1)
	
	elseif GadgetState.GearStart == ScriptLib.GetGadgetStateByConfigId(context, 0, defs.gadget_target_1) then
	
	 ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_home_1, GadgetState.GearStart)
	
	end
	
	
	
	
	return 0
end
