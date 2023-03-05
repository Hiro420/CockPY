--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 173001, monster_id = 20010901, pos = { x = 677.3, y = 242.8, z = 1583.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 173002, gadget_id = 70510013, pos = { x = 677.3, y = 242.8, z = 1583.8 }, rot = { x = 0.0, y = 319.8, z = 0.0 }, level = 32, isOneoff = true, persistent = true },
	{ config_id = 173003, gadget_id = 70211101, pos = { x = 677.5, y = 241.8, z = 1586.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_173004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_173004", action = "action_EVENT_GADGET_STATE_CHANGE_173004", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_173005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_173005", action = "action_EVENT_ANY_MONSTER_DIE_173005" },
	{ name = "GADGET_CREATE_173006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_173006", action = "action_EVENT_GADGET_CREATE_173006", trigger_count = 0 },
	{ name = "SELECT_OPTION_173007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_173007", action = "action_EVENT_SELECT_OPTION_173007", trigger_count = 0 }
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
		gadgets = { 173002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_173004", "ANY_MONSTER_DIE_173005", "GADGET_CREATE_173006", "SELECT_OPTION_173007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_173004(context, evt)
	if 173002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_173004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 173001, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_173005(context, evt)
	if 173001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_173005(context, evt)
	-- 创建id为173003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 173003 }) then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_173006(context, evt)
	if 173002 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_173006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103173, 173002, {173}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_173007(context, evt)
	-- 判断是gadgetid 173002 option_id 173
	if 173002 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_173007(context, evt)
	-- 将configid为 173002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 173002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 删除指定group： 133103173 ；指定config：173002；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103173, 173002, 173) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 1, 1) then
	      return -1
	    end
	
	return 0
end
