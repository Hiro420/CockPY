--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 488, monster_id = 22010201, pos = { x = 2239.3, y = 244.1, z = -1581.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 13, drop_tag = "深渊法师", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2541, gadget_id = 70211012, pos = { x = 2239.5, y = 243.7, z = -1579.2 }, rot = { x = 0.0, y = 185.7, z = 0.0 }, level = 15, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_142", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_142", action = "action_EVENT_ANY_MONSTER_DIE_142", tlog_tag = "神殿_营地_深渊冰_完成" }
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
		monsters = { 488 },
		gadgets = { 2541 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_142" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_142(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_142(context, evt)
	-- 解锁目标2541
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 2541, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
