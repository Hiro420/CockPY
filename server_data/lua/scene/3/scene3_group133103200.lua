--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 200004, monster_id = 24010201, pos = { x = 992.3, y = 254.3, z = 1636.5 }, rot = { x = 0.0, y = 5.7, z = 0.0 }, level = 30, drop_tag = "遗迹守卫", pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 200001, gadget_id = 70900039, pos = { x = 982.7, y = 268.6, z = 1619.0 }, rot = { x = 0.0, y = 59.4, z = 0.0 }, level = 24, state = GadgetState.GearStop, persistent = true },
	{ config_id = 200002, gadget_id = 70610201, pos = { x = 982.5, y = 268.5, z = 1619.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_200003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_200003", action = "action_EVENT_GADGET_STATE_CHANGE_200003" },
	{ name = "ANY_MONSTER_DIE_200005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_200005", action = "action_EVENT_ANY_MONSTER_DIE_200005" }
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
		monsters = { 200004 },
		gadgets = { 200001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_200003", "ANY_MONSTER_DIE_200005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_200003(context, evt)
	if 200001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_200003(context, evt)
	-- 创建id为200002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 200002 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_200005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_200005(context, evt)
	-- 将configid为 200001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 200001, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
