-- Trigger变量
local defs = {
	duration = 45,
	kill_sum = 6,
	group_id = 133102296,
	gadget_controller_id = 296003
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 296001, monster_id = 20010901, pos = { x = 1251.8, y = 200.0, z = 181.2 }, rot = { x = 0.0, y = 320.2, z = 0.0 }, level = 16, drop_id = 1000100 },
	{ config_id = 296008, monster_id = 20010801, pos = { x = 1245.3, y = 200.0, z = 190.1 }, rot = { x = 0.0, y = 173.1, z = 0.0 }, level = 14, drop_id = 1000100 },
	{ config_id = 296009, monster_id = 20010801, pos = { x = 1250.8, y = 200.0, z = 190.4 }, rot = { x = 0.0, y = 186.9, z = 0.0 }, level = 14, drop_id = 1000100 },
	{ config_id = 296010, monster_id = 20010801, pos = { x = 1254.4, y = 200.0, z = 185.9 }, rot = { x = 0.0, y = 258.9, z = 0.0 }, level = 14, drop_id = 1000100 },
	{ config_id = 296011, monster_id = 20010801, pos = { x = 1242.2, y = 200.0, z = 184.9 }, rot = { x = 0.0, y = 93.7, z = 0.0 }, level = 11, drop_id = 1000100 },
	{ config_id = 296012, monster_id = 20010801, pos = { x = 1246.9, y = 200.0, z = 179.7 }, rot = { x = 0.0, y = 355.8, z = 0.0 }, level = 11, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 296002, gadget_id = 70360047, pos = { x = 1248.1, y = 200.0, z = 185.5 }, rot = { x = 1.3, y = 0.1, z = 1.6 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.Action01, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 296003, gadget_id = 70360001, pos = { x = 1248.1, y = 201.1, z = 185.5 }, rot = { x = 1.3, y = 0.1, z = 1.6 }, level = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CHALLENGE_SUCCESS_296004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_296004" },
	{ name = "CHALLENGE_FAIL_296005", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_296005", trigger_count = 0 },
	{ name = "GADGET_CREATE_296006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_296006", action = "action_EVENT_GADGET_CREATE_296006", trigger_count = 0 },
	{ name = "SELECT_OPTION_296007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_296007", action = "action_EVENT_SELECT_OPTION_296007", trigger_count = 0 }
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
		gadgets = { 296002, 296003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_296004", "CHALLENGE_FAIL_296005", "GADGET_CREATE_296006", "SELECT_OPTION_296007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 296001, 296008, 296009, 296010, 296011, 296012 },
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
function action_EVENT_CHALLENGE_SUCCESS_296004(context, evt)
	-- 将configid为 296002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 296002, GadgetState.GearAction1) then
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
function action_EVENT_CHALLENGE_FAIL_296005(context, evt)
	-- 将configid为 296002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 296002, GadgetState.Action01) then
			return -1
		end 
	
	-- 创建id为296003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 296003 }) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102296, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133102296, suite = 1 }) then
			return -1
		end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_296006(context, evt)
	if 296003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_296006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102296, 296003, {177}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_296007(context, evt)
	-- 判断是gadgetid 296003 option_id 177
	if 296003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_296007(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 296002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end
