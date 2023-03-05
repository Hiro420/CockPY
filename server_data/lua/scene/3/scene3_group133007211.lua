--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 371, monster_id = 21010401, pos = { x = 2041.7, y = 209.1, z = -63.3 }, rot = { x = 0.0, y = 102.9, z = 0.0 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 372, monster_id = 21010401, pos = { x = 2046.2, y = 208.4, z = -66.5 }, rot = { x = 0.0, y = 200.1, z = 0.0 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 373, monster_id = 21010201, pos = { x = 2048.5, y = 208.5, z = -63.9 }, rot = { x = 0.0, y = 242.2, z = 0.0 }, level = 22, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 927, gadget_id = 70211012, pos = { x = 2048.4, y = 208.3, z = -66.9 }, rot = { x = 356.5, y = 309.2, z = 6.2 }, level = 15, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 928, gadget_id = 70310009, pos = { x = 2045.8, y = 208.5, z = -63.6 }, rot = { x = 0.0, y = 332.5, z = 0.0 }, level = 15, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_284", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_284", action = "action_EVENT_ANY_MONSTER_DIE_284" }
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
		monsters = { 371, 372, 373 },
		gadgets = { 927, 928 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_284" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_284(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_284(context, evt)
	-- 将configid为 927 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 927, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
