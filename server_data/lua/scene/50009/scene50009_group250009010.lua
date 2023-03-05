-- Trigger变量
local defs = {
	group_id = 250009010,
	gadget_target_1 = 10003,
	monster_mole_1 = 10002
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10001, monster_id = 28050202, pos = { x = 145.9, y = 4.2, z = -44.2 }, rot = { x = 0.0, y = 29.5, z = 0.0 }, level = 1, pose_id = 1 },
	{ config_id = 10002, monster_id = 28050202, pos = { x = 149.0, y = 4.2, z = -39.6 }, rot = { x = 0.0, y = 29.5, z = 0.0 }, level = 1, pose_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10003, gadget_id = 70360027, pos = { x = 148.9, y = 4.2, z = -39.6 }, rot = { x = 0.0, y = 104.1, z = 0.0 }, level = 1 },
	{ config_id = 10004, gadget_id = 70360015, pos = { x = 146.2, y = 4.2, z = -44.1 }, rot = { x = 0.0, y = 15.1, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_10005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_10005" },
	{ name = "SELECT_OPTION_10006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10006", action = "action_EVENT_SELECT_OPTION_10006", forbid_guest = false },
	{ name = "GADGET_STATE_CHANGE_10007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10007", action = "action_EVENT_GADGET_STATE_CHANGE_10007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_10008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10008", action = "action_EVENT_GADGET_STATE_CHANGE_10008" }
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
	end_suite = 2,
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
		monsters = { 10001 },
		gadgets = { 10003, 10004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10005", "SELECT_OPTION_10006", "GADGET_STATE_CHANGE_10007", "GADGET_STATE_CHANGE_10008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
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
function action_EVENT_ANY_MONSTER_DIE_10005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2006, 3, 1) then
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 250009010, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10006(context, evt)
	-- 判断是gadgetid 10004 option_id 171
	if 10004 ~= evt.param1 then
		return false	
	end
	
	if 171 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10006(context, evt)
	-- 改变指定group组250009010中， configid为10004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250009010, 10004, GadgetState.GearStart) then
			return -1
		end 
	
	-- 删除指定group： 250009010 ；指定config：10004；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250009010, 10004, 171) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2006, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10007(context, evt)
	if 10004 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250009010, 10004, {171}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10008(context, evt)
	if 10003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10002, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
