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
	{ config_id = 139, gadget_id = 70220032, pos = { x = 391.8, y = 3.2, z = -153.9 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 140, gadget_id = 70211032, pos = { x = 410.2, y = 3.9, z = -154.2 }, rot = { x = 0.0, y = 268.3, z = 0.0 }, level = 1, drop_tag = "战斗超级蒙德", state = GadgetState.ChestLocked, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_68", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68", action = "action_EVENT_GADGET_STATE_CHANGE_68", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_69", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_69", action = "action_EVENT_GADGET_STATE_CHANGE_69", trigger_count = 0 }
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
	rand_suite = false,
	npcs = { }
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
		gadgets = { 139, 140 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_68", "GADGET_STATE_CHANGE_69" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_68(context, evt)
	if 139 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_68(context, evt)
	-- 解锁目标140
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 140, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_69(context, evt)
	if 139 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_69(context, evt)
	-- 将configid为 140 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 140, GadgetState.ChestLocked) then
			return -1
		end 
	
	return 0
end
