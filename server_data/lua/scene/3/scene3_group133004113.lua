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
	{ config_id = 416, gadget_id = 70380002, pos = { x = 2329.0, y = 290.3, z = -248.0 }, rot = { x = 0.0, y = 77.9, z = 0.0 }, level = 15, route_id = 3004519 },
	{ config_id = 417, gadget_id = 70380002, pos = { x = 2332.0, y = 290.3, z = -248.0 }, rot = { x = 0.0, y = 304.7, z = 0.0 }, level = 15, route_id = 3004519 },
	{ config_id = 418, gadget_id = 70380002, pos = { x = 2335.0, y = 290.3, z = -248.0 }, rot = { x = 0.0, y = 15.3, z = 0.0 }, level = 15, route_id = 3004519 },
	{ config_id = 419, gadget_id = 70380002, pos = { x = 2338.0, y = 290.3, z = -248.0 }, rot = { x = 0.0, y = 290.1, z = 0.0 }, level = 15, route_id = 3004519 },
	{ config_id = 420, gadget_id = 70211111, pos = { x = 2334.7, y = 284.4, z = -248.8 }, rot = { x = 2.5, y = 158.2, z = 3.2 }, level = 15, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_140", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_140", action = "action_EVENT_ANY_GADGET_DIE_140", tlog_tag = "奔狼岭_113_射击自然靶标_结算" }
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
		gadgets = { 416, 417, 418, 419 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_140" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_140(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004113}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_140(context, evt)
	-- 创建id为420的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 420 }) then
	  return -1
	end
	
	return 0
end
