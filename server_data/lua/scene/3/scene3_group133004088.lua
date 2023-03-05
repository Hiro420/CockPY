-- Trigger变量
local defs = {
	gadget_id_1 = 342
}


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
	{ config_id = 341, gadget_id = 70211101, pos = { x = 2258.1, y = 270.4, z = -262.0 }, rot = { x = 0.0, y = 357.2, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 342, gadget_id = 70900039, pos = { x = 2257.9, y = 270.4, z = -259.6 }, rot = { x = 0.0, y = 178.7, z = 0.0 }, level = 15, state = GadgetState.GearStop, persistent = true },
	{ config_id = 88004, gadget_id = 70220013, pos = { x = 2265.8, y = 270.2, z = -258.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_118", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118", action = "action_EVENT_GADGET_STATE_CHANGE_118", tlog_tag = "奔狼岭_88_谜题破解_结算" },
	{ name = "GROUP_REFRESH_88001", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_88001" },
	{ name = "VARIABLE_CHANGE_88002", event = EventType.EVENT_VARIABLE_CHANGE, source = "unlock_1", condition = "condition_EVENT_VARIABLE_CHANGE_88002", action = "action_EVENT_VARIABLE_CHANGE_88002" }
}

-- 变量
variables = {
	{ name = "unlock_1", value = 0, no_refresh = true }
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
		gadgets = { 342 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_118", "GROUP_REFRESH_88001", "VARIABLE_CHANGE_88002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_118(context, evt)
	if 342 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118(context, evt)
	-- 解除当前场景中pointid 为%force_id%的地城入口的groupLimit状态
		ScriptLib.UnfreezeGroupLimit(context, 50)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GROUP_REFRESH_88001(context, evt)
	-- 变量"unlock_1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "unlock_1", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_88002(context, evt)
	-- 判断变量"unlock_1"为4
	if ScriptLib.GetGroupVariableValue(context, "unlock_1") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_88002(context, evt)
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = defs.gadget_id_1, state = GadgetState.Default }) then
			return -1
		end
		--local pos = {x=2257, y=270, z=-259}
		
	    --if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, --duration = 5, is_force = true, is_broadcast = false }) then
			--return -1
		--end
	return 0
end
