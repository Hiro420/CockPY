--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 950, monster_id = 20011001, pos = { x = 2818.7, y = 261.4, z = -1674.9 }, rot = { x = 0.0, y = 217.2, z = 0.0 }, level = 30, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 951, monster_id = 21010901, pos = { x = 2815.0, y = 263.2, z = -1680.3 }, rot = { x = 0.0, y = 4.2, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 952, monster_id = 21030101, pos = { x = 2817.0, y = 261.4, z = -1675.0 }, rot = { x = 0.0, y = 165.3, z = 0.0 }, level = 30, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 953, monster_id = 21010101, pos = { x = 2817.0, y = 261.0, z = -1672.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 30, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3141, gadget_id = 70211002, pos = { x = 2818.0, y = 261.7, z = -1677.1 }, rot = { x = 0.0, y = 301.2, z = 0.0 }, level = 30, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 3142, gadget_id = 70211101, pos = { x = 2840.6, y = 256.9, z = -1665.2 }, rot = { x = 356.1, y = 198.4, z = 0.5 }, level = 30, drop_tag = "解谜低级蒙德", isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_201", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_201", action = "action_EVENT_ANY_MONSTER_DIE_201", tlog_tag = "望风山地_288_怪物营地_结算" }
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
		monsters = { 950, 951, 952, 953 },
		gadgets = { 3141, 3142 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_201" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_201(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_201(context, evt)
	-- 解锁目标3141
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3141, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
