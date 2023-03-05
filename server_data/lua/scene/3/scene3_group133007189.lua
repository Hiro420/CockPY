--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 279, monster_id = 21010401, pos = { x = 2474.0, y = 218.1, z = -59.0 }, rot = { x = 0.0, y = 51.3, z = 0.0 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 281, monster_id = 21010701, pos = { x = 2477.1, y = 217.9, z = -59.3 }, rot = { x = 0.0, y = 319.0, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 668, gadget_id = 70211012, pos = { x = 2475.8, y = 218.0, z = -61.0 }, rot = { x = 0.0, y = 339.3, z = 0.0 }, level = 23, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 669, gadget_id = 70310006, pos = { x = 2475.5, y = 218.0, z = -58.0 }, rot = { x = 0.0, y = 182.5, z = 0.0 }, level = 23, state = GadgetState.GearStart },
	{ config_id = 670, gadget_id = 70220013, pos = { x = 2471.2, y = 218.2, z = -57.3 }, rot = { x = 0.0, y = 314.1, z = 0.0 }, level = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_292", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_292", action = "action_EVENT_ANY_MONSTER_DIE_292" }
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
	rand_suite = true
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
		monsters = { 279, 281 },
		gadgets = { 668, 669, 670 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_292" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_292(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_292(context, evt)
	-- 将configid为 668 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 668, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
