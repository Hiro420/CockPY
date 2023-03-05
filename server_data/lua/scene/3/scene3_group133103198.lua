--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 198004, monster_id = 24010101, pos = { x = 892.1, y = 284.0, z = 1527.0 }, rot = { x = 0.0, y = 139.2, z = 0.0 }, level = 30, drop_tag = "遗迹守卫", pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 198001, gadget_id = 70900039, pos = { x = 885.6, y = 285.7, z = 1535.0 }, rot = { x = 0.0, y = 59.4, z = 0.0 }, level = 24, state = GadgetState.GearStop, persistent = true },
	{ config_id = 198002, gadget_id = 70610201, pos = { x = 885.4, y = 285.7, z = 1535.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_198003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_198003", action = "action_EVENT_GADGET_STATE_CHANGE_198003" },
	{ name = "ANY_MONSTER_DIE_198005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_198005", action = "action_EVENT_ANY_MONSTER_DIE_198005" }
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
		monsters = { 198004 },
		gadgets = { 198001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_198003", "ANY_MONSTER_DIE_198005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_198003(context, evt)
	if 198001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_198003(context, evt)
	-- 创建id为198002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 198002 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_198005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_198005(context, evt)
	-- 将configid为 198001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 198001, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
