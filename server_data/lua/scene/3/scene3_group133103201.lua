--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 201004, monster_id = 24010201, pos = { x = 821.3, y = 231.1, z = 1781.3 }, rot = { x = 0.0, y = 183.8, z = 0.0 }, level = 30, drop_tag = "遗迹守卫", pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 201001, gadget_id = 70900039, pos = { x = 815.7, y = 231.8, z = 1775.9 }, rot = { x = 0.0, y = 59.4, z = 0.0 }, level = 24, state = GadgetState.GearStop, persistent = true },
	{ config_id = 201002, gadget_id = 70610201, pos = { x = 815.5, y = 231.5, z = 1776.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_201003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_201003", action = "action_EVENT_GADGET_STATE_CHANGE_201003" },
	{ name = "ANY_MONSTER_DIE_201005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_201005", action = "action_EVENT_ANY_MONSTER_DIE_201005" }
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
		monsters = { 201004 },
		gadgets = { 201001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_201003", "ANY_MONSTER_DIE_201005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_201003(context, evt)
	if 201001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_201003(context, evt)
	-- 创建id为201002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 201002 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_201005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_201005(context, evt)
	-- 将configid为 201001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 201001, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
