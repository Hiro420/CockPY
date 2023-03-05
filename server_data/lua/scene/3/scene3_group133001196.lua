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
	{ config_id = 2528, gadget_id = 70500000, pos = { x = 1760.2, y = 254.8, z = -1201.3 }, rot = { x = 0.0, y = 339.2, z = 0.0 }, level = 10, point_type = 2003 },
	{ config_id = 2529, gadget_id = 70500000, pos = { x = 1755.7, y = 255.1, z = -1199.7 }, rot = { x = 0.0, y = 339.2, z = 0.0 }, level = 10, point_type = 2003 },
	{ config_id = 2530, gadget_id = 70500000, pos = { x = 1757.3, y = 254.2, z = -1194.6 }, rot = { x = 0.0, y = 339.2, z = 0.0 }, level = 10, point_type = 2003 },
	{ config_id = 2531, gadget_id = 70500000, pos = { x = 1762.4, y = 253.6, z = -1196.5 }, rot = { x = 0.0, y = 339.2, z = 0.0 }, level = 10, point_type = 2003 },
	{ config_id = 2532, gadget_id = 70211101, pos = { x = 1759.0, y = 254.4, z = -1198.2 }, rot = { x = 0.0, y = 58.4, z = 0.0 }, level = 10, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GATHER_226", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_226", action = "action_EVENT_GATHER_226", trigger_count = 0, tlog_tag = "小平原_小灯草1_交接山区_结束" }
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
		gadgets = { 2528, 2529, 2530, 2531 },
		regions = { },
		triggers = { "GATHER_226" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_226(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133001196}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_226(context, evt)
	-- 创建id为2532的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2532 }) then
	  return -1
	end
	
	return 0
end
