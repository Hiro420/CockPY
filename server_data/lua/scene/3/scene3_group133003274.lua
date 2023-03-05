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
	{ config_id = 3020, gadget_id = 70900007, pos = { x = 2814.8, y = 305.8, z = -1585.8 }, rot = { x = 0.0, y = 178.9, z = 0.0 }, level = 30, persistent = true },
	{ config_id = 3021, gadget_id = 70220020, pos = { x = 2809.6, y = 308.1, z = -1595.7 }, rot = { x = 0.0, y = 118.7, z = 0.0 }, level = 30 },
	{ config_id = 3022, gadget_id = 70300089, pos = { x = 2809.3, y = 308.1, z = -1589.4 }, rot = { x = 0.0, y = 128.7, z = 0.0 }, level = 30 },
	{ config_id = 3023, gadget_id = 70300089, pos = { x = 2812.1, y = 314.0, z = -1591.2 }, rot = { x = 0.0, y = 275.5, z = 0.0 }, level = 30 },
	{ config_id = 3024, gadget_id = 70300089, pos = { x = 2810.8, y = 314.0, z = -1590.7 }, rot = { x = 0.0, y = 87.5, z = 0.0 }, level = 30 },
	{ config_id = 3025, gadget_id = 70211111, pos = { x = 2808.7, y = 318.8, z = -1593.8 }, rot = { x = 0.0, y = 169.9, z = 0.0 }, level = 30, drop_tag = "解谜中级蒙德", isOneoff = true },
	{ config_id = 3410, gadget_id = 70220013, pos = { x = 2806.9, y = 308.1, z = -1595.7 }, rot = { x = 0.0, y = 309.5, z = 0.0 }, level = 30 },
	{ config_id = 3411, gadget_id = 70300086, pos = { x = 2806.5, y = 314.0, z = -1589.6 }, rot = { x = 0.0, y = 257.3, z = 0.0 }, level = 30 },
	{ config_id = 3412, gadget_id = 70900201, pos = { x = 2808.9, y = 318.8, z = -1593.7 }, rot = { x = 0.0, y = 145.5, z = 0.0 }, level = 30 },
	{ config_id = 274001, gadget_id = 70300089, pos = { x = 2806.9, y = 314.0, z = -1587.9 }, rot = { x = 0.0, y = 87.5, z = 0.0 }, level = 30 },
	{ config_id = 274002, gadget_id = 70300088, pos = { x = 2811.2, y = 313.7, z = -1591.6 }, rot = { x = 0.0, y = 71.5, z = 0.0 }, level = 30 },
	{ config_id = 274003, gadget_id = 70300087, pos = { x = 2809.4, y = 308.1, z = -1587.9 }, rot = { x = 357.6, y = 263.4, z = 359.3 }, level = 30 },
	{ config_id = 274004, gadget_id = 70220013, pos = { x = 2805.0, y = 314.0, z = -1591.8 }, rot = { x = 0.0, y = 1.5, z = 0.0 }, level = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_186", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_186", action = "action_EVENT_GADGET_STATE_CHANGE_186", tlog_tag = "望风山地_274_元素机关挑战_开始" },
	{ name = "CHALLENGE_FAIL_187", event = EventType.EVENT_CHALLENGE_FAIL, source = "274", condition = "", action = "action_EVENT_CHALLENGE_FAIL_187" },
	{ name = "CHALLENGE_SUCCESS_188", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "274", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_188", tlog_tag = "望风山地_274_元素机关挑战_结算" },
	{ name = "GADGET_STATE_CHANGE_189", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_189", action = "", tag = "20" }
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
		-- description = ,
		monsters = { },
		gadgets = { 3020, 3410, 3411, 274004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_186", "CHALLENGE_FAIL_187", "CHALLENGE_SUCCESS_188", "GADGET_STATE_CHANGE_189" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
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
function condition_EVENT_GADGET_STATE_CHANGE_186(context, evt)
	if 3020 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_186(context, evt)
	-- 创建编号为274（该挑战的识别id),挑战内容为139的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 274, 139, 60, 7, 20, 1) then
		return -1
	end
	
	-- 创建id为3021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3021 }) then
	  return -1
	end
	
	-- 创建id为3022的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3022 }) then
	  return -1
	end
	
	-- 创建id为3023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3023 }) then
	  return -1
	end
	
	-- 创建id为3024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3024 }) then
	  return -1
	end
	
	-- 创建id为3025的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3025 }) then
	  return -1
	end
	
	-- 创建id为3412的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3412 }) then
	  return -1
	end
	
	-- 创建id为274001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 274001 }) then
	  return -1
	end
	
	-- 创建id为274002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 274002 }) then
	  return -1
	end
	
	-- 创建id为274003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 274003 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_187(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003274, suite = 1 }) then
			return -1
		end
	
	-- 将configid为 3020 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3020, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_188(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3412 }) then
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_189(context, evt)
	if 3025 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
