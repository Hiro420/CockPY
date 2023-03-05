--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 586, monster_id = 28020102, pos = { x = 2249.3, y = 270.6, z = -1745.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2839, gadget_id = 70220021, pos = { x = 2231.8, y = 272.0, z = -1768.0 }, rot = { x = 34.9, y = 306.1, z = 284.9 }, level = 15, isOneoff = true },
	{ config_id = 2840, gadget_id = 70211101, pos = { x = 2231.4, y = 273.0, z = -1766.1 }, rot = { x = 8.3, y = 326.0, z = 356.5 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_149", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_149", action = "action_EVENT_ANY_GADGET_DIE_149" }
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
		monsters = { 586 },
		gadgets = { 2839 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_149" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_149(context, evt)
	if 2839 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_149(context, evt)
	-- 创建id为2840的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2840 }) then
	  return -1
	end
	
	return 0
end
