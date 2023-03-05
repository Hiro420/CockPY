--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 305, monster_id = 21010901, pos = { x = 2345.8, y = 292.3, z = -237.5 }, rot = { x = 0.0, y = 140.7, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 306, monster_id = 21010901, pos = { x = 2351.4, y = 294.2, z = -228.1 }, rot = { x = 0.0, y = 174.5, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 307, monster_id = 21030101, pos = { x = 2351.2, y = 289.2, z = -233.3 }, rot = { x = 0.0, y = 177.9, z = 0.0 }, level = 18, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 308, monster_id = 21010101, pos = { x = 2356.1, y = 289.2, z = -238.6 }, rot = { x = 0.0, y = 345.2, z = 0.0 }, level = 18, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 383, gadget_id = 70211012, pos = { x = 2346.7, y = 289.9, z = -233.3 }, rot = { x = 2.1, y = 308.5, z = 354.8 }, level = 15, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 425, gadget_id = 70310001, pos = { x = 2349.6, y = 289.1, z = -236.0 }, rot = { x = 0.0, y = 349.0, z = 0.0 }, level = 15 },
	{ config_id = 426, gadget_id = 70220013, pos = { x = 2350.3, y = 289.4, z = -230.9 }, rot = { x = 0.0, y = 37.3, z = 0.0 }, level = 15 },
	{ config_id = 427, gadget_id = 70220013, pos = { x = 2352.9, y = 289.4, z = -230.2 }, rot = { x = 0.0, y = 152.1, z = 0.0 }, level = 15 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_141", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_141", action = "action_EVENT_ANY_MONSTER_DIE_141", tlog_tag = "奔狼岭_101_怪物营地_结算" }
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
		monsters = { 305, 306, 307, 308 },
		gadgets = { 383, 425, 426, 427 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_141" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_141(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_141(context, evt)
	-- 解锁目标383
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 383, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
