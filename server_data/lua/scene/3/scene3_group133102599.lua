-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 6,
	group_id = 133102599,
	gadget_controller_id = 599003
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 599001, monster_id = 20010801, pos = { x = 1888.7, y = 216.0, z = 648.2 }, rot = { x = 0.0, y = 303.5, z = 0.0 }, level = 18, drop_id = 1000100 },
	{ config_id = 599008, monster_id = 20010801, pos = { x = 1888.0, y = 216.0, z = 653.2 }, rot = { x = 0.0, y = 234.9, z = 0.0 }, level = 18, drop_id = 1000100 },
	{ config_id = 599009, monster_id = 20010801, pos = { x = 1883.0, y = 216.0, z = 654.9 }, rot = { x = 0.0, y = 152.4, z = 0.0 }, level = 18, drop_id = 1000100 },
	{ config_id = 599010, monster_id = 20010801, pos = { x = 1879.5, y = 216.0, z = 651.2 }, rot = { x = 0.1, y = 100.1, z = 358.7 }, level = 18, drop_id = 1000100 },
	{ config_id = 599011, monster_id = 20010801, pos = { x = 1880.8, y = 216.0, z = 646.8 }, rot = { x = 0.0, y = 41.1, z = 0.0 }, level = 18, drop_id = 1000100 },
	{ config_id = 599012, monster_id = 20010801, pos = { x = 1884.7, y = 219.5, z = 645.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 599002, gadget_id = 70360047, pos = { x = 1884.4, y = 215.7, z = 650.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "战斗高级璃月", state = GadgetState.Action01, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 599003, gadget_id = 70360001, pos = { x = 1884.4, y = 216.6, z = 650.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CHALLENGE_SUCCESS_599004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_599004" },
	{ name = "CHALLENGE_FAIL_599005", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_599005", trigger_count = 0 },
	{ name = "GADGET_CREATE_599006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_599006", action = "action_EVENT_GADGET_CREATE_599006", trigger_count = 0 },
	{ name = "SELECT_OPTION_599007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_599007", action = "action_EVENT_SELECT_OPTION_599007", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 599002, 599003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_599004", "CHALLENGE_FAIL_599005", "GADGET_CREATE_599006", "SELECT_OPTION_599007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 599001, 599008, 599009, 599010, 599011, 599012 },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_599004(context, evt)
	-- 将configid为 599002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 599002, GadgetState.GearAction1) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_599005(context, evt)
	-- 将configid为 599002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 599002, GadgetState.Action01) then
			return -1
		end 
	
	-- 创建id为599003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 599003 }) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102599, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133102599, suite = 1 }) then
			return -1
		end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_599006(context, evt)
	if 599003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_599006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102599, 599003, {177}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_599007(context, evt)
	-- 判断是gadgetid 599003 option_id 177
	if 599003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_599007(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 599002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end
