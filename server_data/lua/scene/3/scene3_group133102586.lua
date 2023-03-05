--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 586001, monster_id = 21010601, pos = { x = 1498.5, y = 245.7, z = -200.4 }, rot = { x = 0.0, y = 164.3, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 586004, monster_id = 21010101, pos = { x = 1495.7, y = 245.3, z = -199.2 }, rot = { x = 0.0, y = 225.8, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 586005, monster_id = 21010201, pos = { x = 1510.6, y = 249.7, z = -186.9 }, rot = { x = 0.0, y = 17.2, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 586006, monster_id = 21010401, pos = { x = 1503.9, y = 249.3, z = -185.3 }, rot = { x = 0.0, y = 54.4, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 586002, gadget_id = 70211012, pos = { x = 1502.0, y = 248.1, z = -190.5 }, rot = { x = 348.5, y = 359.3, z = 10.3 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 586007, gadget_id = 70220005, pos = { x = 1497.0, y = 245.4, z = -199.9 }, rot = { x = 352.4, y = 359.3, z = 9.9 }, level = 16 },
	{ config_id = 586008, gadget_id = 70220005, pos = { x = 1506.8, y = 248.9, z = -189.5 }, rot = { x = 350.3, y = 359.5, z = 6.0 }, level = 16 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_586003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_586003", action = "action_EVENT_ANY_MONSTER_DIE_586003" }
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
		monsters = { 586001, 586004, 586005, 586006 },
		gadgets = { 586002, 586007, 586008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_586003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_586003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_586003(context, evt)
	-- 将configid为 586002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 586002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
