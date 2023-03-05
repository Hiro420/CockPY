--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 44001, monster_id = 21020201, pos = { x = -176.9, y = 201.4, z = -1006.0 }, rot = { x = 0.0, y = 165.5, z = 0.0 }, level = 33, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 44004, monster_id = 21020201, pos = { x = -193.6, y = 200.7, z = -1010.1 }, rot = { x = 0.0, y = 126.6, z = 0.0 }, level = 33, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 0 },
	{ config_id = 44005, monster_id = 22010101, pos = { x = -192.5, y = 200.4, z = -1005.4 }, rot = { x = 0.0, y = 158.6, z = 0.0 }, level = 33, drop_tag = "深渊法师", pose_id = 0 },
	{ config_id = 44006, monster_id = 21011201, pos = { x = -180.1, y = 200.0, z = -994.3 }, rot = { x = 0.0, y = 93.9, z = 0.0 }, level = 32, drop_tag = "丘丘人", pose_id = 9012 },
	{ config_id = 44007, monster_id = 21011001, pos = { x = -192.9, y = 200.6, z = -994.0 }, rot = { x = 0.0, y = 53.6, z = 0.0 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 44002, gadget_id = 70211022, pos = { x = -189.1, y = 204.8, z = -1015.4 }, rot = { x = 0.0, y = 335.4, z = 0.0 }, level = 32, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 44008, gadget_id = 70310009, pos = { x = -213.6, y = 201.5, z = -1011.7 }, rot = { x = 7.1, y = 359.6, z = 352.9 }, level = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_44003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_44003", action = "action_EVENT_ANY_MONSTER_DIE_44003" }
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
		monsters = { 44001, 44004, 44005, 44006, 44007 },
		gadgets = { 44002, 44008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_44003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_44003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_44003(context, evt)
	-- 将configid为 44002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
