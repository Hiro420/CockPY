--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 261, monster_id = 21030101, pos = { x = 2208.3, y = 214.4, z = -42.4 }, rot = { x = 0.0, y = 223.5, z = 0.0 }, level = 22, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 262, monster_id = 21010901, pos = { x = 2213.4, y = 215.1, z = -45.1 }, rot = { x = 0.0, y = 200.1, z = 0.0 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 263, monster_id = 21010201, pos = { x = 2215.7, y = 215.5, z = -42.5 }, rot = { x = 0.0, y = 242.2, z = 0.0 }, level = 22, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 633, gadget_id = 70211012, pos = { x = 2212.4, y = 215.3, z = -38.7 }, rot = { x = 0.0, y = 177.8, z = 0.0 }, level = 23, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 634, gadget_id = 70310004, pos = { x = 2212.3, y = 215.2, z = -40.9 }, rot = { x = 0.0, y = 332.5, z = 0.0 }, level = 23, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_283", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_283", action = "action_EVENT_ANY_MONSTER_DIE_283" }
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
		monsters = { 261, 262, 263 },
		gadgets = { 633, 634 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_283" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_283(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_283(context, evt)
	-- 将configid为 633 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 633, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
