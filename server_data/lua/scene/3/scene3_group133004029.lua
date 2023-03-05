--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 282, monster_id = 20011501, pos = { x = 2197.0, y = 246.8, z = -418.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 301, gadget_id = 70220008, pos = { x = 2199.1, y = 245.4, z = -417.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, isOneoff = true },
	{ config_id = 302, gadget_id = 70220008, pos = { x = 2194.9, y = 245.5, z = -417.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, isOneoff = true },
	{ config_id = 303, gadget_id = 70220008, pos = { x = 2197.0, y = 245.2, z = -420.2 }, rot = { x = 0.0, y = 84.8, z = 0.0 }, level = 15, isOneoff = true },
	{ config_id = 304, gadget_id = 70220019, pos = { x = 2197.0, y = 239.2, z = -418.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15 },
	{ config_id = 438, gadget_id = 70211111, pos = { x = 2197.0, y = 245.7, z = -418.0 }, rot = { x = 0.0, y = 0.0, z = 359.1 }, level = 15, drop_tag = "解谜中级蒙德", isOneoff = true },
	{ config_id = 1270, gadget_id = 70220008, pos = { x = 2197.1, y = 245.5, z = -415.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_137", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_137", action = "action_EVENT_ANY_GADGET_DIE_137" },
	{ name = "ANY_MONSTER_DIE_145", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_145", action = "action_EVENT_ANY_MONSTER_DIE_145" }
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
		gadgets = { 301, 302, 303, 304, 1270 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_137", "ANY_MONSTER_DIE_145" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_137(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004029}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_137(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 282, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_145(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_145(context, evt)
	-- 创建id为438的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 438 }) then
	  return -1
	end
	
	return 0
end
