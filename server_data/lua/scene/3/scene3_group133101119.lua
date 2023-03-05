-- Trigger变量
local defs = {
	group_id = 133101119,
	gadget_target_1 = 119003,
	monster_mole_1 = 119001,
	gadget_home_1 = 119004
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 119001, monster_id = 28050201, pos = { x = -50.7, y = 4.1, z = -506.2 }, rot = { x = 0.0, y = 29.5, z = 0.0 }, level = 32, drop_tag = "魔法生物" },
	{ config_id = 119002, monster_id = 28050201, pos = { x = -47.8, y = 4.1, z = -501.4 }, rot = { x = 0.0, y = 29.5, z = 0.0 }, level = 32, drop_tag = "魔法生物", pose_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 119003, gadget_id = 70360027, pos = { x = -47.7, y = 4.0, z = -501.6 }, rot = { x = 0.0, y = 104.1, z = 0.0 }, level = 32, persistent = true },
	{ config_id = 119004, gadget_id = 70360015, pos = { x = -50.4, y = 4.0, z = -506.1 }, rot = { x = 0.0, y = 15.1, z = 0.0 }, level = 32, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_119005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_119005", action = "action_EVENT_ANY_MONSTER_DIE_119005" },
	{ name = "SELECT_OPTION_119006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_119006", action = "action_EVENT_SELECT_OPTION_119006", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_119007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_119007", action = "action_EVENT_GADGET_STATE_CHANGE_119007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_119008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_119008", action = "action_EVENT_GADGET_STATE_CHANGE_119008", trigger_count = 0 },
	{ name = "GADGET_CREATE_119009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_119009", action = "action_EVENT_GADGET_CREATE_119009", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_119010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_119010", action = "action_EVENT_GADGET_STATE_CHANGE_119010", trigger_count = 0 }
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
		monsters = { 119001 },
		gadgets = { 119003, 119004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_119005", "SELECT_OPTION_119006", "GADGET_STATE_CHANGE_119007", "GADGET_STATE_CHANGE_119008", "GADGET_CREATE_119009", "GADGET_STATE_CHANGE_119010" },
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
		monsters = { 119002 },
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
function condition_EVENT_ANY_MONSTER_DIE_119005(context, evt)
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_119005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2006, 3, 1) then
	      return -1
	    end
	
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133101119, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_119006(context, evt)
	-- 判断是gadgetid 119004 option_id 171
	if 119004 ~= evt.param1 then
		return false	
	end
	
	if 171 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_119006(context, evt)
	-- 改变指定group组133101119中， configid为119004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133101119, 119004, GadgetState.GearAction2) then
			return -1
		end 
	
	-- 删除指定group： 133101119 ；指定config：119004；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133101119, 119004, 171) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2006, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_119007(context, evt)
	if 119004 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_119007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133101119, 119004, {171}) then
		return -1
	end
	
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_119008(context, evt)
	if 119003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_119008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101119, 3)
	
	-- 将本组内变量名为 "isSpawn" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isSpawn", 1) then
	  return -1
	end
	
	-- 将configid为 119004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 119004, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_119009(context, evt)
	if 119003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_119009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_119010(context, evt)
	if 119004 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_119010(context, evt)
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
