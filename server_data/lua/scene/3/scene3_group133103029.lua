--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 28, monster_id = 21010201, pos = { x = 700.9, y = 319.5, z = 1762.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 29001, monster_id = 22010101, pos = { x = 701.0, y = 319.5, z = 1767.7 }, rot = { x = 0.0, y = 219.0, z = 0.0 }, level = 24, drop_tag = "深渊法师", disableWander = true },
	{ config_id = 29002, monster_id = 21010201, pos = { x = 697.8, y = 319.5, z = 1763.4 }, rot = { x = 0.0, y = 101.7, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 144, gadget_id = 70211012, pos = { x = 700.8, y = 319.2, z = 1765.3 }, rot = { x = 359.5, y = 360.0, z = 6.4 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_44", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_44", action = "action_EVENT_ANY_MONSTER_DIE_44" }
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
		monsters = { 28, 29001, 29002 },
		gadgets = { 144 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_44" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_44(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_44(context, evt)
	-- 将configid为 144 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
