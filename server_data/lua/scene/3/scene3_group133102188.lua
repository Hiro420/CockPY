--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 344, monster_id = 23030101, pos = { x = 1647.7, y = 200.0, z = 280.6 }, rot = { x = 0.0, y = 297.9, z = 0.0 }, level = 20, drop_tag = "召唤师" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 680, gadget_id = 70310001, pos = { x = 1651.5, y = 200.6, z = 289.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 681, gadget_id = 70310001, pos = { x = 1636.4, y = 199.9, z = 290.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, state = GadgetState.GearStart },
	{ config_id = 682, gadget_id = 70310001, pos = { x = 1658.3, y = 200.4, z = 278.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, state = GadgetState.GearStart },
	{ config_id = 683, gadget_id = 70211022, pos = { x = 1668.9, y = 200.5, z = 273.5 }, rot = { x = 0.0, y = 306.3, z = 0.0 }, level = 18, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 684, gadget_id = 70310006, pos = { x = 1668.5, y = 200.5, z = 278.4 }, rot = { x = 0.0, y = 308.7, z = 0.0 }, level = 18, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_488", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_488", action = "action_EVENT_ANY_MONSTER_DIE_488", trigger_count = 0 }
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
		monsters = { 344 },
		gadgets = { 680, 681, 682, 683, 684 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_488" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_488(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_488(context, evt)
	-- 将configid为 683 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 683, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
