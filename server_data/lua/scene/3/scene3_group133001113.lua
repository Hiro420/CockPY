--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 538, monster_id = 21010301, pos = { x = 1404.1, y = 236.3, z = -1462.7 }, rot = { x = 0.0, y = 104.2, z = 0.0 }, level = 16, drop_tag = "丘丘人", pose_id = 9003 },
	{ config_id = 539, monster_id = 21010201, pos = { x = 1428.2, y = 238.8, z = -1445.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "丘丘人", pose_id = 9003 },
	{ config_id = 540, monster_id = 21010201, pos = { x = 1425.3, y = 237.6, z = -1460.2 }, rot = { x = 0.0, y = 302.2, z = 0.0 }, level = 16, drop_tag = "丘丘人", pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1785, gadget_id = 70310001, pos = { x = 1417.3, y = 235.7, z = -1472.0 }, rot = { x = 0.0, y = 263.1, z = 0.0 }, level = 15 },
	{ config_id = 1786, gadget_id = 70310001, pos = { x = 1426.2, y = 238.5, z = -1453.8 }, rot = { x = 0.0, y = 275.0, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 1787, gadget_id = 70310001, pos = { x = 1408.1, y = 235.9, z = -1467.3 }, rot = { x = 0.0, y = 169.8, z = 0.0 }, level = 15, state = GadgetState.GearStart },
	{ config_id = 1789, gadget_id = 70211001, pos = { x = 1416.2, y = 237.6, z = -1455.0 }, rot = { x = 359.8, y = 32.3, z = 350.4 }, level = 15, drop_tag = "战斗低级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_115", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115", action = "action_EVENT_GADGET_STATE_CHANGE_115" }
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
		monsters = { 538, 539, 540 },
		gadgets = { 1785, 1786, 1787 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_115" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115(context, evt)
	if 1785 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115(context, evt)
	-- 创生gadget 1789
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1789 }) then
		return -1
	end
	
	return 0
end
