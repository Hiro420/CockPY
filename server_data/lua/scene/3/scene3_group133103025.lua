--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 26, monster_id = 21011001, pos = { x = 972.6, y = 307.1, z = 1239.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 25001, monster_id = 21030401, pos = { x = 969.6, y = 306.9, z = 1240.9 }, rot = { x = 0.0, y = 27.7, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 25002, monster_id = 21011001, pos = { x = 970.4, y = 306.8, z = 1242.9 }, rot = { x = 0.0, y = 84.0, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 136, gadget_id = 70211012, pos = { x = 972.4, y = 306.8, z = 1243.1 }, rot = { x = 0.1, y = 0.0, z = 0.9 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_42", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_42", action = "action_EVENT_ANY_MONSTER_DIE_42" }
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
		monsters = { 26, 25001, 25002 },
		gadgets = { 136 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_42" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_42(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_42(context, evt)
	-- 将configid为 136 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 136, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
