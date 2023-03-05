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
	{ config_id = 450, gadget_id = 70500000, pos = { x = 2794.7, y = 208.9, z = 159.6 }, rot = { x = 0.0, y = 221.8, z = 0.0 }, level = 23, point_type = 2003 },
	{ config_id = 451, gadget_id = 70500000, pos = { x = 2795.1, y = 208.8, z = 155.1 }, rot = { x = 0.0, y = 305.5, z = 0.0 }, level = 23, point_type = 2003 },
	{ config_id = 452, gadget_id = 70500000, pos = { x = 2799.0, y = 209.2, z = 160.5 }, rot = { x = 0.0, y = 305.5, z = 0.0 }, level = 23, point_type = 2003 },
	{ config_id = 453, gadget_id = 70500000, pos = { x = 2799.5, y = 208.8, z = 156.0 }, rot = { x = 0.0, y = 305.5, z = 0.0 }, level = 23, point_type = 2003 },
	{ config_id = 454, gadget_id = 70211101, pos = { x = 2797.1, y = 208.9, z = 157.7 }, rot = { x = 0.0, y = 210.5, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GATHER_73", event = EventType.EVENT_GATHER, source = "450", condition = "condition_EVENT_GATHER_73", action = "action_EVENT_GATHER_73", tlog_tag = "风龙_132_小灯草宝箱_触发" },
	{ name = "GATHER_286", event = EventType.EVENT_GATHER, source = "451", condition = "condition_EVENT_GATHER_286", action = "action_EVENT_GATHER_286", tlog_tag = "风龙_132_小灯草宝箱_触发2" },
	{ name = "GATHER_287", event = EventType.EVENT_GATHER, source = "452", condition = "condition_EVENT_GATHER_287", action = "action_EVENT_GATHER_287", tlog_tag = "风龙_132_小灯草宝箱_触发3" },
	{ name = "GATHER_288", event = EventType.EVENT_GATHER, source = "453", condition = "condition_EVENT_GATHER_288", action = "action_EVENT_GATHER_288", tlog_tag = "风龙_132_小灯草宝箱_触发4" }
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
		gadgets = { 450, 451, 452, 453 },
		regions = { },
		triggers = { "GATHER_73", "GATHER_286", "GATHER_287", "GATHER_288" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_73(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133007132}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_73(context, evt)
	-- 创建id为454的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 454 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_286(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133007132}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_286(context, evt)
	-- 创建id为454的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 454 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_287(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133007132}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_287(context, evt)
	-- 创建id为454的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 454 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_288(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133007132}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_288(context, evt)
	-- 创建id为454的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 454 }) then
	  return -1
	end
	
	return 0
end
