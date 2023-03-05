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
	{ config_id = 9, gadget_id = 70340014, pos = { x = 0.0, y = 0.0, z = -46.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 10, gadget_id = 70350008, pos = { x = -1.6, y = 2.7, z = -43.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 11, gadget_id = 70350008, pos = { x = -1.6, y = 3.0, z = -42.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 12, gadget_id = 70350008, pos = { x = 1.4, y = 3.3, z = -42.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 13, gadget_id = 70350008, pos = { x = 2.6, y = 2.7, z = -43.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 14, gadget_id = 70350008, pos = { x = 1.0, y = 3.2, z = -42.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 15, gadget_id = 70350008, pos = { x = -0.7, y = 2.8, z = -42.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "DUNGEON_SETTLE_26", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_26", action = "action_EVENT_DUNGEON_SETTLE_26" },
	{ name = "DUNGEON_REWARD_GET_27", event = EventType.EVENT_DUNGEON_REWARD_GET, source = "", condition = "", action = "action_EVENT_DUNGEON_REWARD_GET_27" }
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
		monsters = { },
		gadgets = { 9, 10, 11, 12, 13, 14, 15 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_26" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_26(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_26(context, evt)
	-- 改变指定group组240301009中， configid为9的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240301009, 9, GadgetState.StatueActive) then
			return -1
		end 
	
	-- 改变指定group组240301008中， configid为8的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240301008, 8, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_DUNGEON_REWARD_GET_27(context, evt)
	-- 将configid为 9 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9, GadgetState.GearStop) then
			return -1
		end 
	
	return 0
end
