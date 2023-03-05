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
	{ config_id = 3995, gadget_id = 70380002, pos = { x = 2910.7, y = 274.9, z = -1563.6 }, rot = { x = 0.0, y = 138.3, z = 0.0 }, level = 30, route_id = 3003228 },
	{ config_id = 3996, gadget_id = 70380002, pos = { x = 2913.7, y = 274.9, z = -1563.6 }, rot = { x = 0.0, y = 168.7, z = 0.0 }, level = 30, route_id = 3003228 },
	{ config_id = 3997, gadget_id = 70380002, pos = { x = 2916.7, y = 274.9, z = -1563.6 }, rot = { x = 0.0, y = 327.9, z = 0.0 }, level = 30, route_id = 3003228 },
	{ config_id = 3998, gadget_id = 70380002, pos = { x = 2919.7, y = 274.9, z = -1563.6 }, rot = { x = 0.0, y = 158.1, z = 0.0 }, level = 30, route_id = 3003228 },
	{ config_id = 3999, gadget_id = 70211111, pos = { x = 2915.7, y = 262.0, z = -1561.1 }, rot = { x = 4.4, y = 214.9, z = 358.3 }, level = 30, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_495", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_495", action = "action_EVENT_ANY_GADGET_DIE_495", tlog_tag = "望风山地_340_射击自然靶标_结算" }
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
		gadgets = { 3995, 3996, 3997, 3998 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_495" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_495(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133003409}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_495(context, evt)
	-- 创建id为3999的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3999 }) then
	  return -1
	end
	
	return 0
end
