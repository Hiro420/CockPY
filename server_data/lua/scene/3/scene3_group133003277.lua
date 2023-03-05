--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 927, monster_id = 22010201, pos = { x = 2727.5, y = 286.9, z = -1573.2 }, rot = { x = 0.0, y = 120.9, z = 0.0 }, level = 19, drop_tag = "深渊法师" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3027, gadget_id = 70211012, pos = { x = 2728.6, y = 286.5, z = -1574.0 }, rot = { x = 0.0, y = 123.7, z = 0.0 }, level = 30, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 4085, gadget_id = 70310001, pos = { x = 2724.9, y = 286.1, z = -1574.1 }, rot = { x = 0.0, y = 45.3, z = 0.0 }, level = 30, state = GadgetState.GearStart },
	{ config_id = 4086, gadget_id = 70310001, pos = { x = 2727.2, y = 286.3, z = -1570.5 }, rot = { x = 0.0, y = 13.0, z = 0.0 }, level = 30, state = GadgetState.GearStart },
	{ config_id = 4087, gadget_id = 70220019, pos = { x = 2726.2, y = 280.4, z = -1572.4 }, rot = { x = 0.0, y = 32.4, z = 0.0 }, level = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_190", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_190", action = "action_EVENT_ANY_MONSTER_DIE_190", tlog_tag = "望风山地_277_封印宝箱_结算" }
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
		monsters = { 927 },
		gadgets = { 3027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_190" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_190(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_190(context, evt)
	-- 解锁目标3027
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3027, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
