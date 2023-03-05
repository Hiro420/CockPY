--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 532, monster_id = 22010301, pos = { x = 2529.1, y = 205.0, z = -775.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "深渊法师" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1160, gadget_id = 70900039, pos = { x = 2534.4, y = 205.3, z = -775.5 }, rot = { x = 1.1, y = 280.3, z = 353.9 }, level = 2, state = GadgetState.GearStop, persistent = true },
	{ config_id = 1161, gadget_id = 70690006, pos = { x = 2534.4, y = 205.2, z = -775.8 }, rot = { x = 0.0, y = 168.7, z = 0.0 }, level = 2 },
	{ config_id = 1221, gadget_id = 70690001, pos = { x = 2534.4, y = 219.4, z = -775.8 }, rot = { x = 270.0, y = 0.0, z = 0.0 }, level = 2 },
	{ config_id = 1222, gadget_id = 70690001, pos = { x = 2534.4, y = 235.1, z = -775.8 }, rot = { x = 270.0, y = 0.0, z = 0.0 }, level = 2 },
	{ config_id = 1223, gadget_id = 70690001, pos = { x = 2534.4, y = 250.1, z = -775.8 }, rot = { x = 270.0, y = 0.0, z = 0.0 }, level = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_234", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_234", action = "action_EVENT_ANY_MONSTER_DIE_234" },
	{ name = "GADGET_STATE_CHANGE_235", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_235", action = "action_EVENT_GADGET_STATE_CHANGE_235" },
	{ name = "GADGET_STATE_CHANGE_202001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_202001", action = "action_EVENT_GADGET_STATE_CHANGE_202001" }
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
	end_suite = 3,
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
		monsters = { 532 },
		gadgets = { 1160 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_234", "GADGET_STATE_CHANGE_235", "GADGET_STATE_CHANGE_202001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 1161, 1221, 1222, 1223 },
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
function condition_EVENT_ANY_MONSTER_DIE_234(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_234(context, evt)
	-- 解锁目标1160
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 1160, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_235(context, evt)
	if 1160 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_235(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004202, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_202001(context, evt)
	if 1160 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_202001(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133004202, 2)
	
	return 0
end
