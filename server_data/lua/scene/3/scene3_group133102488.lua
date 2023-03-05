--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 488001, monster_id = 21010201, pos = { x = 1809.2, y = 303.6, z = 394.3 }, rot = { x = 359.3, y = 228.3, z = 1.0 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 488004, monster_id = 21010401, pos = { x = 1812.4, y = 306.8, z = 388.6 }, rot = { x = 0.0, y = 214.1, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 488005, monster_id = 21010401, pos = { x = 1803.6, y = 304.2, z = 394.6 }, rot = { x = 0.0, y = 142.4, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 488006, monster_id = 21010401, pos = { x = 1803.4, y = 303.9, z = 389.0 }, rot = { x = 0.0, y = 70.8, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 488002, gadget_id = 70211012, pos = { x = 1811.0, y = 304.0, z = 398.8 }, rot = { x = 0.0, y = 226.5, z = 0.0 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 488007, gadget_id = 70310006, pos = { x = 1806.7, y = 303.5, z = 391.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_488003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_488003", action = "action_EVENT_ANY_MONSTER_DIE_488003" }
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
		monsters = { 488001, 488004, 488005, 488006 },
		gadgets = { 488002, 488007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_488003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_488003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_488003(context, evt)
	-- 将configid为 488002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 488002, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
