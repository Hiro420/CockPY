--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 177002, monster_id = 20030101, pos = { x = 108.0, y = 203.0, z = 385.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "雷萤", disableWander = true },
	{ config_id = 177003, monster_id = 20030101, pos = { x = 106.5, y = 203.0, z = 386.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "雷萤", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 638, gadget_id = 70211111, pos = { x = 107.2, y = 201.1, z = 386.7 }, rot = { x = 1.9, y = 352.8, z = 353.5 }, level = 19, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 177001, gadget_id = 70220024, pos = { x = 107.6, y = 200.0, z = 391.6 }, rot = { x = 0.0, y = 187.8, z = 0.0 }, level = 19, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_299", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_299", action = "action_EVENT_ANY_GADGET_DIE_299" }
}

-- 变量
variables = {
	{ name = "count", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { 638, 177001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_299" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ANY_GADGET_DIE_299(context, evt)
	if 177001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_299(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 177002, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 177003, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
