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
	{ config_id = 4037, gadget_id = 70380002, pos = { x = 2441.2, y = 211.7, z = -1155.6 }, rot = { x = 0.0, y = 28.3, z = 0.0 }, level = 2, route_id = 3003231, persistent = true },
	{ config_id = 4038, gadget_id = 70211101, pos = { x = 2444.9, y = 207.3, z = -1150.7 }, rot = { x = 351.0, y = 33.3, z = 0.2 }, level = 2, drop_tag = "解谜低级蒙德", showcutscene = true, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_500", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_500", action = "action_EVENT_ANY_GADGET_DIE_500" },
	{ name = "ANY_GADGET_DIE_503", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_503", action = "action_EVENT_ANY_GADGET_DIE_503", tlog_tag = "新手区_风史莱姆宝箱get" }
}

-- 变量
variables = {
	{ name = "v2669", value = 0, no_refresh = false },
	{ name = "v2670", value = 0, no_refresh = false }
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
		gadgets = { 4037 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_500", "ANY_GADGET_DIE_503" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_500(context, evt)
	if 2669 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_500(context, evt)
	-- 创生gadget 4020
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4020 }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_503(context, evt)
	if 4037 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_503(context, evt)
	-- 创生gadget 4038
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4038 }) then
		return -1
	end
	
	return 0
end
