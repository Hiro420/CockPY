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
	{ config_id = 431001, gadget_id = 70220032, pos = { x = 1746.3, y = 252.0, z = 772.9 }, rot = { x = 349.1, y = 229.2, z = 0.3 }, level = 18 },
	{ config_id = 431002, gadget_id = 70211001, pos = { x = 1874.2, y = 205.7, z = 880.8 }, rot = { x = 0.6, y = 219.3, z = 359.3 }, level = 1, drop_tag = "战斗低级璃月", showcutscene = true, isOneoff = true, persistent = true, type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 431006, gadget_id = 70690006, pos = { x = 1752.5, y = 253.6, z = 778.2 }, rot = { x = 359.9, y = 320.7, z = 257.7 }, level = 1 },
	{ config_id = 431007, gadget_id = 70690006, pos = { x = 1775.2, y = 247.2, z = 796.7 }, rot = { x = 359.9, y = 320.7, z = 257.7 }, level = 1 },
	{ config_id = 431008, gadget_id = 70690006, pos = { x = 1797.9, y = 240.8, z = 815.3 }, rot = { x = 359.9, y = 320.7, z = 257.7 }, level = 1 },
	{ config_id = 431009, gadget_id = 70690006, pos = { x = 1820.6, y = 234.4, z = 833.8 }, rot = { x = 359.9, y = 320.7, z = 257.7 }, level = 1 },
	{ config_id = 431010, gadget_id = 70690001, pos = { x = 1752.5, y = 253.6, z = 778.2 }, rot = { x = 12.3, y = 50.7, z = 359.9 }, level = 18 },
	{ config_id = 431011, gadget_id = 70690001, pos = { x = 1775.2, y = 247.2, z = 796.7 }, rot = { x = 12.3, y = 50.7, z = 359.9 }, level = 18 },
	{ config_id = 431012, gadget_id = 70690001, pos = { x = 1797.9, y = 240.8, z = 815.3 }, rot = { x = 12.3, y = 50.7, z = 359.9 }, level = 18 },
	{ config_id = 431013, gadget_id = 70690001, pos = { x = 1820.6, y = 234.4, z = 833.8 }, rot = { x = 12.3, y = 50.7, z = 359.9 }, level = 18 },
	{ config_id = 431014, gadget_id = 70690001, pos = { x = 1843.3, y = 228.0, z = 852.4 }, rot = { x = 12.3, y = 50.7, z = 359.9 }, level = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_431003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_431003", action = "action_EVENT_GADGET_STATE_CHANGE_431003", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_431004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_431004", action = "action_EVENT_GADGET_STATE_CHANGE_431004", trigger_count = 0 },
	{ name = "GADGET_CREATE_431005", event = EventType.EVENT_GADGET_CREATE, source = "111", condition = "condition_EVENT_GADGET_CREATE_431005", action = "action_EVENT_GADGET_CREATE_431005", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 431001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_431003", "GADGET_STATE_CHANGE_431004", "GADGET_CREATE_431005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 431006, 431007, 431008, 431009, 431010, 431011, 431012, 431013, 431014 },
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
function condition_EVENT_GADGET_STATE_CHANGE_431003(context, evt)
	if 431001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_431003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102431, 2)
	
	-- 创建id为431002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 431002 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_431004(context, evt)
	if 431001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_431004(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102431, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_431005(context, evt)
	if 431001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_431005(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102431, 2)
	
	return 0
end
