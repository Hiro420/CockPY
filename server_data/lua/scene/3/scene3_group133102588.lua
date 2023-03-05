--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 588001, monster_id = 20010901, pos = { x = 1487.3, y = 261.8, z = -110.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 588002, gadget_id = 70510013, pos = { x = 1487.3, y = 261.8, z = -110.2 }, rot = { x = 359.6, y = 319.8, z = 7.5 }, level = 32, isOneoff = true, persistent = true },
	{ config_id = 588003, gadget_id = 70211101, pos = { x = 1487.5, y = 261.8, z = -110.1 }, rot = { x = 354.9, y = 359.8, z = 5.5 }, level = 16, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_588004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_588004", action = "action_EVENT_GADGET_STATE_CHANGE_588004", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_588005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_588005", action = "action_EVENT_ANY_MONSTER_DIE_588005" },
	{ name = "GADGET_CREATE_588006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_588006", action = "action_EVENT_GADGET_CREATE_588006", trigger_count = 0 },
	{ name = "SELECT_OPTION_588007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_588007", action = "action_EVENT_SELECT_OPTION_588007", trigger_count = 0 }
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
		gadgets = { 588002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_588004", "ANY_MONSTER_DIE_588005", "GADGET_CREATE_588006", "SELECT_OPTION_588007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_588004(context, evt)
	if 588002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_588004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 588001, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_588005(context, evt)
	if 588001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_588005(context, evt)
	-- 创建id为588003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 588003 }) then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_588006(context, evt)
	if 588002 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_588006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102588, 588002, {173}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_588007(context, evt)
	-- 判断是gadgetid 588002 option_id 173
	if 588002 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_588007(context, evt)
	-- 将configid为 588002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 588002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 删除指定group： 133102588 ；指定config：588002；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102588, 588002, 173) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 1, 1) then
	      return -1
	    end
	
	return 0
end
