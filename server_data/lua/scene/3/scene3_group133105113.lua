--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16, monster_id = 21010901, pos = { x = 490.8, y = 199.9, z = -193.0 }, rot = { x = 0.0, y = 61.4, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", pose_id = 32 },
	{ config_id = 17, monster_id = 21010901, pos = { x = 487.3, y = 199.9, z = -188.1 }, rot = { x = 0.0, y = 28.4, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", pose_id = 32 },
	{ config_id = 19, monster_id = 22010301, pos = { x = 490.4, y = 199.9, z = -189.4 }, rot = { x = 0.0, y = 52.6, z = 0.0 }, level = 19, drop_tag = "深渊法师", disableWander = true, pose_id = 9013 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 271, gadget_id = 70211012, pos = { x = 485.4, y = 202.0, z = -193.3 }, rot = { x = 0.0, y = 62.0, z = 0.0 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_160", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_160", action = "action_EVENT_ANY_MONSTER_DIE_160" }
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
		monsters = { 16, 17, 19 },
		gadgets = { 271 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_160" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_160(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_160(context, evt)
	-- 将configid为 271 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 271, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
