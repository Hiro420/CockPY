--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 42, monster_id = 22010301, pos = { x = -256.9, y = 269.6, z = -986.7 }, rot = { x = 0.0, y = 3.7, z = 0.0 }, level = 32, drop_tag = "深渊法师", disableWander = true, affix = { 1001 }, isElite = true },
	{ config_id = 43, monster_id = 22010201, pos = { x = -255.1, y = 269.7, z = -986.6 }, rot = { x = 0.0, y = 357.2, z = 0.0 }, level = 32, drop_tag = "深渊法师", disableWander = true, affix = { 1001 }, isElite = true },
	{ config_id = 44, monster_id = 22010101, pos = { x = -256.3, y = 269.8, z = -991.5 }, rot = { x = 0.0, y = 3.8, z = 0.0 }, level = 32, drop_tag = "深渊法师", disableWander = true, affix = { 1001 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 18001, gadget_id = 70211022, pos = { x = -245.6, y = 279.3, z = -990.1 }, rot = { x = 0.0, y = 126.8, z = 0.0 }, level = 32, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_18002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_18002", action = "action_EVENT_ANY_MONSTER_DIE_18002" }
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
		monsters = { 42, 43, 44 },
		gadgets = { 18001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_18002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_18002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_18002(context, evt)
	-- 改变指定group组133108018中， configid为18001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133108018, 18001, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
