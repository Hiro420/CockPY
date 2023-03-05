--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58001, monster_id = 20020101, pos = { x = 1214.3, y = 339.8, z = 1617.1 }, rot = { x = 0.0, y = 56.2, z = 0.0 }, level = 28, drop_tag = "元素之核", disableWander = true },
	{ config_id = 58002, monster_id = 20020101, pos = { x = 1212.6, y = 339.1, z = 1630.6 }, rot = { x = 0.0, y = 56.2, z = 0.0 }, level = 28, drop_tag = "元素之核", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 58003, gadget_id = 70211022, pos = { x = 1209.9, y = 339.7, z = 1620.8 }, rot = { x = 357.7, y = 323.4, z = 358.4 }, level = 24, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 58004, gadget_id = 70211002, pos = { x = 1212.0, y = 339.7, z = 1622.4 }, rot = { x = 1.1, y = 323.3, z = 357.0 }, level = 24, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 58005, gadget_id = 70211002, pos = { x = 1207.7, y = 339.8, z = 1619.2 }, rot = { x = 355.2, y = 323.4, z = 358.0 }, level = 24, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_58006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58006", action = "action_EVENT_ANY_MONSTER_DIE_58006" }
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
		monsters = { 58001, 58002 },
		gadgets = { 58003, 58004, 58005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_58006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_58006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58006(context, evt)
	-- 将configid为 58003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58003, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 58005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58005, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 58004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58004, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
