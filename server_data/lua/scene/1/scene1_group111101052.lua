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
	{ config_id = 52001, gadget_id = 70310013, pos = { x = 2681.8, y = 266.6, z = -1399.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 52002, gadget_id = 70900039, pos = { x = 2676.4, y = 263.8, z = -1402.0 }, rot = { x = 355.1, y = 0.2, z = 354.2 }, level = 1 },
	{ config_id = 52003, gadget_id = 70210063, pos = { x = 2674.2, y = 264.4, z = -1395.3 }, rot = { x = 0.0, y = 183.4, z = 0.0 }, level = 1, drop_tag = "解谜低级蒙德", state = GadgetState.ChestFrozen, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 52006, gadget_id = 70210107, pos = { x = 2682.8, y = 265.0, z = -1412.1 }, rot = { x = 19.1, y = 307.8, z = 355.7 }, level = 1, drop_tag = "一次性搜刮点峭壁蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 52007, gadget_id = 70210107, pos = { x = 2671.2, y = 282.7, z = -1418.7 }, rot = { x = 3.9, y = 2.9, z = 13.2 }, level = 1, drop_tag = "一次性搜刮点峭壁蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 52008, gadget_id = 70210107, pos = { x = 2680.5, y = 271.0, z = -1412.9 }, rot = { x = 5.7, y = 278.1, z = 346.6 }, level = 1, drop_tag = "一次性搜刮点峭壁蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 52009, gadget_id = 70210107, pos = { x = 2681.9, y = 272.4, z = -1409.8 }, rot = { x = 19.1, y = 307.8, z = 355.7 }, level = 1, drop_tag = "一次性搜刮点峭壁蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 52010, gadget_id = 70210107, pos = { x = 2690.4, y = 278.5, z = -1403.0 }, rot = { x = 5.3, y = 325.9, z = 1.8 }, level = 1, drop_tag = "一次性搜刮点峭壁蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_52004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_52004", action = "action_EVENT_GADGET_STATE_CHANGE_52004", trigger_count = 0 },
	{ name = "ANY_GADGET_DIE_52005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_52005", action = "action_EVENT_ANY_GADGET_DIE_52005", trigger_count = 0 }
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
		gadgets = { 52002, 52003, 52006, 52007, 52008, 52009, 52010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_52004", "ANY_GADGET_DIE_52005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_52004(context, evt)
	if 52002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_52004(context, evt)
	-- 创建id为52001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 52001 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_52005(context, evt)
	if 52001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_52005(context, evt)
	-- 将configid为 52002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
