--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 43001, monster_id = 21010201, pos = { x = -87.3, y = 201.4, z = -905.1 }, rot = { x = 0.0, y = 295.2, z = 0.0 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 43004, monster_id = 21010101, pos = { x = -77.1, y = 200.3, z = -914.1 }, rot = { x = 0.0, y = 97.0, z = 0.0 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 43005, monster_id = 21010201, pos = { x = -92.8, y = 202.1, z = -904.0 }, rot = { x = 0.0, y = 27.5, z = 0.0 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 43006, monster_id = 21010401, pos = { x = -79.9, y = 202.5, z = -895.7 }, rot = { x = 0.0, y = 24.4, z = 0.0 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 43007, monster_id = 21020301, pos = { x = -68.4, y = 200.6, z = -909.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "丘丘暴徒" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 43002, gadget_id = 70211012, pos = { x = -82.6, y = 201.3, z = -902.6 }, rot = { x = 2.2, y = 196.1, z = 5.3 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 43008, gadget_id = 70310001, pos = { x = -131.1, y = 201.7, z = -889.8 }, rot = { x = 358.2, y = 260.2, z = 0.3 }, level = 32, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_43003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_43003", action = "action_EVENT_ANY_MONSTER_DIE_43003" }
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
		monsters = { 43001, 43004, 43005, 43006, 43007 },
		gadgets = { 43002, 43008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_43003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_43003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_43003(context, evt)
	-- 将configid为 43002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 43002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
