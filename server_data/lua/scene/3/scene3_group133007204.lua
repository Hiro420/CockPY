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
	{ config_id = 884, gadget_id = 70500000, pos = { x = 2563.5, y = 200.9, z = 369.7 }, rot = { x = 0.0, y = 221.8, z = 0.0 }, level = 23, point_type = 2003 },
	{ config_id = 885, gadget_id = 70500000, pos = { x = 2563.9, y = 201.0, z = 365.2 }, rot = { x = 0.0, y = 305.5, z = 0.0 }, level = 23, point_type = 2003 },
	{ config_id = 886, gadget_id = 70500000, pos = { x = 2567.8, y = 201.3, z = 370.5 }, rot = { x = 0.0, y = 305.5, z = 0.0 }, level = 23, point_type = 2003 },
	{ config_id = 887, gadget_id = 70500000, pos = { x = 2568.4, y = 201.5, z = 366.0 }, rot = { x = 0.0, y = 305.5, z = 0.0 }, level = 23, point_type = 2003 },
	{ config_id = 888, gadget_id = 70211101, pos = { x = 2565.9, y = 201.3, z = 367.8 }, rot = { x = 0.0, y = 210.5, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GATHER_236", event = EventType.EVENT_GATHER, source = "887", condition = "condition_EVENT_GATHER_236", action = "action_EVENT_GATHER_236", tlog_tag = "风龙_204_小灯草宝箱_触发" },
	{ name = "GATHER_289", event = EventType.EVENT_GATHER, source = "886", condition = "condition_EVENT_GATHER_289", action = "action_EVENT_GATHER_289", tlog_tag = "风龙_204_小灯草宝箱_触发2" },
	{ name = "GATHER_290", event = EventType.EVENT_GATHER, source = "885", condition = "condition_EVENT_GATHER_290", action = "action_EVENT_GATHER_290", tlog_tag = "风龙_204_小灯草宝箱_触发3" },
	{ name = "GATHER_291", event = EventType.EVENT_GATHER, source = "884", condition = "condition_EVENT_GATHER_291", action = "action_EVENT_GATHER_291", tlog_tag = "风龙_204_小灯草宝箱_触发4" }
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
		gadgets = { 884, 885, 886, 887 },
		regions = { },
		triggers = { "GATHER_236", "GATHER_289", "GATHER_290", "GATHER_291" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_236(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133007204}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_236(context, evt)
	-- 创建id为888的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 888 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_289(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133007204}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_289(context, evt)
	-- 创建id为888的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 888 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_290(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133007204}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_290(context, evt)
	-- 创建id为888的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 888 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_291(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133007204}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_291(context, evt)
	-- 创建id为888的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 888 }) then
	  return -1
	end
	
	return 0
end
