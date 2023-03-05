--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 518001, monster_id = 20010901, pos = { x = 1772.1, y = 238.3, z = 335.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 518002, gadget_id = 70510013, pos = { x = 1772.0, y = 238.3, z = 335.1 }, rot = { x = 0.0, y = 319.8, z = 0.0 }, level = 32, isOneoff = true, persistent = true },
	{ config_id = 518003, gadget_id = 70211101, pos = { x = 1768.6, y = 239.1, z = 339.5 }, rot = { x = 353.5, y = 167.1, z = 5.1 }, level = 18, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_518004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_518004", action = "action_EVENT_GADGET_STATE_CHANGE_518004", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_518005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_518005", action = "action_EVENT_ANY_MONSTER_DIE_518005" },
	{ name = "GADGET_CREATE_518006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_518006", action = "action_EVENT_GADGET_CREATE_518006", trigger_count = 0 },
	{ name = "SELECT_OPTION_518007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_518007", action = "action_EVENT_SELECT_OPTION_518007", trigger_count = 0 }
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
		gadgets = { 518002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_518004", "ANY_MONSTER_DIE_518005", "GADGET_CREATE_518006", "SELECT_OPTION_518007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_518004(context, evt)
	if 518002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_518004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 518001, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_518005(context, evt)
	if 518001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_518005(context, evt)
	-- 创建id为518003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 518003 }) then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_518006(context, evt)
	if 518002 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_518006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102518, 518002, {173}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_518007(context, evt)
	-- 判断是gadgetid 518002 option_id 173
	if 518002 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_518007(context, evt)
	-- 将configid为 518002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 518002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 删除指定group： 133102518 ；指定config：518002；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102518, 518002, 173) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 1, 1) then
	      return -1
	    end
	
	return 0
end
