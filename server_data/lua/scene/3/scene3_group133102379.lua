--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 379001, monster_id = 22010201, pos = { x = 1485.8, y = 200.0, z = 161.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "深渊法师", disableWander = true },
	{ config_id = 379002, monster_id = 20010801, pos = { x = 1488.5, y = 200.0, z = 165.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 379003, monster_id = 20010801, pos = { x = 1485.0, y = 200.0, z = 162.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "史莱姆", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 379004, gadget_id = 70211012, pos = { x = 1489.4, y = 200.0, z = 159.0 }, rot = { x = 0.0, y = 322.1, z = 0.0 }, level = 1, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_379005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_379005", action = "action_EVENT_ANY_MONSTER_DIE_379005" }
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
		monsters = { 379001, 379002, 379003 },
		gadgets = { 379004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_379005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_379005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_379005(context, evt)
	-- 将configid为 379004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 379004, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
