--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 632, monster_id = 23030101, pos = { x = 2676.0, y = 285.2, z = -399.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "召唤师" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1199, gadget_id = 70211012, pos = { x = 2675.7, y = 285.3, z = -403.6 }, rot = { x = 15.1, y = 271.4, z = 357.7 }, level = 20, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_233", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_233", action = "action_EVENT_ANY_MONSTER_DIE_233", tlog_tag = "奔狼岭_217_怪物营地_结算" }
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
		monsters = { 632 },
		gadgets = { 1199 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_233" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_233(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_233(context, evt)
	-- 解锁目标1199
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 1199, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
