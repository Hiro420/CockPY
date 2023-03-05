--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 509001, monster_id = 22010101, pos = { x = 1546.5, y = 222.1, z = 28.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "深渊法师", disableWander = true, pose_id = 0 },
	{ config_id = 509004, monster_id = 21011001, pos = { x = 1555.9, y = 225.7, z = 20.3 }, rot = { x = 0.0, y = 274.9, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 509005, monster_id = 21011001, pos = { x = 1543.9, y = 229.0, z = 34.8 }, rot = { x = 0.0, y = 242.4, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 509006, monster_id = 21011201, pos = { x = 1540.1, y = 222.3, z = 26.5 }, rot = { x = 0.0, y = 270.3, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 509007, monster_id = 21011201, pos = { x = 1544.6, y = 222.1, z = 23.1 }, rot = { x = 0.0, y = 220.9, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 509002, gadget_id = 70211022, pos = { x = 1540.1, y = 222.4, z = 32.6 }, rot = { x = 0.0, y = 235.5, z = 0.0 }, level = 32, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_509003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_509003", action = "action_EVENT_ANY_MONSTER_DIE_509003" }
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
		monsters = { 509001, 509004, 509005, 509006, 509007 },
		gadgets = { 509002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_509003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_509003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_509003(context, evt)
	-- 将configid为 509002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 509002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
