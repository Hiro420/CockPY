--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 377, monster_id = 21010301, pos = { x = 2139.3, y = 209.5, z = -61.8 }, rot = { x = 0.0, y = 159.7, z = 0.0 }, level = 22, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 378, monster_id = 21010201, pos = { x = 2141.5, y = 209.5, z = -62.9 }, rot = { x = 0.0, y = 255.0, z = 0.0 }, level = 22, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 929, gadget_id = 70211012, pos = { x = 2144.3, y = 209.5, z = -64.1 }, rot = { x = 0.0, y = 205.8, z = 0.0 }, level = 23, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 930, gadget_id = 70310004, pos = { x = 2139.9, y = 209.5, z = -63.6 }, rot = { x = 0.0, y = 332.5, z = 0.0 }, level = 23, state = GadgetState.GearStart },
	{ config_id = 962, gadget_id = 70220013, pos = { x = 2141.9, y = 209.5, z = -65.5 }, rot = { x = 0.0, y = 330.8, z = 0.0 }, level = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_285", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_285", action = "action_EVENT_ANY_MONSTER_DIE_285" }
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
		monsters = { 377, 378 },
		gadgets = { 929, 930, 962 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_285" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_285(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_285(context, evt)
	-- 将configid为 929 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 929, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
