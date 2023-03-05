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
	{ config_id = 2932, gadget_id = 70500000, pos = { x = 1561.6, y = 294.8, z = -1215.2 }, rot = { x = 0.0, y = 339.2, z = 0.0 }, level = 10, point_type = 2003 },
	{ config_id = 2933, gadget_id = 70500000, pos = { x = 1557.2, y = 296.2, z = -1213.1 }, rot = { x = 0.0, y = 339.2, z = 0.0 }, level = 10, point_type = 2003 },
	{ config_id = 2934, gadget_id = 70500000, pos = { x = 1558.4, y = 296.4, z = -1209.2 }, rot = { x = 0.0, y = 339.2, z = 0.0 }, level = 10, point_type = 2003 },
	{ config_id = 2935, gadget_id = 70500000, pos = { x = 1561.7, y = 295.3, z = -1210.8 }, rot = { x = 0.0, y = 339.2, z = 0.0 }, level = 10, point_type = 2003 },
	{ config_id = 2936, gadget_id = 70211101, pos = { x = 1559.2, y = 295.7, z = -1212.4 }, rot = { x = 11.6, y = 113.1, z = 0.0 }, level = 10, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GATHER_354", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_354", action = "action_EVENT_GATHER_354", trigger_count = 0 }
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
		gadgets = { 2932, 2933, 2934, 2935 },
		regions = { },
		triggers = { "GATHER_354" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_354(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133001259}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_354(context, evt)
	-- 创建id为2936的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2936 }) then
	  return -1
	end
	
	return 0
end
