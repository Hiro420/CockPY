--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 876, monster_id = 20011501, pos = { x = 1840.4, y = 227.5, z = -723.9 }, rot = { x = 0.0, y = 86.6, z = 0.0 }, level = 6, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2159, gadget_id = 70220021, pos = { x = 1843.8, y = 227.5, z = -724.1 }, rot = { x = 0.0, y = 47.3, z = 0.0 }, level = 10, isOneoff = true },
	{ config_id = 2160, gadget_id = 70211101, pos = { x = 1839.7, y = 227.5, z = -723.3 }, rot = { x = 0.0, y = 93.7, z = 0.0 }, level = 10, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 2163, gadget_id = 70310001, pos = { x = 1847.6, y = 227.2, z = -727.6 }, rot = { x = 0.0, y = 51.2, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 2164, gadget_id = 70310001, pos = { x = 1847.8, y = 226.9, z = -720.1 }, rot = { x = 0.0, y = 51.2, z = 0.0 }, level = 10, state = GadgetState.GearStart },
	{ config_id = 2167, gadget_id = 70220021, pos = { x = 1844.0, y = 227.8, z = -724.1 }, rot = { x = 0.0, y = 47.3, z = 0.0 }, level = 10, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_297", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_297", action = "action_EVENT_ANY_GADGET_DIE_297" }
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
	suite = 3,
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
		gadgets = { 2159 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_297" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 2160, 2163, 2164, 2167 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_297(context, evt)
	if 2159 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_297(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 876, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
