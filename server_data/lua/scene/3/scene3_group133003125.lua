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
	{ config_id = 2559, gadget_id = 70211112, pos = { x = 2341.3, y = 252.4, z = -1332.9 }, rot = { x = 0.0, y = 5.9, z = 0.0 }, level = 5, drop_tag = "解谜中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 2563, gadget_id = 70310001, pos = { x = 2334.5, y = 253.3, z = -1334.8 }, rot = { x = 0.0, y = 116.9, z = 0.0 }, level = 5 },
	{ config_id = 2631, gadget_id = 70310001, pos = { x = 2334.9, y = 252.5, z = -1329.9 }, rot = { x = 0.0, y = 189.5, z = 0.0 }, level = 5, state = GadgetState.GearStart },
	{ config_id = 2632, gadget_id = 70310001, pos = { x = 2340.7, y = 252.9, z = -1339.8 }, rot = { x = 0.0, y = 8.3, z = 0.0 }, level = 5, state = GadgetState.GearStart },
	{ config_id = 2633, gadget_id = 70310001, pos = { x = 2345.9, y = 253.0, z = -1339.1 }, rot = { x = 0.0, y = 92.5, z = 0.0 }, level = 5, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_128", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_128", action = "action_EVENT_GADGET_STATE_CHANGE_128", tlog_tag = "神殿_谜题_火把_完成" }
}

-- 变量
variables = {
	{ name = "unlocked", value = 0, no_refresh = false }
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
		gadgets = { 2559, 2563, 2631, 2632, 2633 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_128" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 2559, 2563, 2631, 2632, 2633 },
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
function condition_EVENT_GADGET_STATE_CHANGE_128(context, evt)
	if 2563 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_128(context, evt)
	-- 解锁目标2559
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 2559, state = GadgetState.Default }) then
		return -1
	end
	
	-- 将本组内变量名为 "unlocked" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "unlocked", 1) then
	  return -1
	end
	
	return 0
end
