--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 195004, monster_id = 25010201, pos = { x = 850.2, y = 278.8, z = -221.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_tag = "盗宝团" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 195001, gadget_id = 70300088, pos = { x = 842.1, y = 281.9, z = -230.5 }, rot = { x = 0.0, y = 307.2, z = 0.0 }, level = 25 },
	{ config_id = 195003, gadget_id = 70211101, pos = { x = 840.9, y = 281.2, z = -232.5 }, rot = { x = 1.5, y = 38.5, z = 2.1 }, level = 25, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_195002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_195002", action = "action_EVENT_ANY_GADGET_DIE_195002" }
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
	end_suite = 2,
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
		monsters = { 195004 },
		gadgets = { 195001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_195002" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_195002(context, evt)
	if 195001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_195002(context, evt)
	-- 创建id为195003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 195003 }) then
	  return -1
	end
	
	return 0
end
