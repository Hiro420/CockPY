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
	{ config_id = 3153, gadget_id = 70900039, pos = { x = 2889.2, y = 280.4, z = -1591.8 }, rot = { x = 0.0, y = 256.1, z = 0.0 }, level = 30, persistent = true },
	{ config_id = 3167, gadget_id = 70211111, pos = { x = 2998.0, y = 239.0, z = -1735.0 }, rot = { x = 0.0, y = 315.1, z = 355.8 }, level = 30, drop_tag = "解谜中级蒙德", isOneoff = true },
	{ config_id = 3168, gadget_id = 70690001, pos = { x = 2897.4, y = 279.6, z = -1602.3 }, rot = { x = 1.0, y = 319.0, z = 359.2 }, level = 30 },
	{ config_id = 3169, gadget_id = 70690001, pos = { x = 2917.7, y = 273.2, z = -1646.6 }, rot = { x = 1.0, y = 319.0, z = 359.2 }, level = 30 },
	{ config_id = 3170, gadget_id = 70690001, pos = { x = 2946.4, y = 270.7, z = -1646.5 }, rot = { x = 1.0, y = 319.0, z = 359.2 }, level = 30 },
	{ config_id = 3171, gadget_id = 70690001, pos = { x = 2944.2, y = 266.6, z = -1683.5 }, rot = { x = 1.0, y = 319.0, z = 359.2 }, level = 30 },
	{ config_id = 3172, gadget_id = 70690001, pos = { x = 2914.9, y = 276.1, z = -1610.6 }, rot = { x = 1.0, y = 319.0, z = 359.2 }, level = 30 },
	{ config_id = 3173, gadget_id = 70690001, pos = { x = 2969.7, y = 265.8, z = -1662.8 }, rot = { x = 1.0, y = 319.0, z = 359.2 }, level = 30 },
	{ config_id = 3345, gadget_id = 70900201, pos = { x = 2997.8, y = 239.1, z = -1735.3 }, rot = { x = 0.0, y = 312.4, z = 0.0 }, level = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_202", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_202", action = "action_EVENT_GADGET_STATE_CHANGE_202", tlog_tag = "望风山地_293_元素机关挑战_开始" },
	{ name = "CHALLENGE_FAIL_203", event = EventType.EVENT_CHALLENGE_FAIL, source = "293", condition = "", action = "action_EVENT_CHALLENGE_FAIL_203" },
	{ name = "CHALLENGE_SUCCESS_204", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "293", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_204", tlog_tag = "望风山地_293_元素机关挑战_结算" },
	{ name = "GADGET_STATE_CHANGE_205", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_205", action = "", tag = "21" }
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
	rand_suite = true
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
		gadgets = { 3153 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_202", "CHALLENGE_FAIL_203", "CHALLENGE_SUCCESS_204", "GADGET_STATE_CHANGE_205" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_202(context, evt)
	if 3153 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_202(context, evt)
	-- 创建编号为293（该挑战的识别id),挑战内容为141的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 293, 141, 30, 7, 21, 1) then
		return -1
	end
	
	-- 创建id为3345的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3345 }) then
	  return -1
	end
	
	-- 创建id为3167的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3167 }) then
	  return -1
	end
	
	-- 创建id为3168的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3168 }) then
	  return -1
	end
	
	-- 创建id为3169的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3169 }) then
	  return -1
	end
	
	-- 创建id为3170的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3170 }) then
	  return -1
	end
	
	-- 创建id为3171的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3171 }) then
	  return -1
	end
	
	-- 创建id为3172的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3172 }) then
	  return -1
	end
	
	-- 创建id为3173的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3173 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_203(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003293, suite = 1 }) then
			return -1
		end
	
	-- 将configid为 3153 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3153, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_204(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3345 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_205(context, evt)
	if 3167 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
