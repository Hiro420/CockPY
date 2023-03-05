--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 173, monster_id = 21010901, pos = { x = 1228.5, y = 200.0, z = -211.6 }, rot = { x = 0.0, y = 38.5, z = 0.0 }, level = 16, drop_tag = "远程丘丘人" },
	{ config_id = 174, monster_id = 21010901, pos = { x = 1236.4, y = 200.7, z = -217.6 }, rot = { x = 4.6, y = 48.1, z = 9.0 }, level = 16, drop_tag = "远程丘丘人" },
	{ config_id = 175, monster_id = 21010301, pos = { x = 1252.0, y = 200.0, z = -210.1 }, rot = { x = 0.0, y = 332.3, z = 0.0 }, level = 16, drop_tag = "丘丘人" },
	{ config_id = 181, monster_id = 21010301, pos = { x = 1241.7, y = 200.1, z = -211.6 }, rot = { x = 354.9, y = 251.7, z = 358.9 }, level = 16, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 369, gadget_id = 70211012, pos = { x = 1235.6, y = 200.7, z = -211.6 }, rot = { x = 359.7, y = 0.0, z = 357.8 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_204", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_204", action = "action_EVENT_ANY_MONSTER_DIE_204" }
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
		monsters = { 173, 174, 175, 181 },
		gadgets = { 369 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_204" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_204(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_204(context, evt)
	-- 将configid为 369 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 369, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
