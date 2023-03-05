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
	{ config_id = 1334, gadget_id = 70500000, pos = { x = 2475.7, y = 211.5, z = -417.2 }, rot = { x = 0.0, y = 151.3, z = 0.0 }, level = 20, point_type = 2003 },
	{ config_id = 1335, gadget_id = 70500000, pos = { x = 2479.5, y = 211.6, z = -417.3 }, rot = { x = 0.0, y = 287.0, z = 0.0 }, level = 20, point_type = 2003 },
	{ config_id = 1336, gadget_id = 70500000, pos = { x = 2477.5, y = 211.5, z = -419.0 }, rot = { x = 0.0, y = 87.6, z = 0.0 }, level = 20, point_type = 2003 },
	{ config_id = 1337, gadget_id = 70500000, pos = { x = 2477.6, y = 211.5, z = -415.3 }, rot = { x = 0.0, y = 257.1, z = 0.0 }, level = 20, point_type = 2003 },
	{ config_id = 1338, gadget_id = 70211101, pos = { x = 2477.6, y = 211.5, z = -417.3 }, rot = { x = 0.0, y = 181.1, z = 0.0 }, level = 20, drop_tag = "解谜低级蒙德", isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GATHER_250", event = EventType.EVENT_GATHER, source = "1334", condition = "condition_EVENT_GATHER_250", action = "action_EVENT_GATHER_250" },
	{ name = "GATHER_251", event = EventType.EVENT_GATHER, source = "1337", condition = "condition_EVENT_GATHER_251", action = "action_EVENT_GATHER_251" },
	{ name = "GATHER_252", event = EventType.EVENT_GATHER, source = "1335", condition = "condition_EVENT_GATHER_252", action = "action_EVENT_GATHER_252" },
	{ name = "GATHER_253", event = EventType.EVENT_GATHER, source = "1336", condition = "condition_EVENT_GATHER_253", action = "action_EVENT_GATHER_253" }
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
		gadgets = { 1334, 1335, 1336, 1337 },
		regions = { },
		triggers = { "GATHER_250", "GATHER_251", "GATHER_252", "GATHER_253" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_250(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004230}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_250(context, evt)
	-- 创建id为1338的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1338 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_251(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004230}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_251(context, evt)
	-- 创建id为1338的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1338 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_252(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004230}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_252(context, evt)
	-- 创建id为1338的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1338 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_253(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004230}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_253(context, evt)
	-- 创建id为1338的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1338 }) then
	  return -1
	end
	
	return 0
end
