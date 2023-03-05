--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 253001, monster_id = 21010401, pos = { x = 1041.5, y = 199.8, z = 328.5 }, rot = { x = 0.0, y = 198.3, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", pose_id = 9013 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 947, gadget_id = 70300088, pos = { x = 1039.6, y = 200.8, z = 322.0 }, rot = { x = 0.0, y = 284.0, z = 0.0 }, level = 16 },
	{ config_id = 948, gadget_id = 70211001, pos = { x = 1040.3, y = 200.3, z = 323.9 }, rot = { x = 352.8, y = 359.2, z = 12.4 }, level = 16, drop_tag = "战斗低级璃月", showcutscene = true, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_496", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_496", action = "action_EVENT_ANY_GADGET_DIE_496" }
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
		monsters = { 253001 },
		gadgets = { 947 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_496" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_496(context, evt)
	if 947 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_496(context, evt)
	-- 创建id为948的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 948 }) then
	  return -1
	end
	
	return 0
end
