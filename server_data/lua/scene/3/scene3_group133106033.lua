--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 75, monster_id = 21010101, pos = { x = -730.0, y = 166.7, z = 874.4 }, rot = { x = 0.0, y = 43.4, z = 0.0 }, level = 28, drop_tag = "丘丘人", pose_id = 9016 },
	{ config_id = 76, monster_id = 21010101, pos = { x = -734.1, y = 166.2, z = 874.1 }, rot = { x = 0.0, y = 94.9, z = 0.0 }, level = 28, drop_tag = "丘丘人", pose_id = 9016 },
	{ config_id = 77, monster_id = 21010101, pos = { x = -728.4, y = 167.6, z = 872.5 }, rot = { x = 0.0, y = 16.5, z = 0.0 }, level = 28, drop_tag = "丘丘人", pose_id = 9016 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 85, gadget_id = 70220014, pos = { x = -728.4, y = 167.3, z = 873.3 }, rot = { x = 16.3, y = 327.7, z = 354.9 }, level = 32 },
	{ config_id = 86, gadget_id = 70220014, pos = { x = -732.8, y = 166.2, z = 874.8 }, rot = { x = 15.0, y = 331.1, z = 1.7 }, level = 32 },
	{ config_id = 87, gadget_id = 70220026, pos = { x = -732.6, y = 167.0, z = 872.3 }, rot = { x = 27.5, y = 331.7, z = 3.8 }, level = 32 },
	{ config_id = 88, gadget_id = 70220014, pos = { x = -732.1, y = 166.1, z = 875.6 }, rot = { x = 15.0, y = 328.6, z = 1.1 }, level = 32 },
	{ config_id = 89, gadget_id = 70220013, pos = { x = -727.9, y = 166.2, z = 877.7 }, rot = { x = 13.4, y = 309.0, z = 350.6 }, level = 32 },
	{ config_id = 166, gadget_id = 70211001, pos = { x = -728.9, y = 166.6, z = 875.4 }, rot = { x = 355.6, y = 218.9, z = 348.6 }, level = 32, drop_tag = "战斗低级璃月", isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_40", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_40", action = "action_EVENT_ANY_GADGET_DIE_40" }
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
		monsters = { 75, 76, 77 },
		gadgets = { 85, 86, 88, 89, 166 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_40" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_40(context, evt)
	if 89 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_40(context, evt)
	-- 创建id为166的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 166 }) then
	  return -1
	end
	
	return 0
end
