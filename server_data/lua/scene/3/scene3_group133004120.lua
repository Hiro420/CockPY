--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 334, monster_id = 21010901, pos = { x = 2211.1, y = 210.8, z = -514.3 }, rot = { x = 0.0, y = 88.4, z = 0.0 }, level = 16, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 335, monster_id = 21030101, pos = { x = 2203.2, y = 211.2, z = -513.8 }, rot = { x = 0.0, y = 28.1, z = 0.0 }, level = 16, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 336, monster_id = 21010201, pos = { x = 2202.8, y = 210.8, z = -511.4 }, rot = { x = 0.0, y = 324.4, z = 0.0 }, level = 16, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 337, monster_id = 21010201, pos = { x = 2215.8, y = 204.6, z = -496.7 }, rot = { x = 0.0, y = 188.0, z = 0.0 }, level = 16, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 490, gadget_id = 70211022, pos = { x = 2204.2, y = 211.3, z = -516.3 }, rot = { x = 0.0, y = 1.5, z = 358.2 }, level = 15, drop_tag = "战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_162", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_162", action = "action_EVENT_ANY_MONSTER_DIE_162", tlog_tag = "奔狼岭_120_怪物营地_结算" }
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
		monsters = { 334, 335, 336, 337 },
		gadgets = { 490 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_162" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_162(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_162(context, evt)
	-- 解锁目标490
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 490, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
