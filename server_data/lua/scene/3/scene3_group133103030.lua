--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 29, monster_id = 21010201, pos = { x = 763.8, y = 324.8, z = 1830.0 }, rot = { x = 0.0, y = 48.2, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 30001, monster_id = 21011001, pos = { x = 766.5, y = 324.2, z = 1828.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 30002, monster_id = 21030401, pos = { x = 763.6, y = 325.4, z = 1832.4 }, rot = { x = 0.0, y = 155.7, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 145, gadget_id = 70211012, pos = { x = 766.4, y = 324.7, z = 1832.1 }, rot = { x = 359.1, y = 0.0, z = 359.1 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_45", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_45", action = "action_EVENT_ANY_MONSTER_DIE_45" }
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
		monsters = { 29, 30001, 30002 },
		gadgets = { 145 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_45" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_45(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_45(context, evt)
	-- 将configid为 145 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
