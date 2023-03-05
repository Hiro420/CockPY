--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 25, monster_id = 21010401, pos = { x = 1015.3, y = 308.3, z = 1608.3 }, rot = { x = 0.0, y = 267.2, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 24001, monster_id = 21010401, pos = { x = 1010.7, y = 307.6, z = 1603.7 }, rot = { x = 0.0, y = 267.2, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 24002, monster_id = 21030401, pos = { x = 1009.7, y = 307.7, z = 1609.2 }, rot = { x = 0.0, y = 120.3, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 135, gadget_id = 70211012, pos = { x = 1012.1, y = 307.6, z = 1607.9 }, rot = { x = 7.0, y = 267.2, z = 360.0 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 24003, gadget_id = 70310001, pos = { x = 1013.5, y = 307.4, z = 1610.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_41", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_41", action = "action_EVENT_ANY_MONSTER_DIE_41" }
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
		monsters = { 25, 24001, 24002 },
		gadgets = { 135, 24003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_41" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_41(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_41(context, evt)
	-- 将configid为 135 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 135, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
